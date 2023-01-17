using System;
using System.Data;
using System.Data.OracleClient;
using System.Configuration;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Collections;

public class JLOracleConnection
{
    RABusinessObject rbo = new RABusinessObject();

    string DbName = "prod1";



    private OracleConnectionStringBuilder JLConnectionString (string user_id, string password)
    {
        OracleConnectionStringBuilder sb = new OracleConnectionStringBuilder();

        if (user_id.Contains("@"))
        {

            string[] connection_components;

            connection_components = user_id.Split('@');

            sb.UserID = connection_components[0];
            sb.DataSource = connection_components[1];
        }
        else
        {
           

            sb.DataSource = DbName;
            sb.UserID = user_id;
        }

        sb.Password = password;
        sb.Unicode = true;

        return (sb);
    }

    public string ConnectToOracle(string user_id, string passworld)

    {
        OracleConnection con = new OracleConnection();

        OracleConnectionStringBuilder sb = this.JLConnectionString(user_id, passworld);

        con.ConnectionString = sb.ConnectionString;

        try
        {

            con.Open();

            if (con != null && con.State == ConnectionState.Open)
            {
                con.Close();
            }
            HttpContext.Current.Session["GlobalConnectionStringBuilder"] = sb;

            HttpContext.Current.Session["ConnectionString"] = sb.ConnectionString;
            
            HttpContext.Current.Session["Authenticated"] = "YES";

            HttpContext.Current.Session["USER"] = sb.UserID.ToUpper();

            HttpContext.Current.Session["CUSTOMER_ID"] = rbo.SelectCustIDByUserID(sb.UserID.ToUpper()).ToString();
       
            HttpContext.Current.Session["USER_ROLES"] = rbo.SelectUserRoles();
            

            HttpContext.Current.Session["ORACLE_SYSTEM"] = "RA";

            /* add any additional application required constant values into Session variables
             * via custom rbo methods as needed
             */

       
            return "VALID" + sb.ConnectionString;
        }
        catch (Exception ex)
        {
            return ex.Message.Trim();
          
        }
        finally
        {
            if (con != null && con.State == ConnectionState.Open)
            {
                con.Close();
            }
        }
    }

    
    /// <summary>
    /// This method will fail if called. In order to utilize it a function in the
    /// Oracle DB matching the function call in the method must be developed.
    /// </summary>
    /// <param name="user_id"></param>
    /// <param name="old_pw"></param>
    /// <param name="new_pw"></param>
    /// <returns></returns>
    public string ChangeDbPassword(string user_id, string old_pw, string new_pw)
    {
        string valid_conection_string = this.ConnectToOracle(user_id, old_pw);

        if (valid_conection_string.Substring(0, 5) == "VALID")
        {

            OracleConnectionStringBuilder sb = this.JLConnectionString(user_id, old_pw);

            OracleConnection conn = new OracleConnection(sb.ConnectionString);

            OracleCommand objCmd = new OracleCommand();
            objCmd.Connection = conn;
            objCmd.CommandText = "JLFN_ALTER_USER_PSW_DOTNET";
            objCmd.CommandType = CommandType.StoredProcedure;
            objCmd.Parameters.Add("V_USER", OracleType.VarChar).Value = user_id;
            objCmd.Parameters.Add("V_NEW_PASSWORD", OracleType.VarChar).Value = new_pw;
            objCmd.Parameters.Add("v_success", OracleType.VarChar, 10).Direction = ParameterDirection.ReturnValue;

            try
            {
                conn.Open();
                objCmd.ExecuteNonQuery();
                conn.Close();
                return ("Password Succesfully Changed.");
            }
            catch (Exception ex)
            {
                return ("Error occurred. Password not changed.<br>" + ex.Message);
            }

        }
        else
        {
            return ("Invalid User ID/Old Password");
        }
    }
}

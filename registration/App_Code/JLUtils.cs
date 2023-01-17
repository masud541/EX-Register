using System;
using System.Data;
using System.Configuration;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Collections;

/// <summary>
/// Reuseable Utilities developed by ASG group. Contains - ConnectionString
/// In order to use, DataSet Table Adapter connection modifiers must be set to public.
/// </summary>
public class JLUtils
{
    /// <summary>
    /// Contains user production connection in a session variable. In order to use, 
    /// DataSet Table Adapter connection modifiers must be set to public. Default
    /// DB is PADM use user@dbname format to change DB name in username field. The
    /// connection string is to be used to change the connection of any table adapter 
    /// being called at runtime.
    /// /// 
    /// </summary>
    /// <returns></returns>
    public static System.Data.OracleClient.OracleConnection GetConnectionString()
    {

        System.Data.OracleClient.OracleConnection conn = new System.Data.OracleClient.OracleConnection();
        conn.ConnectionString = "Data Source=prod1;User ID=testfmpro;Password=testfmpro;Unicode=True";

        return conn;

    }

    public static string IsAuthenticated()
    {
        if (HttpContext.Current.Session["Authenticated"] != null)
        {
            return HttpContext.Current.Session["Authenticated"].ToString();
        }
        else
        {
            return "NO";
        }
    }

    public static bool HasRole(string role1)
    {
        Hashtable user_roles = (Hashtable)HttpContext.Current.Session["USER_ROLES"];

        if (user_roles.ContainsValue(role1))
        {
            return true;
        }
        else
        {
            return false;
        }
        
    }
    public static bool HasRole(string role1, string role2)
    {
        Hashtable user_roles = (Hashtable)HttpContext.Current.Session["USER_ROLES"];

        if (user_roles.ContainsValue(role1) ||
            user_roles.ContainsValue(role2))
        {
            return true;
        }
        else
        {
            return false;
        }

    }
    public static bool HasRole(string role1, string role2, string role3)
    {
        Hashtable user_roles = (Hashtable)HttpContext.Current.Session["USER_ROLES"];

        if (user_roles.ContainsValue(role1) ||
            user_roles.ContainsValue(role2) ||
            user_roles.ContainsValue(role3))
        {
            return true;
        }
        else
        {
            return false;
        }

    }
    public static bool HasRole(string role1, string role2, string role3, string role4)
    {
        Hashtable user_roles = (Hashtable)HttpContext.Current.Session["USER_ROLES"];

        if (user_roles.ContainsValue(role1) ||
            user_roles.ContainsValue(role2) ||
            user_roles.ContainsValue(role3) ||
            user_roles.ContainsValue(role4))
        {
            return true;
        }
        else
        {
            return false;
        }

    }
    public static bool HasRole(string role1, string role2, string role3, string role4, string role5)
    {
        Hashtable user_roles = (Hashtable)HttpContext.Current.Session["USER_ROLES"];

        if (user_roles.ContainsValue(role1) ||
            user_roles.ContainsValue(role2) ||
            user_roles.ContainsValue(role3) ||
            user_roles.ContainsValue(role4) ||
            user_roles.ContainsValue(role5))
        {
            return true;
        }
        else
        {
            return false;
        }

    }

    

}

<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageRegistration.master" AutoEventWireup="true" CodeFile="RegistrationCustomerInfo.aspx.cs" Inherits="RegistrationCustomerInfo" MaintainScrollPositionOnPostback="true" ValidateRequest="false"%>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style10
        {
            width: 63%;
        }
        .style19
        {
            height: 15px;
            text-align: left;
        }
        .style20
        {
            font-size: 8pt;
            font-weight: bold;
            text-align: left;
        }
        .style21
        {
            width: 101px;
        }
        .style22
        {
            height: 15px;
            text-align: left;
            width: 101px;
        }
        .style24
        {
            font-size: 8pt;
            }
        .style25
        {
    }
        .style26
        {
            font-size: 8pt;
        }
    .style27
    {
        height: 15px;
        text-align: left;
        width: 160px;
    }
    .style28
    {
        text-align: left;
    }
    .style29
    {
        font-size: 8pt;
        font-style: italic;
    }
        .style31
        {
            font-weight: normal;
        }
    .style32
    {
        font-size: 7pt;
    }
        .style445
        {
            font-size: 8pt;
            color: #000000;
        }
        .style446
        {
            height: 500px;
        }
        .style448
        {
            font-family: Helvetica;
            font-size: small;
        }
        .style11
        {
            font-size: large;
            font-weight: bold;
        font-family: Arial, Helvetica, sans-serif;
    }
        .style449
        {
            font-size: x-small;
        }
        .style450
        {
            font-size: 8pt;
            font-weight: bold;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <center style="font-family: Arial, Helvetica, sans-serif">
        <table class="style1" width="100%">
            <tr>
                <td width="513" align="left" valign="middle" bgcolor="#D1D2D4" class="stepHeader">
                    <span style="mso-bidi-font-size:14.0pt;font-family:&quot;Lucida Grande&quot;;
mso-bidi-font-family:&quot;Lucida Grande&quot;">
                        <span 
                            class="style11">JL Audio Warranty Registration</span></span> </td>
                <td style="text-align: right">
                    <img alt="" src="images/Step3.jpg" style="width: 200px; height: 50px" /></td>
            </tr>
            <tr>
                <td width="513" align="left" valign="middle" bgcolor="#D1D2D4" 
                   colspan="2">
                    <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" 
                        DataSourceID="ObjectDataSource2" style="font-size: 9pt" CellPadding="4" 
                        EnableModelValidation="True">
                        <Columns>
                            <asp:BoundField DataField="SERIAL_NUMBER" HeaderText="Serial" 
                                SortExpression="SERIAL_NUMBER" />
                            <asp:BoundField DataField="SKU" HeaderText="SKU" SortExpression="SKU" />
                            <asp:BoundField DataField="CATEGORY" HeaderText="Category" 
                                SortExpression="CATEGORY" />
                            <asp:BoundField DataField="PART_NUMBER" HeaderText="Model" 
                                SortExpression="PART_NUMBER" />
                        </Columns>
                    </asp:GridView>
                    <asp:ObjectDataSource ID="ObjectDataSource2" runat="server" 
                        OldValuesParameterFormatString="original_{0}" 
                        SelectMethod="SelectSimilarSerial" TypeName="RSBusinessObject">
                        <SelectParameters>
                            <asp:SessionParameter Name="serial" SessionField="CheckedSerial" 
                                Type="String" />
                        </SelectParameters>
                    </asp:ObjectDataSource>
                    </td>
            </tr>
        </table>
        <table class="style10">
            <tr>
                <td style="text-align: left">
                    <p class="style448" 
                        style="mso-bidi-font-size: 12.0pt; mso-bidi-font-family: Helvetica; mso-font-kerning: .5pt">
                        Please complete the fields below (all fields are required for registration).</p>
                </td>
            </tr>
            <tr>
                <td class="style446">
                    <table class="style1">
                        <tr>
                            <td colspan="3">
                                <table class="style1">
                                    <tr>
                                        <td class="style31" style="text-align: left; font-size: 8pt;" colspan="2">
                                <p class="MsoNormal">
                                    <b>
                                    <span>Customer Information</span></b><span style="mso-bidi-font-size:
14.0pt;font-family:&quot;Lucida Grande&quot;;mso-bidi-font-family:&quot;Lucida Grande&quot;;
mso-font-kerning:.5pt"><o:p></o:p></span></p>
                                <p class="style31">
                                    <span>Complete the information below<o:p></o:p></span></p>
                                            <p class="style31">
                                                <o:p></o:p></p>
                                        </td>
                                        <td class="style21">
                                            &nbsp;</td>
                                        <td class="style20" colspan="2" style="text-align: left">
                                            &nbsp;</td>
                                        <td class="style20">
                                            &nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="style27" style="text-align: left">
                                <asp:Label ID="Label3" runat="server" 
                                    Text="Last Name" CssClass="style445" ForeColor="#333333"></asp:Label>
                                        </td>
                                        <td class="style20" style="text-align: left">
                                <asp:TextBox ID="TextBoxLastName" runat="server" Width="195px"></asp:TextBox>
                                        </td>
                                        <td class="style21">
                                            &nbsp;</td>
                                        <td class="style20" colspan="2" style="text-align: left">
                                            &nbsp;</td>
                                        <td class="style20">
                                            &nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="style27" style="text-align: left">
                                <asp:Label ID="Label14" runat="server" 
                                    Text="First Name" CssClass="style445" ForeColor="#333333"></asp:Label>
                                        </td>
                                        <td class="style20" style="text-align: left">
                                <asp:TextBox ID="TextBoxFirstName" runat="server" Width="195px"></asp:TextBox>
                                        </td>
                                        <td class="style21">
                                            &nbsp;</td>
                                        <td class="style20" colspan="2" style="text-align: left">
                                            &nbsp;</td>
                                        <td class="style20">
                                            &nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="style27" style="text-align: left">
                                <asp:Label ID="Label4" runat="server" Text="Phone" CssClass="style445" ForeColor="#333333"></asp:Label>
                                        </td>
                                        <td class="style20" style="text-align: left">
                                <asp:TextBox ID="TextBoxPhone" runat="server" Width="195px"></asp:TextBox>
                                        </td>
                                        <td class="style21">
                                            &nbsp;</td>
                                        <td class="style20" colspan="2" style="text-align: left">
                                            &nbsp;</td>
                                        <td class="style20">
                                            &nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="style27" style="text-align: left">
                                <asp:Label ID="Label6" runat="server" Text="Email" CssClass="style445" ForeColor="#333333"></asp:Label>
                                        </td>
                                        <td class="style20" style="text-align: left">
                                <asp:TextBox ID="TextBoxEmail" runat="server" Width="195px"></asp:TextBox>
                                        </td>
                                        <td class="style21">
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                                    ControlToValidate="TextBoxEmail" ErrorMessage="Invalid Email Format" 
                                    ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" 
                                    style="font-size: 8pt" Display="Dynamic"></asp:RegularExpressionValidator>
                                        </td>
                                        <td class="style20" colspan="2" style="text-align: left">
                                            &nbsp;</td>
                                        <td class="style20">
                                            &nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="style27" style="text-align: left">
                                <asp:Label ID="Label5" runat="server" 
                                    Text="Confirm Email" CssClass="style445" ForeColor="#333333"></asp:Label>
                                        </td>
                                        <td class="style20" style="text-align: left">
                                <asp:TextBox ID="TextBoxEmailConfirm" runat="server" Width="195px"></asp:TextBox>
                                        </td>
                                        <td class="style21">
                                <asp:CompareValidator ID="CompareValidator1" runat="server" 
                                    ControlToCompare="TextBoxEmail" ControlToValidate="TextBoxEmailConfirm" 
                                    ErrorMessage="email &amp; confirm email don't match" 
                                    style="font-size: 8pt" Display="Dynamic"></asp:CompareValidator>
                                        </td>
                                        <td class="style20" colspan="2" style="text-align: left">
                                            &nbsp;</td>
                                        <td class="style20">
                                            &nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="style20" colspan="2" style="text-align: left">
                                            &nbsp;</td>
                                        <td class="style21">
                                            &nbsp;</td>
                                        <td class="style20" colspan="2" style="text-align: left">
                                            &nbsp;</td>
                                        <td class="style20">
                                            &nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="style20" colspan="2" style="text-align: left">
                                            Customer
                                            Address </td>
                                        <td class="style21">
                                            &nbsp;</td>
                                        <td class="style20" colspan="2" style="text-align: left">
                                            &nbsp;</td>
                                        <td class="style20">
                                            &nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="style27" style="text-align: left">
                                <asp:Label ID="Label7" runat="server" style="color: #333333; font-size: 8pt" 
                                    Text="Country"></asp:Label>
                                        </td>
                                        <td class="style19" style="text-align: left">
                                <asp:DropDownList id="DropDownListCountry" runat="server" 
                                                Width="207px">

    <asp:ListItem Value="AF">Afghanistan</asp:ListItem>

    <asp:ListItem Value="AL">Albania</asp:ListItem>

    <asp:ListItem Value="DZ">Algeria</asp:ListItem>

    <asp:ListItem Value="AS">American Samoa</asp:ListItem>

    <asp:ListItem Value="AD">Andorra</asp:ListItem>

    <asp:ListItem Value="AO">Angola</asp:ListItem>

    <asp:ListItem Value="AI">Anguilla</asp:ListItem>

    <asp:ListItem Value="AQ">Antarctica</asp:ListItem>

    <asp:ListItem Value="AG">Antigua And Barbuda</asp:ListItem>

    <asp:ListItem Value="AR">Argentina</asp:ListItem>

    <asp:ListItem Value="AM">Armenia</asp:ListItem>

    <asp:ListItem Value="AW">Aruba</asp:ListItem>

    <asp:ListItem Value="AU">Australia</asp:ListItem>

    <asp:ListItem Value="AT">Austria</asp:ListItem>

    <asp:ListItem Value="AZ">Azerbaijan</asp:ListItem>

    <asp:ListItem Value="BS">Bahamas</asp:ListItem>

    <asp:ListItem Value="BH">Bahrain</asp:ListItem>

    <asp:ListItem Value="BD">Bangladesh</asp:ListItem>

    <asp:ListItem Value="BB">Barbados</asp:ListItem>

    <asp:ListItem Value="BY">Belarus</asp:ListItem>

    <asp:ListItem Value="BE">Belgium</asp:ListItem>

    <asp:ListItem Value="BZ">Belize</asp:ListItem>

    <asp:ListItem Value="BJ">Benin</asp:ListItem>

    <asp:ListItem Value="BM">Bermuda</asp:ListItem>

    <asp:ListItem Value="BT">Bhutan</asp:ListItem>

    <asp:ListItem Value="BO">Bolivia</asp:ListItem>

    <asp:ListItem Value="BA">Bosnia And Herzegowina</asp:ListItem>

    <asp:ListItem Value="BW">Botswana</asp:ListItem>

    <asp:ListItem Value="BV">Bouvet Island</asp:ListItem>

    <asp:ListItem Value="BR">Brazil</asp:ListItem>

    <asp:ListItem Value="IO">British Indian Ocean Territory</asp:ListItem>

    <asp:ListItem Value="BN">Brunei Darussalam</asp:ListItem>

    <asp:ListItem Value="BG">Bulgaria</asp:ListItem>

    <asp:ListItem Value="BF">Burkina Faso</asp:ListItem>

    <asp:ListItem Value="BI">Burundi</asp:ListItem>

    <asp:ListItem Value="KH">Cambodia</asp:ListItem>

    <asp:ListItem Value="CM">Cameroon</asp:ListItem>

    <asp:ListItem Value="CA">Canada</asp:ListItem>

    <asp:ListItem Value="CV">Cape Verde</asp:ListItem>

    <asp:ListItem Value="KY">Cayman Islands</asp:ListItem>

    <asp:ListItem Value="CF">Central African Republic</asp:ListItem>

    <asp:ListItem Value="TD">Chad</asp:ListItem>

    <asp:ListItem Value="CL">Chile</asp:ListItem>

    <asp:ListItem Value="CN">China</asp:ListItem>

    <asp:ListItem Value="CX">Christmas Island</asp:ListItem>

    <asp:ListItem Value="CC">Cocos (Keeling) Islands</asp:ListItem>

    <asp:ListItem Value="CO">Colombia</asp:ListItem>

    <asp:ListItem Value="KM">Comoros</asp:ListItem>

    <asp:ListItem Value="CG">Congo</asp:ListItem>

    <asp:ListItem Value="CK">Cook Islands</asp:ListItem>

    <asp:ListItem Value="CR">Costa Rica</asp:ListItem>

    <asp:ListItem Value="CI">Cote D'Ivoire</asp:ListItem>

    <asp:ListItem Value="HR">Croatia (Local Name: Hrvatska)</asp:ListItem>

    <asp:ListItem Value="CU">Cuba</asp:ListItem>

    <asp:ListItem Value="CY">Cyprus</asp:ListItem>

    <asp:ListItem Value="CZ">Czech Republic</asp:ListItem>

    <asp:ListItem Value="DK">Denmark</asp:ListItem>

    <asp:ListItem Value="DJ">Djibouti</asp:ListItem>

    <asp:ListItem Value="DM">Dominica</asp:ListItem>

    <asp:ListItem Value="DO">Dominican Republic</asp:ListItem>

    <asp:ListItem Value="TP">East Timor</asp:ListItem>

    <asp:ListItem Value="EC">Ecuador</asp:ListItem>

    <asp:ListItem Value="EG">Egypt</asp:ListItem>

    <asp:ListItem Value="SV">El Salvador</asp:ListItem>

    <asp:ListItem Value="GQ">Equatorial Guinea</asp:ListItem>

    <asp:ListItem Value="ER">Eritrea</asp:ListItem>

    <asp:ListItem Value="EE">Estonia</asp:ListItem>

    <asp:ListItem Value="ET">Ethiopia</asp:ListItem>

    <asp:ListItem Value="FK">Falkland Islands (Malvinas)</asp:ListItem>

    <asp:ListItem Value="FO">Faroe Islands</asp:ListItem>

    <asp:ListItem Value="FJ">Fiji</asp:ListItem>

    <asp:ListItem Value="FI">Finland</asp:ListItem>

    <asp:ListItem Value="FR">France</asp:ListItem>

    <asp:ListItem Value="GF">French Guiana</asp:ListItem>

    <asp:ListItem Value="PF">French Polynesia</asp:ListItem>

    <asp:ListItem Value="TF">French Southern Territories</asp:ListItem>

    <asp:ListItem Value="GA">Gabon</asp:ListItem>

    <asp:ListItem Value="GM">Gambia</asp:ListItem>

    <asp:ListItem Value="GE">Georgia</asp:ListItem>

    <asp:ListItem Value="DE">Germany</asp:ListItem>

    <asp:ListItem Value="GH">Ghana</asp:ListItem>

    <asp:ListItem Value="GI">Gibraltar</asp:ListItem>

    <asp:ListItem Value="GR">Greece</asp:ListItem>

    <asp:ListItem Value="GL">Greenland</asp:ListItem>

    <asp:ListItem Value="GD">Grenada</asp:ListItem>

    <asp:ListItem Value="GP">Guadeloupe</asp:ListItem>

    <asp:ListItem Value="GU">Guam</asp:ListItem>

    <asp:ListItem Value="GT">Guatemala</asp:ListItem>

    <asp:ListItem Value="GN">Guinea</asp:ListItem>

    <asp:ListItem Value="GW">Guinea-Bissau</asp:ListItem>

    <asp:ListItem Value="GY">Guyana</asp:ListItem>

    <asp:ListItem Value="HT">Haiti</asp:ListItem>

    <asp:ListItem Value="HM">Heard And Mc Donald Islands</asp:ListItem>

    <asp:ListItem Value="VA">Holy See (Vatican City State)</asp:ListItem>

    <asp:ListItem Value="HN">Honduras</asp:ListItem>

    <asp:ListItem Value="HK">Hong Kong</asp:ListItem>

    <asp:ListItem Value="HU">Hungary</asp:ListItem>

    <asp:ListItem Value="IS">Icel And</asp:ListItem>

    <asp:ListItem Value="IN">India</asp:ListItem>

    <asp:ListItem Value="ID">Indonesia</asp:ListItem>

    <asp:ListItem Value="IR">Iran (Islamic Republic Of)</asp:ListItem>

    <asp:ListItem Value="IQ">Iraq</asp:ListItem>

    <asp:ListItem Value="IE">Ireland</asp:ListItem>

    <asp:ListItem Value="IL">Israel</asp:ListItem>

    <asp:ListItem Value="IT">Italy</asp:ListItem>

    <asp:ListItem Value="JM">Jamaica</asp:ListItem>

    <asp:ListItem Value="JP">Japan</asp:ListItem>

    <asp:ListItem Value="JO">Jordan</asp:ListItem>

    <asp:ListItem Value="KZ">Kazakhstan</asp:ListItem>

    <asp:ListItem Value="KE">Kenya</asp:ListItem>

    <asp:ListItem Value="KI">Kiribati</asp:ListItem>

    <asp:ListItem Value="KP">Korea, Dem People'S Republic</asp:ListItem>

    <asp:ListItem Value="KR">Korea, Republic Of</asp:ListItem>

    <asp:ListItem Value="KW">Kuwait</asp:ListItem>

    <asp:ListItem Value="KG">Kyrgyzstan</asp:ListItem>

    <asp:ListItem Value="LA">Lao People'S Dem Republic</asp:ListItem>

    <asp:ListItem Value="LV">Latvia</asp:ListItem>

    <asp:ListItem Value="LB">Lebanon</asp:ListItem>

    <asp:ListItem Value="LS">Lesotho</asp:ListItem>

    <asp:ListItem Value="LR">Liberia</asp:ListItem>

    <asp:ListItem Value="LY">Libyan Arab Jamahiriya</asp:ListItem>

    <asp:ListItem Value="LI">Liechtenstein</asp:ListItem>

    <asp:ListItem Value="LT">Lithuania</asp:ListItem>

    <asp:ListItem Value="LU">Luxembourg</asp:ListItem>

    <asp:ListItem Value="MO">Macau</asp:ListItem>

    <asp:ListItem Value="MK">Macedonia</asp:ListItem>

    <asp:ListItem Value="MG">Madagascar</asp:ListItem>

    <asp:ListItem Value="MW">Malawi</asp:ListItem>

    <asp:ListItem Value="MY">Malaysia</asp:ListItem>

    <asp:ListItem Value="MV">Maldives</asp:ListItem>

    <asp:ListItem Value="ML">Mali</asp:ListItem>

    <asp:ListItem Value="MT">Malta</asp:ListItem>

    <asp:ListItem Value="MH">Marshall Islands</asp:ListItem>

    <asp:ListItem Value="MQ">Martinique</asp:ListItem>

    <asp:ListItem Value="MR">Mauritania</asp:ListItem>

    <asp:ListItem Value="MU">Mauritius</asp:ListItem>

    <asp:ListItem Value="YT">Mayotte</asp:ListItem>

    <asp:ListItem Value="MX">Mexico</asp:ListItem>

    <asp:ListItem Value="FM">Micronesia, Federated States</asp:ListItem>

    <asp:ListItem Value="MD">Moldova, Republic Of</asp:ListItem>

    <asp:ListItem Value="MC">Monaco</asp:ListItem>

    <asp:ListItem Value="MN">Mongolia</asp:ListItem>

    <asp:ListItem Value="MS">Montserrat</asp:ListItem>

    <asp:ListItem Value="MA">Morocco</asp:ListItem>

    <asp:ListItem Value="MZ">Mozambique</asp:ListItem>

    <asp:ListItem Value="MM">Myanmar</asp:ListItem>

    <asp:ListItem Value="NA">Namibia</asp:ListItem>

    <asp:ListItem Value="NR">Nauru</asp:ListItem>

    <asp:ListItem Value="NP">Nepal</asp:ListItem>

    <asp:ListItem Value="NL">Netherlands</asp:ListItem>

    <asp:ListItem Value="AN">Netherlands Ant Illes</asp:ListItem>

    <asp:ListItem Value="NC">New Caledonia</asp:ListItem>

    <asp:ListItem Value="NZ">New Zealand</asp:ListItem>

    <asp:ListItem Value="NI">Nicaragua</asp:ListItem>

    <asp:ListItem Value="NE">Niger</asp:ListItem>

    <asp:ListItem Value="NG">Nigeria</asp:ListItem>

    <asp:ListItem Value="NU">Niue</asp:ListItem>

    <asp:ListItem Value="NF">Norfolk Island</asp:ListItem>

    <asp:ListItem Value="MP">Northern Mariana Islands</asp:ListItem>

    <asp:ListItem Value="NO">Norway</asp:ListItem>

    <asp:ListItem Value="OM">Oman</asp:ListItem>

    <asp:ListItem Value="PK">Pakistan</asp:ListItem>

    <asp:ListItem Value="PW">Palau</asp:ListItem>

    <asp:ListItem Value="PA">Panama</asp:ListItem>

    <asp:ListItem Value="PG">Papua New Guinea</asp:ListItem>

    <asp:ListItem Value="PY">Paraguay</asp:ListItem>

    <asp:ListItem Value="PE">Peru</asp:ListItem>

    <asp:ListItem Value="PH">Philippines</asp:ListItem>

    <asp:ListItem Value="PN">Pitcairn</asp:ListItem>

    <asp:ListItem Value="PL">Poland</asp:ListItem>

    <asp:ListItem Value="PT">Portugal</asp:ListItem>

    <asp:ListItem Value="PR">Puerto Rico</asp:ListItem>

    <asp:ListItem Value="QA">Qatar</asp:ListItem>

    <asp:ListItem Value="RE">Reunion</asp:ListItem>

    <asp:ListItem Value="RO">Romania</asp:ListItem>

    <asp:ListItem Value="RU">Russian Federation</asp:ListItem>

    <asp:ListItem Value="RW">Rwanda</asp:ListItem>

    <asp:ListItem Value="KN">Saint K Itts And Nevis</asp:ListItem>

    <asp:ListItem Value="LC">Saint Lucia</asp:ListItem>

    <asp:ListItem Value="VC">Saint Vincent, The Grenadines</asp:ListItem>

    <asp:ListItem Value="WS">Samoa</asp:ListItem>

    <asp:ListItem Value="SM">San Marino</asp:ListItem>

    <asp:ListItem Value="ST">Sao Tome And Principe</asp:ListItem>

    <asp:ListItem Value="SA">Saudi Arabia</asp:ListItem>

    <asp:ListItem Value="SN">Senegal</asp:ListItem>

    <asp:ListItem Value="SC">Seychelles</asp:ListItem>

    <asp:ListItem Value="SL">Sierra Leone</asp:ListItem>

    <asp:ListItem Value="SG">Singapore</asp:ListItem>

    <asp:ListItem Value="SK">Slovakia (Slovak Republic)</asp:ListItem>

    <asp:ListItem Value="SI">Slovenia</asp:ListItem>

    <asp:ListItem Value="SB">Solomon Islands</asp:ListItem>

    <asp:ListItem Value="SO">Somalia</asp:ListItem>

    <asp:ListItem Value="ZA">South Africa</asp:ListItem>

    <asp:ListItem Value="GS">South Georgia , S Sandwich Is.</asp:ListItem>

    <asp:ListItem Value="ES">Spain</asp:ListItem>

    <asp:ListItem Value="LK">Sri Lanka</asp:ListItem>

    <asp:ListItem Value="SH">St. Helena</asp:ListItem>

    <asp:ListItem Value="PM">St. Pierre And Miquelon</asp:ListItem>

    <asp:ListItem Value="SD">Sudan</asp:ListItem>

    <asp:ListItem Value="SR">Suriname</asp:ListItem>

    <asp:ListItem Value="SJ">Svalbard, Jan Mayen Islands</asp:ListItem>

    <asp:ListItem Value="SZ">Sw Aziland</asp:ListItem>

    <asp:ListItem Value="SE">Sweden</asp:ListItem>

    <asp:ListItem Value="CH">Switzerland</asp:ListItem>

    <asp:ListItem Value="SY">Syrian Arab Republic</asp:ListItem>

    <asp:ListItem Value="TW">Taiwan</asp:ListItem>

    <asp:ListItem Value="TJ">Tajikistan</asp:ListItem>

    <asp:ListItem Value="TZ">Tanzania, United Republic Of</asp:ListItem>

    <asp:ListItem Value="TH">Thailand</asp:ListItem>

    <asp:ListItem Value="TG">Togo</asp:ListItem>

    <asp:ListItem Value="TK">Tokelau</asp:ListItem>

    <asp:ListItem Value="TO">Tonga</asp:ListItem>

    <asp:ListItem Value="TT">Trinidad And Tobago</asp:ListItem>

    <asp:ListItem Value="TN">Tunisia</asp:ListItem>

    <asp:ListItem Value="TR">Turkey</asp:ListItem>

    <asp:ListItem Value="TM">Turkmenistan</asp:ListItem>

    <asp:ListItem Value="TC">Turks And Caicos Islands</asp:ListItem>

    <asp:ListItem Value="TV">Tuvalu</asp:ListItem>

    <asp:ListItem Value="UG">Uganda</asp:ListItem>

    <asp:ListItem Value="UA">Ukraine</asp:ListItem>

    <asp:ListItem Value="AE">United Arab Emirates</asp:ListItem>

    <asp:ListItem Value="GB">United Kingdom</asp:ListItem>

    <asp:ListItem Value="US" Selected="True">United States</asp:ListItem>

    <asp:ListItem Value="UM">United States Minor Is.</asp:ListItem>

    <asp:ListItem Value="UY">Uruguay</asp:ListItem>

    <asp:ListItem Value="UZ">Uzbekistan</asp:ListItem>

    <asp:ListItem Value="VU">Vanuatu</asp:ListItem>

    <asp:ListItem Value="VE">Venezuela</asp:ListItem>

    <asp:ListItem Value="VN">Viet Nam</asp:ListItem>

    <asp:ListItem Value="VG">Virgin Islands (British)</asp:ListItem>

    <asp:ListItem Value="VI">Virgin Islands (U.S.)</asp:ListItem>

    <asp:ListItem Value="WF">Wallis And Futuna Islands</asp:ListItem>

    <asp:ListItem Value="EH">Western Sahara</asp:ListItem>

    <asp:ListItem Value="YE">Yemen</asp:ListItem>

    <asp:ListItem Value="YU">Yugoslavia</asp:ListItem>

    <asp:ListItem Value="ZR">Zaire</asp:ListItem>

    <asp:ListItem Value="ZM">Zambia</asp:ListItem>

    <asp:ListItem Value="ZW">Zimbabwe</asp:ListItem>

</asp:DropDownList> 
                                        </td>
                                        <td class="style22">
                                        </td>
                                        <td class="style19">
                                            &nbsp;</td>
                                        <td class="style19">
                                            &nbsp;</td>
                                        <td class="style19">
                                            &nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td style="text-align: left" class="style28">
                                <asp:Label ID="Label8" runat="server" style="color: #333333; font-size: 8pt" 
                                    Text="Address"></asp:Label>
                                            &nbsp;<span class="style32"><br />
                                            </span><span class="style24">(Note: No PO Box)</span></td>
                                        <td style="text-align: left">
                                <asp:TextBox ID="TextBoxAddress" runat="server" Width="207px"></asp:TextBox>
                                        </td>
                                        <td class="style21">
                                            &nbsp;</td>
                                        <td style="text-align: left">
                                            &nbsp;</td>
                                        <td style="text-align: left">
                                            &nbsp;</td>
                                        <td>
                                            &nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td style="text-align: left" class="style28">
                                <asp:Label ID="Label11" runat="server" style="color: #333333; font-size: 8pt" 
                                    Text="City"></asp:Label>
                                        </td>
                                        <td style="text-align: left">
                                <asp:TextBox ID="TextBoxCity" runat="server" Width="207px"></asp:TextBox>
                                        </td>
                                        <td class="style21">
                                            &nbsp;</td>
                                        <td style="text-align: left">
                                            &nbsp;</td>
                                        <td style="text-align: left">
                                            &nbsp;</td>
                                        <td>
                                            &nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td style="text-align: left" class="style28">
                                <asp:Label ID="Label12" runat="server" style="color: #333333; font-size: 8pt" 
                                    Text="State/Province"></asp:Label>
                                        </td>
                                        <td style="text-align: left">
                                <asp:TextBox ID="TextBoxCustomerState" runat="server" Width="207px"></asp:TextBox>
                                        </td>
                                        <td class="style21">
                                            &nbsp;</td>
                                        <td style="text-align: left">
                                            &nbsp;</td>
                                        <td style="text-align: left">
                                            &nbsp;</td>
                                        <td>
                                            &nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td style="text-align: left" class="style28">
                                <asp:Label ID="Label13" runat="server" style="color: #333333; font-size: 8pt" 
                                    Text="Zip/Postal Code"></asp:Label>
                                        </td>
                                        <td style="text-align: left">
                                <asp:TextBox ID="TextBoxZip" runat="server" Width="207px"></asp:TextBox>
                                        </td>
                                        <td class="style21">
                                            &nbsp;</td>
                                        <td style="text-align: left">
                                            &nbsp;</td>
                                        <td style="text-align: left">
                                            &nbsp;</td>
                                        <td>
                                            &nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="style20" colspan="2" style="text-align: left">
                                            &nbsp;</td>
                                        <td class="style21">
                                            &nbsp;</td>
                                        <td class="style20" colspan="2" style="text-align: left">
                                            &nbsp;</td>
                                        <td class="style20">
                                            &nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="style20" colspan="2" style="text-align: left">
                                            Store / Dealer Information</td>
                                        <td class="style21">
                                            &nbsp;</td>
                                        <td class="style20" colspan="2" style="text-align: left">
                                            &nbsp;</td>
                                        <td class="style20">
                                            &nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="style27" style="text-align: left">
                                <asp:Label ID="Label15" runat="server" style="color: #333333; font-size: 8pt" 
                                    Text="Purchase Date"></asp:Label>
                                            <br />
                                            <span class="style24">(Date on your receipt)</span></td>
                                        <td class="style27" style="text-align: left">
                                <asp:TextBox ID="TextBoxPurchaseDate" runat="server" Width="195px"></asp:TextBox>
                                        </td>
                                        <td class="style21">
                                            <asp:CompareValidator ID="CompareValidator2" runat="server" 
                                                ControlToValidate="TextBoxPurchaseDate" ErrorMessage="Invalid Date" 
                                                Operator="DataTypeCheck" style="font-size: 8pt" Type="Date"></asp:CompareValidator>
                                        </td>
                                        <td class="style20" colspan="2" style="text-align: left">
                                            &nbsp;</td>
                                        <td class="style20">
                                            &nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="style27" style="text-align: left">
                                <asp:Label ID="Label16" runat="server" style="color: #333333; font-size: 8pt" 
                                    Text="Purchase Type"></asp:Label>
                                        </td>
                                        <td class="style27" style="text-align: left; font-size: 8pt;">
                                            <asp:RadioButtonList ID="RadioButtonListOnline" runat="server" 
                                                AutoPostBack="True" 
                                                onselectedindexchanged="RadioButtonListOnline_SelectedIndexChanged">
                                                <asp:ListItem Value="N">In Person</asp:ListItem>
                                                <asp:ListItem Value="Y">Online</asp:ListItem>
                                            </asp:RadioButtonList>
                                        </td>
                                        <td class="style21">
                                            &nbsp;</td>
                                        <td class="style20" colspan="2" style="text-align: left">
                                            &nbsp;</td>
                                        <td class="style20">
                                            &nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="style27" style="text-align: left">
                                <asp:Label ID="Label17" runat="server" style="color: #333333; font-size: 8pt" 
                                    Text="Name of Dealer/Store/Website"></asp:Label>
                                        </td>
                                        <td class="style20" style="text-align: left">
                                <asp:TextBox ID="TextBoxDealerName" runat="server" Width="195px"></asp:TextBox>
                                        </td>
                                        <td class="style21">
                                            &nbsp;</td>
                                        <td class="style20" colspan="2" style="text-align: left">
                                            &nbsp;</td>
                                        <td class="style20">
                                            &nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="style27" style="text-align: left">
                                <asp:Label ID="Label19" runat="server" style="color: #333333; font-size: 8pt" 
                                    Text="Country"></asp:Label>
                                        </td>
                                        <td class="style20" style="text-align: left">
                                <asp:DropDownList id="DropDownListDealerCountry" runat="server" 
                                                Width="207px">

    <asp:ListItem Value="AF">Afghanistan</asp:ListItem>

    <asp:ListItem Value="AL">Albania</asp:ListItem>

    <asp:ListItem Value="DZ">Algeria</asp:ListItem>

    <asp:ListItem Value="AS">American Samoa</asp:ListItem>

    <asp:ListItem Value="AD">Andorra</asp:ListItem>

    <asp:ListItem Value="AO">Angola</asp:ListItem>

    <asp:ListItem Value="AI">Anguilla</asp:ListItem>

    <asp:ListItem Value="AQ">Antarctica</asp:ListItem>

    <asp:ListItem Value="AG">Antigua And Barbuda</asp:ListItem>

    <asp:ListItem Value="AR">Argentina</asp:ListItem>

    <asp:ListItem Value="AM">Armenia</asp:ListItem>

    <asp:ListItem Value="AW">Aruba</asp:ListItem>

    <asp:ListItem Value="AU">Australia</asp:ListItem>

    <asp:ListItem Value="AT">Austria</asp:ListItem>

    <asp:ListItem Value="AZ">Azerbaijan</asp:ListItem>

    <asp:ListItem Value="BS">Bahamas</asp:ListItem>

    <asp:ListItem Value="BH">Bahrain</asp:ListItem>

    <asp:ListItem Value="BD">Bangladesh</asp:ListItem>

    <asp:ListItem Value="BB">Barbados</asp:ListItem>

    <asp:ListItem Value="BY">Belarus</asp:ListItem>

    <asp:ListItem Value="BE">Belgium</asp:ListItem>

    <asp:ListItem Value="BZ">Belize</asp:ListItem>

    <asp:ListItem Value="BJ">Benin</asp:ListItem>

    <asp:ListItem Value="BM">Bermuda</asp:ListItem>

    <asp:ListItem Value="BT">Bhutan</asp:ListItem>

    <asp:ListItem Value="BO">Bolivia</asp:ListItem>

    <asp:ListItem Value="BA">Bosnia And Herzegowina</asp:ListItem>

    <asp:ListItem Value="BW">Botswana</asp:ListItem>

    <asp:ListItem Value="BV">Bouvet Island</asp:ListItem>

    <asp:ListItem Value="BR">Brazil</asp:ListItem>

    <asp:ListItem Value="IO">British Indian Ocean Territory</asp:ListItem>

    <asp:ListItem Value="BN">Brunei Darussalam</asp:ListItem>

    <asp:ListItem Value="BG">Bulgaria</asp:ListItem>

    <asp:ListItem Value="BF">Burkina Faso</asp:ListItem>

    <asp:ListItem Value="BI">Burundi</asp:ListItem>

    <asp:ListItem Value="KH">Cambodia</asp:ListItem>

    <asp:ListItem Value="CM">Cameroon</asp:ListItem>

    <asp:ListItem Value="CA">Canada</asp:ListItem>

    <asp:ListItem Value="CV">Cape Verde</asp:ListItem>

    <asp:ListItem Value="KY">Cayman Islands</asp:ListItem>

    <asp:ListItem Value="CF">Central African Republic</asp:ListItem>

    <asp:ListItem Value="TD">Chad</asp:ListItem>

    <asp:ListItem Value="CL">Chile</asp:ListItem>

    <asp:ListItem Value="CN">China</asp:ListItem>

    <asp:ListItem Value="CX">Christmas Island</asp:ListItem>

    <asp:ListItem Value="CC">Cocos (Keeling) Islands</asp:ListItem>

    <asp:ListItem Value="CO">Colombia</asp:ListItem>

    <asp:ListItem Value="KM">Comoros</asp:ListItem>

    <asp:ListItem Value="CG">Congo</asp:ListItem>

    <asp:ListItem Value="CK">Cook Islands</asp:ListItem>

    <asp:ListItem Value="CR">Costa Rica</asp:ListItem>

    <asp:ListItem Value="CI">Cote D'Ivoire</asp:ListItem>

    <asp:ListItem Value="HR">Croatia (Local Name: Hrvatska)</asp:ListItem>

    <asp:ListItem Value="CU">Cuba</asp:ListItem>

    <asp:ListItem Value="CY">Cyprus</asp:ListItem>

    <asp:ListItem Value="CZ">Czech Republic</asp:ListItem>

    <asp:ListItem Value="DK">Denmark</asp:ListItem>

    <asp:ListItem Value="DJ">Djibouti</asp:ListItem>

    <asp:ListItem Value="DM">Dominica</asp:ListItem>

    <asp:ListItem Value="DO">Dominican Republic</asp:ListItem>

    <asp:ListItem Value="TP">East Timor</asp:ListItem>

    <asp:ListItem Value="EC">Ecuador</asp:ListItem>

    <asp:ListItem Value="EG">Egypt</asp:ListItem>

    <asp:ListItem Value="SV">El Salvador</asp:ListItem>

    <asp:ListItem Value="GQ">Equatorial Guinea</asp:ListItem>

    <asp:ListItem Value="ER">Eritrea</asp:ListItem>

    <asp:ListItem Value="EE">Estonia</asp:ListItem>

    <asp:ListItem Value="ET">Ethiopia</asp:ListItem>

    <asp:ListItem Value="FK">Falkland Islands (Malvinas)</asp:ListItem>

    <asp:ListItem Value="FO">Faroe Islands</asp:ListItem>

    <asp:ListItem Value="FJ">Fiji</asp:ListItem>

    <asp:ListItem Value="FI">Finland</asp:ListItem>

    <asp:ListItem Value="FR">France</asp:ListItem>

    <asp:ListItem Value="GF">French Guiana</asp:ListItem>

    <asp:ListItem Value="PF">French Polynesia</asp:ListItem>

    <asp:ListItem Value="TF">French Southern Territories</asp:ListItem>

    <asp:ListItem Value="GA">Gabon</asp:ListItem>

    <asp:ListItem Value="GM">Gambia</asp:ListItem>

    <asp:ListItem Value="GE">Georgia</asp:ListItem>

    <asp:ListItem Value="DE">Germany</asp:ListItem>

    <asp:ListItem Value="GH">Ghana</asp:ListItem>

    <asp:ListItem Value="GI">Gibraltar</asp:ListItem>

    <asp:ListItem Value="GR">Greece</asp:ListItem>

    <asp:ListItem Value="GL">Greenland</asp:ListItem>

    <asp:ListItem Value="GD">Grenada</asp:ListItem>

    <asp:ListItem Value="GP">Guadeloupe</asp:ListItem>

    <asp:ListItem Value="GU">Guam</asp:ListItem>

    <asp:ListItem Value="GT">Guatemala</asp:ListItem>

    <asp:ListItem Value="GN">Guinea</asp:ListItem>

    <asp:ListItem Value="GW">Guinea-Bissau</asp:ListItem>

    <asp:ListItem Value="GY">Guyana</asp:ListItem>

    <asp:ListItem Value="HT">Haiti</asp:ListItem>

    <asp:ListItem Value="HM">Heard And Mc Donald Islands</asp:ListItem>

    <asp:ListItem Value="VA">Holy See (Vatican City State)</asp:ListItem>

    <asp:ListItem Value="HN">Honduras</asp:ListItem>

    <asp:ListItem Value="HK">Hong Kong</asp:ListItem>

    <asp:ListItem Value="HU">Hungary</asp:ListItem>

    <asp:ListItem Value="IS">Icel And</asp:ListItem>

    <asp:ListItem Value="IN">India</asp:ListItem>

    <asp:ListItem Value="ID">Indonesia</asp:ListItem>

    <asp:ListItem Value="IR">Iran (Islamic Republic Of)</asp:ListItem>

    <asp:ListItem Value="IQ">Iraq</asp:ListItem>

    <asp:ListItem Value="IE">Ireland</asp:ListItem>

    <asp:ListItem Value="IL">Israel</asp:ListItem>

    <asp:ListItem Value="IT">Italy</asp:ListItem>

    <asp:ListItem Value="JM">Jamaica</asp:ListItem>

    <asp:ListItem Value="JP">Japan</asp:ListItem>

    <asp:ListItem Value="JO">Jordan</asp:ListItem>

    <asp:ListItem Value="KZ">Kazakhstan</asp:ListItem>

    <asp:ListItem Value="KE">Kenya</asp:ListItem>

    <asp:ListItem Value="KI">Kiribati</asp:ListItem>

    <asp:ListItem Value="KP">Korea, Dem People'S Republic</asp:ListItem>

    <asp:ListItem Value="KR">Korea, Republic Of</asp:ListItem>

    <asp:ListItem Value="KW">Kuwait</asp:ListItem>

    <asp:ListItem Value="KG">Kyrgyzstan</asp:ListItem>

    <asp:ListItem Value="LA">Lao People'S Dem Republic</asp:ListItem>

    <asp:ListItem Value="LV">Latvia</asp:ListItem>

    <asp:ListItem Value="LB">Lebanon</asp:ListItem>

    <asp:ListItem Value="LS">Lesotho</asp:ListItem>

    <asp:ListItem Value="LR">Liberia</asp:ListItem>

    <asp:ListItem Value="LY">Libyan Arab Jamahiriya</asp:ListItem>

    <asp:ListItem Value="LI">Liechtenstein</asp:ListItem>

    <asp:ListItem Value="LT">Lithuania</asp:ListItem>

    <asp:ListItem Value="LU">Luxembourg</asp:ListItem>

    <asp:ListItem Value="MO">Macau</asp:ListItem>

    <asp:ListItem Value="MK">Macedonia</asp:ListItem>

    <asp:ListItem Value="MG">Madagascar</asp:ListItem>

    <asp:ListItem Value="MW">Malawi</asp:ListItem>

    <asp:ListItem Value="MY">Malaysia</asp:ListItem>

    <asp:ListItem Value="MV">Maldives</asp:ListItem>

    <asp:ListItem Value="ML">Mali</asp:ListItem>

    <asp:ListItem Value="MT">Malta</asp:ListItem>

    <asp:ListItem Value="MH">Marshall Islands</asp:ListItem>

    <asp:ListItem Value="MQ">Martinique</asp:ListItem>

    <asp:ListItem Value="MR">Mauritania</asp:ListItem>

    <asp:ListItem Value="MU">Mauritius</asp:ListItem>

    <asp:ListItem Value="YT">Mayotte</asp:ListItem>

    <asp:ListItem Value="MX">Mexico</asp:ListItem>

    <asp:ListItem Value="FM">Micronesia, Federated States</asp:ListItem>

    <asp:ListItem Value="MD">Moldova, Republic Of</asp:ListItem>

    <asp:ListItem Value="MC">Monaco</asp:ListItem>

    <asp:ListItem Value="MN">Mongolia</asp:ListItem>

    <asp:ListItem Value="MS">Montserrat</asp:ListItem>

    <asp:ListItem Value="MA">Morocco</asp:ListItem>

    <asp:ListItem Value="MZ">Mozambique</asp:ListItem>

    <asp:ListItem Value="MM">Myanmar</asp:ListItem>

    <asp:ListItem Value="NA">Namibia</asp:ListItem>

    <asp:ListItem Value="NR">Nauru</asp:ListItem>

    <asp:ListItem Value="NP">Nepal</asp:ListItem>

    <asp:ListItem Value="NL">Netherlands</asp:ListItem>

    <asp:ListItem Value="AN">Netherlands Ant Illes</asp:ListItem>

    <asp:ListItem Value="NC">New Caledonia</asp:ListItem>

    <asp:ListItem Value="NZ">New Zealand</asp:ListItem>

    <asp:ListItem Value="NI">Nicaragua</asp:ListItem>

    <asp:ListItem Value="NE">Niger</asp:ListItem>

    <asp:ListItem Value="NG">Nigeria</asp:ListItem>

    <asp:ListItem Value="NU">Niue</asp:ListItem>

    <asp:ListItem Value="NF">Norfolk Island</asp:ListItem>

    <asp:ListItem Value="MP">Northern Mariana Islands</asp:ListItem>

    <asp:ListItem Value="NO">Norway</asp:ListItem>

    <asp:ListItem Value="OM">Oman</asp:ListItem>

    <asp:ListItem Value="PK">Pakistan</asp:ListItem>

    <asp:ListItem Value="PW">Palau</asp:ListItem>

    <asp:ListItem Value="PA">Panama</asp:ListItem>

    <asp:ListItem Value="PG">Papua New Guinea</asp:ListItem>

    <asp:ListItem Value="PY">Paraguay</asp:ListItem>

    <asp:ListItem Value="PE">Peru</asp:ListItem>

    <asp:ListItem Value="PH">Philippines</asp:ListItem>

    <asp:ListItem Value="PN">Pitcairn</asp:ListItem>

    <asp:ListItem Value="PL">Poland</asp:ListItem>

    <asp:ListItem Value="PT">Portugal</asp:ListItem>

    <asp:ListItem Value="PR">Puerto Rico</asp:ListItem>

    <asp:ListItem Value="QA">Qatar</asp:ListItem>

    <asp:ListItem Value="RE">Reunion</asp:ListItem>

    <asp:ListItem Value="RO">Romania</asp:ListItem>

    <asp:ListItem Value="RU">Russian Federation</asp:ListItem>

    <asp:ListItem Value="RW">Rwanda</asp:ListItem>

    <asp:ListItem Value="KN">Saint K Itts And Nevis</asp:ListItem>

    <asp:ListItem Value="LC">Saint Lucia</asp:ListItem>

    <asp:ListItem Value="VC">Saint Vincent, The Grenadines</asp:ListItem>

    <asp:ListItem Value="WS">Samoa</asp:ListItem>

    <asp:ListItem Value="SM">San Marino</asp:ListItem>

    <asp:ListItem Value="ST">Sao Tome And Principe</asp:ListItem>

    <asp:ListItem Value="SA">Saudi Arabia</asp:ListItem>

    <asp:ListItem Value="SN">Senegal</asp:ListItem>

    <asp:ListItem Value="SC">Seychelles</asp:ListItem>

    <asp:ListItem Value="SL">Sierra Leone</asp:ListItem>

    <asp:ListItem Value="SG">Singapore</asp:ListItem>

    <asp:ListItem Value="SK">Slovakia (Slovak Republic)</asp:ListItem>

    <asp:ListItem Value="SI">Slovenia</asp:ListItem>

    <asp:ListItem Value="SB">Solomon Islands</asp:ListItem>

    <asp:ListItem Value="SO">Somalia</asp:ListItem>

    <asp:ListItem Value="ZA">South Africa</asp:ListItem>

    <asp:ListItem Value="GS">South Georgia , S Sandwich Is.</asp:ListItem>

    <asp:ListItem Value="ES">Spain</asp:ListItem>

    <asp:ListItem Value="LK">Sri Lanka</asp:ListItem>

    <asp:ListItem Value="SH">St. Helena</asp:ListItem>

    <asp:ListItem Value="PM">St. Pierre And Miquelon</asp:ListItem>

    <asp:ListItem Value="SD">Sudan</asp:ListItem>

    <asp:ListItem Value="SR">Suriname</asp:ListItem>

    <asp:ListItem Value="SJ">Svalbard, Jan Mayen Islands</asp:ListItem>

    <asp:ListItem Value="SZ">Sw Aziland</asp:ListItem>

    <asp:ListItem Value="SE">Sweden</asp:ListItem>

    <asp:ListItem Value="CH">Switzerland</asp:ListItem>

    <asp:ListItem Value="SY">Syrian Arab Republic</asp:ListItem>

    <asp:ListItem Value="TW">Taiwan</asp:ListItem>

    <asp:ListItem Value="TJ">Tajikistan</asp:ListItem>

    <asp:ListItem Value="TZ">Tanzania, United Republic Of</asp:ListItem>

    <asp:ListItem Value="TH">Thailand</asp:ListItem>

    <asp:ListItem Value="TG">Togo</asp:ListItem>

    <asp:ListItem Value="TK">Tokelau</asp:ListItem>

    <asp:ListItem Value="TO">Tonga</asp:ListItem>

    <asp:ListItem Value="TT">Trinidad And Tobago</asp:ListItem>

    <asp:ListItem Value="TN">Tunisia</asp:ListItem>

    <asp:ListItem Value="TR">Turkey</asp:ListItem>

    <asp:ListItem Value="TM">Turkmenistan</asp:ListItem>

    <asp:ListItem Value="TC">Turks And Caicos Islands</asp:ListItem>

    <asp:ListItem Value="TV">Tuvalu</asp:ListItem>

    <asp:ListItem Value="UG">Uganda</asp:ListItem>

    <asp:ListItem Value="UA">Ukraine</asp:ListItem>

    <asp:ListItem Value="AE">United Arab Emirates</asp:ListItem>

    <asp:ListItem Value="GB">United Kingdom</asp:ListItem>

    <asp:ListItem Value="US" Selected="True">United States</asp:ListItem>

    <asp:ListItem Value="UM">United States Minor Is.</asp:ListItem>

    <asp:ListItem Value="UY">Uruguay</asp:ListItem>

    <asp:ListItem Value="UZ">Uzbekistan</asp:ListItem>

    <asp:ListItem Value="VU">Vanuatu</asp:ListItem>

    <asp:ListItem Value="VE">Venezuela</asp:ListItem>

    <asp:ListItem Value="VN">Viet Nam</asp:ListItem>

    <asp:ListItem Value="VG">Virgin Islands (British)</asp:ListItem>

    <asp:ListItem Value="VI">Virgin Islands (U.S.)</asp:ListItem>

    <asp:ListItem Value="WF">Wallis And Futuna Islands</asp:ListItem>

    <asp:ListItem Value="EH">Western Sahara</asp:ListItem>

    <asp:ListItem Value="YE">Yemen</asp:ListItem>

    <asp:ListItem Value="YU">Yugoslavia</asp:ListItem>

    <asp:ListItem Value="ZR">Zaire</asp:ListItem>

    <asp:ListItem Value="ZM">Zambia</asp:ListItem>

    <asp:ListItem Value="ZW">Zimbabwe</asp:ListItem>

</asp:DropDownList> 
                                        </td>
                                        <td class="style21">
                                            &nbsp;</td>
                                        <td class="style20" colspan="2" style="text-align: left">
                                            &nbsp;</td>
                                        <td class="style20">
                                            &nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="style27" style="text-align: left">
                                <asp:Label ID="Label20" runat="server" style="color: #333333; font-size: 8pt" 
                                    Text="City"></asp:Label>
                                        </td>
                                        <td class="style20" style="text-align: left">
                                <asp:TextBox ID="TextBoxDealerCity" runat="server" Width="207px"></asp:TextBox>
                                        </td>
                                        <td class="style21">
                                            &nbsp;</td>
                                        <td class="style20" colspan="2" style="text-align: left">
                                            &nbsp;</td>
                                        <td class="style20">
                                            &nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="style27" style="text-align: left">
                                <asp:Label ID="Label21" runat="server" style="color: #333333; font-size: 8pt" 
                                    Text="State/Province"></asp:Label>
                                        </td>
                                        <td class="style20" style="text-align: left">
                                <asp:TextBox ID="TextBoxDealerState" runat="server" Width="207px"></asp:TextBox>
                                        </td>
                                        <td class="style21">
                                            &nbsp;</td>
                                        <td class="style20" colspan="2" style="text-align: left">
                                            &nbsp;</td>
                                        <td class="style20">
                                            &nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="style20" colspan="2" style="text-align: left">
                                            &nbsp;</td>
                                        <td class="style21">
                                            &nbsp;</td>
                                        <td class="style20" colspan="2" style="text-align: left">
                                            &nbsp;</td>
                                        <td class="style20">
                                            &nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="style20" colspan="2">
                                            Installation</td>
                                        <td class="style21">
                                            &nbsp;</td>
                                        <td>
                                            &nbsp;</td>
                                        <td>
                                            &nbsp;</td>
                                        <td>
                                            &nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="style27">
                                <asp:Label ID="Label22" runat="server" style="color: #333333; font-size: 8pt" 
                                    Text="Who perfomred the installation?"></asp:Label>
                                        </td>
                                        <td>
                                            <asp:RadioButtonList ID="RadioButtonListInstallation" runat="server" 
                                                style="font-size: 8pt; text-align: left">
                                                <asp:ListItem Value="D">The dealer Installed my product</asp:ListItem>
                                                <asp:ListItem Value="C">I installed my product</asp:ListItem>
                                            </asp:RadioButtonList>
                                        </td>
                                        <td class="style21">
                                            &nbsp;</td>
                                        <td>
                                            &nbsp;</td>
                                        <td>
                                            &nbsp;</td>
                                        <td>
                                            &nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="style28">
                                            &nbsp;</td>
                                        <td>
                                            &nbsp;</td>
                                        <td class="style21">
                                            &nbsp;</td>
                                        <td>
                                            &nbsp;</td>
                                        <td>
                                            &nbsp;</td>
                                        <td>
                                            &nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="style28" valign="top">
                                                        <span class="style26">
                                                        <br />
                                                        <br />
                                                        </span>
                                                        </td>
                                        <td colspan="2" style="text-align: left" valign="top">
                                                        <asp:DropDownList ID="DropDownListShirtSize" runat="server" Visible="False">
                                                            <asp:ListItem Selected="True" Value="L">Large</asp:ListItem>
                                                            <asp:ListItem Value="XL">X Large</asp:ListItem>
                                                            <asp:ListItem Value="XXL">XX Large</asp:ListItem>
                                                        </asp:DropDownList>
                                                        </td>
                                        <td>
                                            &nbsp;</td>
                                        <td>
                                            &nbsp;</td>
                                        <td>
                                            &nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="style28">
                                            &nbsp;</td>
                                        <td>
                                            &nbsp;</td>
                                        <td class="style21">
                                            &nbsp;</td>
                                        <td>
                                            &nbsp;</td>
                                        <td>
                                            &nbsp;</td>
                                        <td>
                                            &nbsp;</td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                        <tr>
                            <td colspan="3" style="text-align: left">
                                <table class="style1">
                                    <tr>
                                        <td class="style25">
                                            <asp:CheckBoxList ID="CheckBoxListOptIn" runat="server" style="font-size: 8pt" 
                                                Width="451px">
                                                <asp:ListItem Selected="True" Value="Y">Yes, I would like to receive periodic updates on Sales and other JL Audio related news.</asp:ListItem>
                                            </asp:CheckBoxList>
                                            <span class="style29">(Your email address shall not be sold or otherwise transferred to any other 
                                            entity.)<br />
                                            </span><span class="style449">If YES is selected above at least one product type must be specified 
                                            below.<br />
                                            </span><span class="style450">Product Type</span><asp:CheckBoxList 
                                                ID="CheckBoxListProductType" runat="server" style="font-size: x-small">
                                                <asp:ListItem Selected="True" Value="Mobile">Mobile</asp:ListItem>
                                                <asp:ListItem>Home</asp:ListItem>
                                                <asp:ListItem>Marine</asp:ListItem>
                                                <asp:ListItem>Powersports</asp:ListItem>
                                            </asp:CheckBoxList>
                                            </td>
                                    </tr>
                                    <tr>
                                        <td class="style25">
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                                                ControlToValidate="TextBoxLastName" Display="Dynamic" 
                                                ErrorMessage="Last Name - Required;" CssClass="style26"></asp:RequiredFieldValidator>
&nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBoxFirstName" 
                                                Display="Dynamic" ErrorMessage="First Name - Required;" CssClass="style26"></asp:RequiredFieldValidator>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="TextBoxPhone" 
                                                Display="Dynamic" ErrorMessage="Phone - Required;" CssClass="style26"></asp:RequiredFieldValidator>
&nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBoxEmail" 
                                                Display="Dynamic" ErrorMessage="email - Required;" CssClass="style26"></asp:RequiredFieldValidator>
&nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="TextBoxEmailConfirm" 
                                                Display="Dynamic" ErrorMessage="confirm email - Required;" 
                                                CssClass="style26"></asp:RequiredFieldValidator>
&nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBoxAddress" 
                                                Display="Dynamic" ErrorMessage="Address - Required;" CssClass="style26"></asp:RequiredFieldValidator>
&nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextBoxCity" 
                                                Display="Dynamic" ErrorMessage="City - Required;" CssClass="style26"></asp:RequiredFieldValidator>
&nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="TextBoxZip" 
                                                Display="Dynamic" ErrorMessage="Zip - Required;" CssClass="style26"></asp:RequiredFieldValidator>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="TextBoxPurchaseDate" 
                                                Display="Dynamic" ErrorMessage="Purchase Date - Required;" 
                                                CssClass="style26"></asp:RequiredFieldValidator>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidatorDealerName" 
                                                runat="server" ControlToValidate="TextBoxDealerName" 
                                                Display="Dynamic" ErrorMessage="Dealer/Website Name - Required;" 
                                                CssClass="style26"></asp:RequiredFieldValidator>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidatorDealerCity" 
                                                runat="server" ControlToValidate="TextBoxDealerCity" 
                                                Display="Dynamic" ErrorMessage="Dealer City - Required;" 
                                                CssClass="style26"></asp:RequiredFieldValidator>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidatorDealerState" 
                                                runat="server" ControlToValidate="TextBoxDealerState" 
                                                Display="Dynamic" ErrorMessage="Dealer State - Required;" 
                                                CssClass="style26"></asp:RequiredFieldValidator>
&nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidatorDealerState0" 
                                                runat="server" ControlToValidate="RadioButtonListOnline" 
                                                Display="Dynamic" ErrorMessage="Purchase Type - Required;" 
                                                CssClass="style26"></asp:RequiredFieldValidator>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidatorDealerState1" 
                                                runat="server" ControlToValidate="RadioButtonListInstallation" 
                                                Display="Dynamic" ErrorMessage="Installation Type - Required;" 
                                                CssClass="style26"></asp:RequiredFieldValidator>
                                            <asp:Label ID="LabelError" runat="server" 
                                                style="font-size: 8pt; color: #FF0000"></asp:Label>
                                        </td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                        <tr>
                            <td style="text-align: left" class="style26">
                                &nbsp;</td>
                            <td>
                    <asp:Button ID="ButtonContinue" runat="server" Text="Submit" 
                        onclick="ButtonContinue_Click" />
                            </td>
                            <td class="style26">
                                &nbsp;</td>
                        </tr>
                    </table>
                </td>
            </tr>
        </table>
    </center>
</asp:Content>


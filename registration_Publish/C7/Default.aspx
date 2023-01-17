<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="Default" MaintainScrollPositionOnPostback="true" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="css/foundation.css">
    <link rel="stylesheet" href="css/app.css">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <style type="text/css">
        .style2
        {
            font-size: 8pt;
        }
        .style3
        {
            font-size: 8pt;
            color: #FFFFFF;
        }
        .style4
        {
            color: #FFFFFF;
        }
    </style>
</head>
<body>

<br/>
    <form id="form1" runat="server">
        <ajaxtoolkit:toolkitscriptmanager ID="ToolkitScriptManager1" runat="server">
        </ajaxtoolkit:toolkitscriptmanager>    
    <div class="grid-container">

    

      <div class="grid-x grid-padding-x">
       <div class="large-8 medium-8 cell">

       <div class="row">
            <div class="eight columns text-center"><br />
                <img src="images/C7.png" />
            </div>
          </div>

          <br />
         

          <div class="callout">
            
            <div class="row">
                <div class="eight columns text-center"><br />
                 <h4>Product Registration</h4>
                 <p>Complete the form to access your product's Birth Certificate(s).</p>
                 <hr />
                </div>
            </div>
            

            <div class="grid-x grid-padding-x">
            <div class="large-8 medium-8 cell"> 
                    <asp:Label ID="Label1" runat="server" style="color: #000000; font-family: Verdana; font-size: 10pt; font-weight: 700;" Text="Name"></asp:Label>
                    <asp:Label ID="Label2" runat="server" style="color: #FF0000; font-family: Verdana; font-size: 10pt; font-weight: 700;" Text=" *"></asp:Label>
                </div>  
            </div>  
            <div class="grid-x grid-padding-x">  
                <div class="large-6 medium-6 small-6 cell">  
                    <asp:TextBox ID="TextBoxFirstName" runat="server" style="font-family: Verdana" onfocus="if(this.value==this.defaultValue) this.value='';" 
                                onBlur="javascript:if(this.value==''){this.value=this.defaultValue}">First Name</asp:TextBox>
            </div>
            <div class="large-6 medium-6 small-6 cell">  
                    <asp:TextBox ID="TextBoxLastName" runat="server" style="font-family: Verdana" onfocus="if(this.value==this.defaultValue) this.value='';" 
                                onBlur="javascript:if(this.value==''){this.value=this.defaultValue}">Last Name</asp:TextBox>
                </div>  
            </div>
            
            <br />
            <div class="grid-x grid-padding-x">
            <div class="large-8 medium-8 cell"> 
                    <asp:Label ID="Label3" runat="server" style="color: #000000; font-family: Verdana; font-size: 10pt; font-weight: 700;" Text="Address"></asp:Label>
                    <asp:Label ID="Label4" runat="server" style="color: #FF0000; font-family: Verdana; font-size: 10pt; font-weight: 700;" Text=" *"></asp:Label>
                </div>  
            </div>  
            
            <div class="grid-x grid-padding-x">  
                <div class="large-12 medium-8 cell">  
                    <asp:TextBox ID="TextBoxAddress" runat="server" style="font-family: Verdana" onfocus="if(this.value==this.defaultValue) this.value='';" 
                                onBlur="javascript:if(this.value==''){this.value=this.defaultValue}">Street Address</asp:TextBox>
                </div>
            </div>
            
            <div class="grid-x grid-padding-x">  
                <div class="large-12 medium-8 cell">  
                    <asp:TextBox ID="TextBoxAddress2" runat="server" style="font-family: Verdana" onfocus="if(this.value==this.defaultValue) this.value='';" 
                                onBlur="javascript:if(this.value==''){this.value=this.defaultValue}">Street Address Line 2</asp:TextBox>
                </div>
            </div>
            
            <div class="grid-x grid-padding-x">  
                <div class="large-6 medium-8 cell">  
                    <asp:TextBox ID="TextBoxAddressCity" runat="server" 
                                        style="font-family: Verdana" onfocus="if(this.value==this.defaultValue) this.value='';" 
                                onBlur="javascript:if(this.value==''){this.value=this.defaultValue}">City</asp:TextBox>
                </div>
            
                <div class="large-6 medium-8 cell">  
                    <asp:TextBox ID="TextBoxState" runat="server" style="font-family: Verdana" onfocus="if(this.value==this.defaultValue) this.value='';" 
                                onBlur="javascript:if(this.value==''){this.value=this.defaultValue}">State / Province</asp:TextBox>
                </div>
            </div>

            <div class="grid-x grid-padding-x">  
                <div class="large-6 medium-8 cell">  
                    <asp:TextBox ID="TextBoxAddressZip" runat="server" style="font-family: Verdana" onfocus="if(this.value==this.defaultValue) this.value='';" 
                                onBlur="javascript:if(this.value==''){this.value=this.defaultValue}">Postal / Zip Code</asp:TextBox>
                </div>
            
                <div class="large-6 medium-8 cell">  
                    <asp:DropDownList ID="DropDownListCountry" runat="server" 
                                        style="font-family: Verdana">
                                        <asp:ListItem>Please Select Country . . .</asp:ListItem>
                      <asp:ListItem value="United States"> United States </asp:ListItem>
                      <asp:ListItem value="Afghanistan"> Afghanistan </asp:ListItem>
                      <asp:ListItem value="Albania"> Albania </asp:ListItem>
                      <asp:ListItem value="Algeria"> Algeria </asp:ListItem>
                      <asp:ListItem value="American Samoa"> American Samoa </asp:ListItem>
                      <asp:ListItem value="Andorra"> Andorra </asp:ListItem>
                      <asp:ListItem value="Angola"> Angola </asp:ListItem>
                      <asp:ListItem value="Anguilla"> Anguilla </asp:ListItem>
                      <asp:ListItem value="Antigua and Barbuda"> Antigua and Barbuda </asp:ListItem>
                      <asp:ListItem value="Argentina"> Argentina </asp:ListItem>
                      <asp:ListItem value="Armenia"> Armenia </asp:ListItem>
                      <asp:ListItem value="Aruba"> Aruba </asp:ListItem>
                      <asp:ListItem value="Australia"> Australia </asp:ListItem>
                      <asp:ListItem value="Austria"> Austria </asp:ListItem>
                      <asp:ListItem value="Azerbaijan"> Azerbaijan </asp:ListItem>
                      <asp:ListItem value="The Bahamas"> The Bahamas </asp:ListItem>
                      <asp:ListItem value="Bahrain"> Bahrain </asp:ListItem>
                      <asp:ListItem value="Bangladesh"> Bangladesh </asp:ListItem>
                      <asp:ListItem value="Barbados"> Barbados </asp:ListItem>
                      <asp:ListItem value="Belarus"> Belarus </asp:ListItem>
                      <asp:ListItem value="Belgium"> Belgium </asp:ListItem>
                      <asp:ListItem value="Belize"> Belize </asp:ListItem>
                      <asp:ListItem value="Benin"> Benin </asp:ListItem>
                      <asp:ListItem value="Bermuda"> Bermuda </asp:ListItem>
                      <asp:ListItem value="Bhutan"> Bhutan </asp:ListItem>
                      <asp:ListItem value="Bolivia"> Bolivia </asp:ListItem>
                      <asp:ListItem value="Bosnia and Herzegovina"> Bosnia and Herzegovina </asp:ListItem>
                      <asp:ListItem value="Botswana"> Botswana </asp:ListItem>
                      <asp:ListItem value="Brazil"> Brazil </asp:ListItem>
                      <asp:ListItem value="Brunei"> Brunei </asp:ListItem>
                      <asp:ListItem value="Bulgaria"> Bulgaria </asp:ListItem>
                      <asp:ListItem value="Burkina Faso"> Burkina Faso </asp:ListItem>
                      <asp:ListItem value="Burundi"> Burundi </asp:ListItem>
                      <asp:ListItem value="Cambodia"> Cambodia </asp:ListItem>
                      <asp:ListItem value="Cameroon"> Cameroon </asp:ListItem>
                      <asp:ListItem value="Canada"> Canada </asp:ListItem>
                      <asp:ListItem value="Cape Verde"> Cape Verde </asp:ListItem>
                      <asp:ListItem value="Cayman Islands"> Cayman Islands </asp:ListItem>
                      <asp:ListItem value="Central African Republic"> Central African Republic </asp:ListItem>
                      <asp:ListItem value="Chad"> Chad </asp:ListItem>
                      <asp:ListItem value="Chile"> Chile </asp:ListItem>
                      <asp:ListItem value="China"> China </asp:ListItem>
                      <asp:ListItem value="Christmas Island"> Christmas Island </asp:ListItem>
                      <asp:ListItem value="Cocos (Keeling) Islands"> Cocos (Keeling) Islands </asp:ListItem>
                      <asp:ListItem value="Colombia"> Colombia </asp:ListItem>
                      <asp:ListItem value="Comoros"> Comoros </asp:ListItem>
                      <asp:ListItem value="Congo"> Congo </asp:ListItem>
                      <asp:ListItem value="Cook Islands"> Cook Islands </asp:ListItem>
                      <asp:ListItem value="Costa Rica"> Costa Rica </asp:ListItem>
                      <asp:ListItem value="Cote d&#x27;Ivoire"> Cote d&#x27;Ivoire </asp:ListItem>
                      <asp:ListItem value="Croatia"> Croatia </asp:ListItem>
                      <asp:ListItem value="Cuba"> Cuba </asp:ListItem>
                      <asp:ListItem value="Cyprus"> Cyprus </asp:ListItem>
                      <asp:ListItem value="Czech Republic"> Czech Republic </asp:ListItem>
                      <asp:ListItem value="Democratic Republic of the Congo"> Democratic Republic of the Congo </asp:ListItem>
                      <asp:ListItem value="Denmark"> Denmark </asp:ListItem>
                      <asp:ListItem value="Djibouti"> Djibouti </asp:ListItem>
                      <asp:ListItem value="Dominica"> Dominica </asp:ListItem>
                      <asp:ListItem value="Dominican Republic"> Dominican Republic </asp:ListItem>
                      <asp:ListItem value="Ecuador"> Ecuador </asp:ListItem>
                      <asp:ListItem value="Egypt"> Egypt </asp:ListItem>
                      <asp:ListItem value="El Salvador"> El Salvador </asp:ListItem>
                      <asp:ListItem value="Equatorial Guinea"> Equatorial Guinea </asp:ListItem>
                      <asp:ListItem value="Eritrea"> Eritrea </asp:ListItem>
                      <asp:ListItem value="Estonia"> Estonia </asp:ListItem>
                      <asp:ListItem value="Ethiopia"> Ethiopia </asp:ListItem>
                      <asp:ListItem value="Falkland Islands"> Falkland Islands </asp:ListItem>
                      <asp:ListItem value="Faroe Islands"> Faroe Islands </asp:ListItem>
                      <asp:ListItem value="Fiji"> Fiji </asp:ListItem>
                      <asp:ListItem value="Finland"> Finland </asp:ListItem>
                      <asp:ListItem value="France"> France </asp:ListItem>
                      <asp:ListItem value="French Polynesia"> French Polynesia </asp:ListItem>
                      <asp:ListItem value="Gabon"> Gabon </asp:ListItem>
                      <asp:ListItem value="The Gambia"> The Gambia </asp:ListItem>
                      <asp:ListItem value="Georgia"> Georgia </asp:ListItem>
                      <asp:ListItem value="Germany"> Germany </asp:ListItem>
                      <asp:ListItem value="Ghana"> Ghana </asp:ListItem>
                      <asp:ListItem value="Gibraltar"> Gibraltar </asp:ListItem>
                      <asp:ListItem value="Greece"> Greece </asp:ListItem>
                      <asp:ListItem value="Greenland"> Greenland </asp:ListItem>
                      <asp:ListItem value="Grenada"> Grenada </asp:ListItem>
                      <asp:ListItem value="Guadeloupe"> Guadeloupe </asp:ListItem>
                      <asp:ListItem value="Guam"> Guam </asp:ListItem>
                      <asp:ListItem value="Guatemala"> Guatemala </asp:ListItem>
                      <asp:ListItem value="Guernsey"> Guernsey </asp:ListItem>
                      <asp:ListItem value="Guinea"> Guinea </asp:ListItem>
                      <asp:ListItem value="Guinea-Bissau"> Guinea-Bissau </asp:ListItem>
                      <asp:ListItem value="Guyana"> Guyana </asp:ListItem>
                      <asp:ListItem value="Haiti"> Haiti </asp:ListItem>
                      <asp:ListItem value="Honduras"> Honduras </asp:ListItem>
                      <asp:ListItem value="Hong Kong"> Hong Kong </asp:ListItem>
                      <asp:ListItem value="Hungary"> Hungary </asp:ListItem>
                      <asp:ListItem value="Iceland"> Iceland </asp:ListItem>
                      <asp:ListItem value="India"> India </asp:ListItem>
                      <asp:ListItem value="Indonesia"> Indonesia </asp:ListItem>
                      <asp:ListItem value="Iran"> Iran </asp:ListItem>
                      <asp:ListItem value="Iraq"> Iraq </asp:ListItem>
                      <asp:ListItem value="Ireland"> Ireland </asp:ListItem>
                      <asp:ListItem value="Israel"> Israel </asp:ListItem>
                      <asp:ListItem value="Italy"> Italy </asp:ListItem>
                      <asp:ListItem value="Jamaica"> Jamaica </asp:ListItem>
                      <asp:ListItem value="Japan"> Japan </asp:ListItem>
                      <asp:ListItem value="Jersey"> Jersey </asp:ListItem>
                      <asp:ListItem value="Jordan"> Jordan </asp:ListItem>
                      <asp:ListItem value="Kazakhstan"> Kazakhstan </asp:ListItem>
                      <asp:ListItem value="Kenya"> Kenya </asp:ListItem>
                      <asp:ListItem value="Kiribati"> Kiribati </asp:ListItem>
                      <asp:ListItem value="North Korea"> North Korea </asp:ListItem>
                      <asp:ListItem value="South Korea"> South Korea </asp:ListItem>
                      <asp:ListItem value="Kosovo"> Kosovo </asp:ListItem>
                      <asp:ListItem value="Kuwait"> Kuwait </asp:ListItem>
                      <asp:ListItem value="Kyrgyzstan"> Kyrgyzstan </asp:ListItem>
                      <asp:ListItem value="Laos"> Laos </asp:ListItem>
                      <asp:ListItem value="Latvia"> Latvia </asp:ListItem>
                      <asp:ListItem value="Lebanon"> Lebanon </asp:ListItem>
                      <asp:ListItem value="Lesotho"> Lesotho </asp:ListItem>
                      <asp:ListItem value="Liberia"> Liberia </asp:ListItem>
                      <asp:ListItem value="Libya"> Libya </asp:ListItem>
                      <asp:ListItem value="Liechtenstein"> Liechtenstein </asp:ListItem>
                      <asp:ListItem value="Lithuania"> Lithuania </asp:ListItem>
                      <asp:ListItem value="Luxembourg"> Luxembourg </asp:ListItem>
                      <asp:ListItem value="Macau"> Macau </asp:ListItem>
                      <asp:ListItem value="Macedonia"> Macedonia </asp:ListItem>
                      <asp:ListItem value="Madagascar"> Madagascar </asp:ListItem>
                      <asp:ListItem value="Malawi"> Malawi </asp:ListItem>
                      <asp:ListItem value="Malaysia"> Malaysia </asp:ListItem>
                      <asp:ListItem value="Maldives"> Maldives </asp:ListItem>
                      <asp:ListItem value="Mali"> Mali </asp:ListItem>
                      <asp:ListItem value="Malta"> Malta </asp:ListItem>
                      <asp:ListItem value="Marshall Islands"> Marshall Islands </asp:ListItem>
                      <asp:ListItem value="Martinique"> Martinique </asp:ListItem>
                      <asp:ListItem value="Mauritania"> Mauritania </asp:ListItem>
                      <asp:ListItem value="Mauritius"> Mauritius </asp:ListItem>
                      <asp:ListItem value="Mayotte"> Mayotte </asp:ListItem>
                      <asp:ListItem value="Mexico"> Mexico </asp:ListItem>
                      <asp:ListItem value="Micronesia"> Micronesia </asp:ListItem>
                      <asp:ListItem value="Moldova"> Moldova </asp:ListItem>
                      <asp:ListItem value="Monaco"> Monaco </asp:ListItem>
                      <asp:ListItem value="Mongolia"> Mongolia </asp:ListItem>
                      <asp:ListItem value="Montenegro"> Montenegro </asp:ListItem>
                      <asp:ListItem value="Montserrat"> Montserrat </asp:ListItem>
                      <asp:ListItem value="Morocco"> Morocco </asp:ListItem>
                      <asp:ListItem value="Mozambique"> Mozambique </asp:ListItem>
                      <asp:ListItem value="Myanmar"> Myanmar </asp:ListItem>
                      <asp:ListItem value="Nagorno-Karabakh"> Nagorno-Karabakh </asp:ListItem>
                      <asp:ListItem value="Namibia"> Namibia </asp:ListItem>
                      <asp:ListItem value="Nauru"> Nauru </asp:ListItem>
                      <asp:ListItem value="Nepal"> Nepal </asp:ListItem>
                      <asp:ListItem value="Netherlands"> Netherlands </asp:ListItem>
                      <asp:ListItem value="Netherlands Antilles"> Netherlands Antilles </asp:ListItem>
                      <asp:ListItem value="New Caledonia"> New Caledonia </asp:ListItem>
                      <asp:ListItem value="New Zealand"> New Zealand </asp:ListItem>
                      <asp:ListItem value="Nicaragua"> Nicaragua </asp:ListItem>
                      <asp:ListItem value="Niger"> Niger </asp:ListItem>
                      <asp:ListItem value="Nigeria"> Nigeria </asp:ListItem>
                      <asp:ListItem value="Niue"> Niue </asp:ListItem>
                      <asp:ListItem value="Norfolk Island"> Norfolk Island </asp:ListItem>
                      <asp:ListItem value="Turkish Republic of Northern Cyprus"> Turkish Republic of Northern Cyprus </asp:ListItem>
                      <asp:ListItem value="Northern Mariana"> Northern Mariana </asp:ListItem>
                      <asp:ListItem value="Norway"> Norway </asp:ListItem>
                      <asp:ListItem value="Oman"> Oman </asp:ListItem>
                      <asp:ListItem value="Pakistan"> Pakistan </asp:ListItem>
                      <asp:ListItem value="Palau"> Palau </asp:ListItem>
                      <asp:ListItem value="Palestine"> Palestine </asp:ListItem>
                      <asp:ListItem value="Panama"> Panama </asp:ListItem>
                      <asp:ListItem value="Papua New Guinea"> Papua New Guinea </asp:ListItem>
                      <asp:ListItem value="Paraguay"> Paraguay </asp:ListItem>
                      <asp:ListItem value="Peru"> Peru </asp:ListItem>
                      <asp:ListItem value="Philippines"> Philippines </asp:ListItem>
                      <asp:ListItem value="Pitcairn Islands"> Pitcairn Islands </asp:ListItem>
                      <asp:ListItem value="Poland"> Poland </asp:ListItem>
                      <asp:ListItem value="Portugal"> Portugal </asp:ListItem>
                      <asp:ListItem value="Puerto Rico"> Puerto Rico </asp:ListItem>
                      <asp:ListItem value="Qatar"> Qatar </asp:ListItem>
                      <asp:ListItem value="Republic of the Congo"> Republic of the Congo </asp:ListItem>
                      <asp:ListItem value="Romania"> Romania </asp:ListItem>
                      <asp:ListItem value="Russia"> Russia </asp:ListItem>
                      <asp:ListItem value="Rwanda"> Rwanda </asp:ListItem>
                      <asp:ListItem value="Saint Barthelemy"> Saint Barthelemy </asp:ListItem>
                      <asp:ListItem value="Saint Helena"> Saint Helena </asp:ListItem>
                      <asp:ListItem value="Saint Kitts and Nevis"> Saint Kitts and Nevis </asp:ListItem>
                      <asp:ListItem value="Saint Lucia"> Saint Lucia </asp:ListItem>
                      <asp:ListItem value="Saint Martin"> Saint Martin </asp:ListItem>
                      <asp:ListItem value="Saint Pierre and Miquelon"> Saint Pierre and Miquelon </asp:ListItem>
                      <asp:ListItem value="Saint Vincent and the Grenadines"> Saint Vincent and the Grenadines </asp:ListItem>
                      <asp:ListItem value="Samoa"> Samoa </asp:ListItem>
                      <asp:ListItem value="San Marino"> San Marino </asp:ListItem>
                      <asp:ListItem value="Sao Tome and Principe"> Sao Tome and Principe </asp:ListItem>
                      <asp:ListItem value="Saudi Arabia"> Saudi Arabia </asp:ListItem>
                      <asp:ListItem value="Senegal"> Senegal </asp:ListItem>
                      <asp:ListItem value="Serbia"> Serbia </asp:ListItem>
                      <asp:ListItem value="Seychelles"> Seychelles </asp:ListItem>
                      <asp:ListItem value="Sierra Leone"> Sierra Leone </asp:ListItem>
                      <asp:ListItem value="Singapore"> Singapore </asp:ListItem>
                      <asp:ListItem value="Slovakia"> Slovakia </asp:ListItem>
                      <asp:ListItem value="Slovenia"> Slovenia </asp:ListItem>
                      <asp:ListItem value="Solomon Islands"> Solomon Islands </asp:ListItem>
                      <asp:ListItem value="Somalia"> Somalia </asp:ListItem>
                      <asp:ListItem value="Somaliland"> Somaliland </asp:ListItem>
                      <asp:ListItem value="South Africa"> South Africa </asp:ListItem>
                      <asp:ListItem value="South Ossetia"> South Ossetia </asp:ListItem>
                      <asp:ListItem value="South Sudan"> South Sudan </asp:ListItem>
                      <asp:ListItem value="Spain"> Spain </asp:ListItem>
                      <asp:ListItem value="Sri Lanka"> Sri Lanka </asp:ListItem>
                      <asp:ListItem value="Sudan"> Sudan </asp:ListItem>
                      <asp:ListItem value="Suriname"> Suriname </asp:ListItem>
                      <asp:ListItem value="Svalbard"> Svalbard </asp:ListItem>
                      <asp:ListItem value="Swaziland"> Swaziland </asp:ListItem>
                      <asp:ListItem value="Sweden"> Sweden </asp:ListItem>
                      <asp:ListItem value="Switzerland"> Switzerland </asp:ListItem>
                      <asp:ListItem value="Syria"> Syria </asp:ListItem>
                      <asp:ListItem value="Taiwan"> Taiwan </asp:ListItem>
                      <asp:ListItem value="Tajikistan"> Tajikistan </asp:ListItem>
                      <asp:ListItem value="Tanzania"> Tanzania </asp:ListItem>
                      <asp:ListItem value="Thailand"> Thailand </asp:ListItem>
                      <asp:ListItem value="Timor-Leste"> Timor-Leste </asp:ListItem>
                      <asp:ListItem value="Togo"> Togo </asp:ListItem>
                      <asp:ListItem value="Tokelau"> Tokelau </asp:ListItem>
                      <asp:ListItem value="Tonga"> Tonga </asp:ListItem>
                      <asp:ListItem value="Transnistria Pridnestrovie"> Transnistria Pridnestrovie </asp:ListItem>
                      <asp:ListItem value="Trinidad and Tobago"> Trinidad and Tobago </asp:ListItem>
                      <asp:ListItem value="Tristan da Cunha"> Tristan da Cunha </asp:ListItem>
                      <asp:ListItem value="Tunisia"> Tunisia </asp:ListItem>
                      <asp:ListItem value="Turkey"> Turkey </asp:ListItem>
                      <asp:ListItem value="Turkmenistan"> Turkmenistan </asp:ListItem>
                      <asp:ListItem value="Turks and Caicos Islands"> Turks and Caicos Islands </asp:ListItem>
                      <asp:ListItem value="Tuvalu"> Tuvalu </asp:ListItem>
                      <asp:ListItem value="Uganda"> Uganda </asp:ListItem>
                      <asp:ListItem value="Ukraine"> Ukraine </asp:ListItem>
                      <asp:ListItem value="United Arab Emirates"> United Arab Emirates </asp:ListItem>
                      <asp:ListItem value="United Kingdom"> United Kingdom </asp:ListItem>
                      <asp:ListItem value="Uruguay"> Uruguay </asp:ListItem>
                      <asp:ListItem value="Uzbekistan"> Uzbekistan </asp:ListItem>
                      <asp:ListItem value="Vanuatu"> Vanuatu </asp:ListItem>
                      <asp:ListItem value="Vatican City"> Vatican City </asp:ListItem>
                      <asp:ListItem value="Venezuela"> Venezuela </asp:ListItem>
                      <asp:ListItem value="Vietnam"> Vietnam </asp:ListItem>
                      <asp:ListItem value="British Virgin Islands"> British Virgin Islands </asp:ListItem>
                      <asp:ListItem value="Isle of Man"> Isle of Man </asp:ListItem>
                      <asp:ListItem value="US Virgin Islands"> US Virgin Islands </asp:ListItem>
                      <asp:ListItem value="Wallis and Futuna"> Wallis and Futuna </asp:ListItem>
                      <asp:ListItem value="Western Sahara"> Western Sahara </asp:ListItem>
                      <asp:ListItem value="Yemen"> Yemen </asp:ListItem>
                      <asp:ListItem value="Zambia"> Zambia </asp:ListItem>
                      <asp:ListItem value="Zimbabwe"> Zimbabwe </asp:ListItem>
                      <asp:ListItem value="other"> Other </asp:ListItem>
                                    </asp:DropDownList>
                </div>
            </div>
            
            <br />
            <div class="grid-x grid-padding-x">
            <div class="large-8 medium-8 cell"> 
                    <asp:Label ID="Label5" runat="server" style="color: #000000; font-family: Verdana; font-size: 10pt; font-weight: 700;" Text="Email Address"></asp:Label>
                    <asp:Label ID="Label6" runat="server" style="color: #FF0000; font-family: Verdana; font-size: 10pt; font-weight: 700;" Text=" *"></asp:Label>
                </div>  
            </div>  
            <div class="grid-x grid-padding-x">  
                <div class="large-12 medium-8 cell">  
                    <asp:TextBox ID="TextBoxEmail" runat="server" style="font-family: Verdana" onfocus="if(this.value==this.defaultValue) this.value='';" 
                                onBlur="javascript:if(this.value==''){this.value=this.defaultValue}" >Email</asp:TextBox>
            </div>
            </div>
            <div class="grid-x grid-padding-x">
            <div class="large-12 medium-8 cell">  
                    <asp:TextBox ID="TextBoxEmailConfirm" runat="server" 
                                        style="font-family: Verdana" onfocus="if(this.value==this.defaultValue) this.value='';" 
                                onBlur="javascript:if(this.value==''){this.value=this.defaultValue}">Confirm Email</asp:TextBox>
                </div>  
            </div>
            
            <br />
            <div class="grid-x grid-padding-x">
            <div class="large-8 medium-8 cell"> 
                    <asp:Label ID="Label7" runat="server" style="color: #000000; font-family: Verdana; font-size: 10pt; font-weight: 700;" Text="How many C7 products are you registering today?"></asp:Label>
                    <asp:Label ID="Label8" runat="server" style="color: #FF0000; font-family: Verdana; font-size: 10pt; font-weight: 700;" Text=" *"></asp:Label>
                </div>  
            </div>  
            
            <div class="grid-x grid-padding-x">
            <div class="large-4 medium-4 small-4 cell">  
                    <asp:DropDownList ID="DropDownListQty" runat="server" AutoPostBack="True" 
                                        onselectedindexchanged="DropDownList1_SelectedIndexChanged">
                                        <asp:ListItem>0</asp:ListItem>
                                        <asp:ListItem>1</asp:ListItem>
                                        <asp:ListItem>2</asp:ListItem>
                                        <asp:ListItem>3</asp:ListItem>
                                        <asp:ListItem>4</asp:ListItem>
                                        <asp:ListItem>5</asp:ListItem>
                                        <asp:ListItem>6</asp:ListItem>
                                        <asp:ListItem>7</asp:ListItem>
                                        <asp:ListItem>8</asp:ListItem>
                                        <asp:ListItem>9</asp:ListItem>
                                        <asp:ListItem>10</asp:ListItem>
                                    </asp:DropDownList>
                </div>  
            </div>
            <div class="grid-x grid-padding-x">
            <div class="large-8 medium-8 cell"> 
                    <asp:Label ID="Label9" runat="server" style="color: #000000; font-family: Verdana; font-size: 8pt; " Text="Maximum 10 per submission"></asp:Label>
                </div>  
            </div>  
            
            <br />

            <div class="grid-x grid-padding-x">
                <div class="large-12 medium-8 cell"> 
                    
                    <asp:Panel ID="Panel1" runat="server" Visible="False">
                        <hr />
                    
                        <div class="grid-x grid-padding-x">
                            <div class="large-8 medium-8 cell"> 
                            <asp:Label ID="Label10" runat="server" style="color: #000000; font-family: Verdana; font-size: 10pt; font-weight: 700;" Text="Model 1"></asp:Label>
                            <asp:Label ID="Label11" runat="server" style="color: #FF0000; font-family: Verdana; font-size: 10pt; font-weight: 700;" Text=" *"></asp:Label>
                            </div>  
                        </div>  
                    
                        <div class="grid-x grid-padding-x">  
                            <div class="large-12 medium-12 cell">  
                                <asp:DropDownList ID="DropDownListModel1" runat="server" DataSourceID="ObjectDataSource1" DataTextField="PART_NUMBER" 
                                        DataValueField="SKU" style="font-family: Verdana"></asp:DropDownList>
                                <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="SelectC7" TypeName="RSBusinessObject"></asp:ObjectDataSource>
                            </div>
                        </div>

                        <div class="grid-x grid-padding-x">
                            <div class="large-8 medium-8 cell"> 
                            <asp:Label ID="Label12" runat="server" style="color: #000000; font-family: Verdana; font-size: 10pt; font-weight: 700;" Text="Serial Number - 1"></asp:Label>
                            <asp:Label ID="Label13" runat="server" style="color: #FF0000; font-family: Verdana; font-size: 10pt; font-weight: 700;" Text=" *"></asp:Label>
                            </div>  
                        </div>  
                    
                        <div class="grid-x grid-padding-x">  
                            <div class="large-12 medium-12 cell">  
                                <asp:TextBox ID="TextBoxSerial1" runat="server" onBlur="javascript:if(this.value==''){this.value=this.defaultValue}" onfocus="if(this.value==this.defaultValue) this.value='';" style="font-family: Verdana" >Serial Number</asp:TextBox>
                            </div>
                        </div>

                        <div class="grid-x grid-padding-x">
                            <div class="large-8 medium-8 cell"> 
                            <asp:Label ID="Label14" runat="server" style="color: #000000; font-family: Verdana; font-size: 10pt; font-weight: 700;" Text="Date of Purchase - 1"></asp:Label>
                            <asp:Label ID="Label15" runat="server" style="color: #FF0000; font-family: Verdana; font-size: 10pt; font-weight: 700;" Text=" *"></asp:Label>
                            </div>  
                        </div>  
                    
                        <div class="grid-x grid-padding-x">  
                            <div class="large-12 medium-12 cell">  
                                <asp:TextBox ID="TextBoxPurchaseDate1" runat="server" CssClass="style31"></asp:TextBox>
                                <ajaxtoolkit:calendarextender ID="CalendarExtenderEntryDate1" runat="server" CssClass="cal_Theme1" PopupButtonID="TextBoxPurchaseDate1" TargetControlID="TextBoxPurchaseDate1"></ajaxtoolkit:calendarextender>
                                <ajaxtoolkit:maskededitextender ID="EntryDate1" runat="server" 
                                     CultureAMPMPlaceholder="" CultureCurrencySymbolPlaceholder="" 
                                     CultureDateFormat="" CultureDatePlaceholder="" CultureDecimalPlaceholder="" 
                                     CultureThousandsPlaceholder="" CultureTimePlaceholder="" Enabled="True" 
                                     Mask="99/99/9999" MaskType="Date" TargetControlID="TextBoxPurchaseDate1">
                                </ajaxtoolkit:maskededitextender>
                            </div>
                        </div>

                    </asp:Panel>
                </div>  
            </div>

            <div class="grid-x grid-padding-x">
                <div class="large-12 medium-8 cell">                     
                    <asp:Panel ID="Panel2" runat="server" Visible="False">
                        <hr />                    
                        <div class="grid-x grid-padding-x">
                            <div class="large-8 medium-8 cell"> 
                            <asp:Label ID="Label16" runat="server" style="color: #000000; font-family: Verdana; font-size: 10pt; font-weight: 700;" Text="Model 2"></asp:Label>
                            <asp:Label ID="Label17" runat="server" style="color: #FF0000; font-family: Verdana; font-size: 10pt; font-weight: 700;" Text=" *"></asp:Label>
                            </div>  
                        </div>                      
                        <div class="grid-x grid-padding-x">  
                            <div class="large-12 medium-12 cell">  
                                <asp:DropDownList ID="DropDownListModel2" runat="server" DataSourceID="ObjectDataSource2" DataTextField="PART_NUMBER" 
                                        DataValueField="SKU" style="font-family: Verdana"></asp:DropDownList>
                                <asp:ObjectDataSource ID="ObjectDataSource2" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="SelectC7" TypeName="RSBusinessObject"></asp:ObjectDataSource>
                            </div>
                        </div>
                        <div class="grid-x grid-padding-x">
                            <div class="large-8 medium-8 cell"> 
                            <asp:Label ID="Label18" runat="server" style="color: #000000; font-family: Verdana; font-size: 10pt; font-weight: 700;" Text="Serial Number - 2"></asp:Label>
                            <asp:Label ID="Label19" runat="server" style="color: #FF0000; font-family: Verdana; font-size: 10pt; font-weight: 700;" Text=" *"></asp:Label>
                            </div>  
                        </div>                      
                        <div class="grid-x grid-padding-x">  
                            <div class="large-12 medium-12 cell">  
                                <asp:TextBox ID="TextBoxSerial2" runat="server" onBlur="javascript:if(this.value==''){this.value=this.defaultValue}" onfocus="if(this.value==this.defaultValue) this.value='';" style="font-family: Verdana" >Serial Number</asp:TextBox>
                            </div>
                        </div>
                        <div class="grid-x grid-padding-x">
                            <div class="large-8 medium-8 cell"> 
                            <asp:Label ID="Label20" runat="server" style="color: #000000; font-family: Verdana; font-size: 10pt; font-weight: 700;" Text="Date of Purchase - 2"></asp:Label>
                            <asp:Label ID="Label21" runat="server" style="color: #FF0000; font-family: Verdana; font-size: 10pt; font-weight: 700;" Text=" *"></asp:Label>
                            </div>  
                        </div>                      
                        <div class="grid-x grid-padding-x">  
                            <div class="large-12 medium-12 cell">  
                                <asp:TextBox ID="TextBoxPurchaseDate2" runat="server" CssClass="style31"></asp:TextBox>
                                <ajaxtoolkit:calendarextender ID="CalendarExtenderEntryDate2" runat="server" CssClass="cal_Theme1" PopupButtonID="TextBoxPurchaseDate2" TargetControlID="TextBoxPurchaseDate2"></ajaxtoolkit:calendarextender>
                                <ajaxtoolkit:maskededitextender ID="EntryDate2" runat="server" 
                                     CultureAMPMPlaceholder="" CultureCurrencySymbolPlaceholder="" 
                                     CultureDateFormat="" CultureDatePlaceholder="" CultureDecimalPlaceholder="" 
                                     CultureThousandsPlaceholder="" CultureTimePlaceholder="" Enabled="True" 
                                     Mask="99/99/9999" MaskType="Date" TargetControlID="TextBoxPurchaseDate2">
                                </ajaxtoolkit:maskededitextender>
                            </div>
                        </div>
                    </asp:Panel>
                </div>  
            </div>

            <div class="grid-x grid-padding-x">
                <div class="large-12 medium-8 cell">                     
                    <asp:Panel ID="Panel3" runat="server" Visible="False">
                        <hr />                    
                        <div class="grid-x grid-padding-x">
                            <div class="large-8 medium-8 cell"> 
                            <asp:Label ID="Label22" runat="server" style="color: #000000; font-family: Verdana; font-size: 10pt; font-weight: 700;" Text="Model 3"></asp:Label>
                            <asp:Label ID="Label23" runat="server" style="color: #FF0000; font-family: Verdana; font-size: 10pt; font-weight: 700;" Text=" *"></asp:Label>
                            </div>  
                        </div>                      
                        <div class="grid-x grid-padding-x">  
                            <div class="large-12 medium-12 cell">  
                                <asp:DropDownList ID="DropDownListModel3" runat="server" DataSourceID="ObjectDataSource3" DataTextField="PART_NUMBER" 
                                        DataValueField="SKU" style="font-family: Verdana"></asp:DropDownList>
                                <asp:ObjectDataSource ID="ObjectDataSource3" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="SelectC7" TypeName="RSBusinessObject"></asp:ObjectDataSource>
                            </div>
                        </div>
                        <div class="grid-x grid-padding-x">
                            <div class="large-8 medium-8 cell"> 
                            <asp:Label ID="Label24" runat="server" style="color: #000000; font-family: Verdana; font-size: 10pt; font-weight: 700;" Text="Serial Number - 3"></asp:Label>
                            <asp:Label ID="Label25" runat="server" style="color: #FF0000; font-family: Verdana; font-size: 10pt; font-weight: 700;" Text=" *"></asp:Label>
                            </div>  
                        </div>                      
                        <div class="grid-x grid-padding-x">  
                            <div class="large-12 medium-12 cell">  
                                <asp:TextBox ID="TextBoxSerial3" runat="server" onBlur="javascript:if(this.value==''){this.value=this.defaultValue}" onfocus="if(this.value==this.defaultValue) this.value='';" style="font-family: Verdana" >Serial Number</asp:TextBox>
                            </div>
                        </div>
                        <div class="grid-x grid-padding-x">
                            <div class="large-8 medium-8 cell"> 
                            <asp:Label ID="Label26" runat="server" style="color: #000000; font-family: Verdana; font-size: 10pt; font-weight: 700;" Text="Date of Purchase - 3"></asp:Label>
                            <asp:Label ID="Label27" runat="server" style="color: #FF0000; font-family: Verdana; font-size: 10pt; font-weight: 700;" Text=" *"></asp:Label>
                            </div>  
                        </div>                      
                        <div class="grid-x grid-padding-x">  
                            <div class="large-12 medium-12 cell">  
                                <asp:TextBox ID="TextBoxPurchaseDate3" runat="server" CssClass="style31"></asp:TextBox>
                                <ajaxtoolkit:calendarextender ID="CalendarExtenderEntryDate3" runat="server" CssClass="cal_Theme1" PopupButtonID="TextBoxPurchaseDate3" TargetControlID="TextBoxPurchaseDate3"></ajaxtoolkit:calendarextender>
                                <ajaxtoolkit:maskededitextender ID="EntryDate3" runat="server" 
                                     CultureAMPMPlaceholder="" CultureCurrencySymbolPlaceholder="" 
                                     CultureDateFormat="" CultureDatePlaceholder="" CultureDecimalPlaceholder="" 
                                     CultureThousandsPlaceholder="" CultureTimePlaceholder="" Enabled="True" 
                                     Mask="99/99/9999" MaskType="Date" TargetControlID="TextBoxPurchaseDate3">
                                </ajaxtoolkit:maskededitextender>
                            </div>
                        </div>
                    </asp:Panel>
                </div>  
            </div>

            <div class="grid-x grid-padding-x">
                <div class="large-12 medium-8 cell">                     
                    <asp:Panel ID="Panel4" runat="server" Visible="False">
                        <hr />                    
                        <div class="grid-x grid-padding-x">
                            <div class="large-8 medium-8 cell"> 
                            <asp:Label ID="Label28" runat="server" style="color: #000000; font-family: Verdana; font-size: 10pt; font-weight: 700;" Text="Model 4"></asp:Label>
                            <asp:Label ID="Label29" runat="server" style="color: #FF0000; font-family: Verdana; font-size: 10pt; font-weight: 700;" Text=" *"></asp:Label>
                            </div>  
                        </div>                      
                        <div class="grid-x grid-padding-x">  
                            <div class="large-12 medium-12 cell">  
                                <asp:DropDownList ID="DropDownListModel4" runat="server" DataSourceID="ObjectDataSource4" DataTextField="PART_NUMBER" 
                                        DataValueField="SKU" style="font-family: Verdana"></asp:DropDownList>
                                <asp:ObjectDataSource ID="ObjectDataSource4" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="SelectC7" TypeName="RSBusinessObject"></asp:ObjectDataSource>
                            </div>
                        </div>
                        <div class="grid-x grid-padding-x">
                            <div class="large-8 medium-8 cell"> 
                            <asp:Label ID="Label30" runat="server" style="color: #000000; font-family: Verdana; font-size: 10pt; font-weight: 700;" Text="Serial Number - 4"></asp:Label>
                            <asp:Label ID="Label31" runat="server" style="color: #FF0000; font-family: Verdana; font-size: 10pt; font-weight: 700;" Text=" *"></asp:Label>
                            </div>  
                        </div>                      
                        <div class="grid-x grid-padding-x">  
                            <div class="large-12 medium-12 cell">  
                                <asp:TextBox ID="TextBoxSerial4" runat="server" onBlur="javascript:if(this.value==''){this.value=this.defaultValue}" onfocus="if(this.value==this.defaultValue) this.value='';" style="font-family: Verdana" >Serial Number</asp:TextBox>
                            </div>
                        </div>
                        <div class="grid-x grid-padding-x">
                            <div class="large-8 medium-8 cell"> 
                            <asp:Label ID="Label32" runat="server" style="color: #000000; font-family: Verdana; font-size: 10pt; font-weight: 700;" Text="Date of Purchase - 4"></asp:Label>
                            <asp:Label ID="Label33" runat="server" style="color: #FF0000; font-family: Verdana; font-size: 10pt; font-weight: 700;" Text=" *"></asp:Label>
                            </div>  
                        </div>                      
                        <div class="grid-x grid-padding-x">  
                            <div class="large-12 medium-12 cell">  
                                <asp:TextBox ID="TextBoxPurchaseDate4" runat="server" CssClass="style31"></asp:TextBox>
                                <ajaxtoolkit:calendarextender ID="CalendarExtenderEntryDate4" runat="server" CssClass="cal_Theme1" PopupButtonID="TextBoxPurchaseDate4" TargetControlID="TextBoxPurchaseDate4"></ajaxtoolkit:calendarextender>
                                <ajaxtoolkit:maskededitextender ID="EntryDate4" runat="server" 
                                     CultureAMPMPlaceholder="" CultureCurrencySymbolPlaceholder="" 
                                     CultureDateFormat="" CultureDatePlaceholder="" CultureDecimalPlaceholder="" 
                                     CultureThousandsPlaceholder="" CultureTimePlaceholder="" Enabled="True" 
                                     Mask="99/99/9999" MaskType="Date" TargetControlID="TextBoxPurchaseDate4">
                                </ajaxtoolkit:maskededitextender>
                            </div>
                        </div>
                    </asp:Panel>
                </div>  
            </div>

            <div class="grid-x grid-padding-x">
                <div class="large-12 medium-8 cell">                     
                    <asp:Panel ID="Panel5" runat="server" Visible="False">
                        <hr />                    
                        <div class="grid-x grid-padding-x">
                            <div class="large-8 medium-8 cell"> 
                            <asp:Label ID="Label34" runat="server" style="color: #000000; font-family: Verdana; font-size: 10pt; font-weight: 700;" Text="Model 5"></asp:Label>
                            <asp:Label ID="Label35" runat="server" style="color: #FF0000; font-family: Verdana; font-size: 10pt; font-weight: 700;" Text=" *"></asp:Label>
                            </div>  
                        </div>                      
                        <div class="grid-x grid-padding-x">  
                            <div class="large-12 medium-12 cell">  
                                <asp:DropDownList ID="DropDownListModel5" runat="server" DataSourceID="ObjectDataSource5" DataTextField="PART_NUMBER" 
                                        DataValueField="SKU" style="font-family: Verdana"></asp:DropDownList>
                                <asp:ObjectDataSource ID="ObjectDataSource5" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="SelectC7" TypeName="RSBusinessObject"></asp:ObjectDataSource>
                            </div>
                        </div>
                        <div class="grid-x grid-padding-x">
                            <div class="large-8 medium-8 cell"> 
                            <asp:Label ID="Label36" runat="server" style="color: #000000; font-family: Verdana; font-size: 10pt; font-weight: 700;" Text="Serial Number - 5"></asp:Label>
                            <asp:Label ID="Label37" runat="server" style="color: #FF0000; font-family: Verdana; font-size: 10pt; font-weight: 700;" Text=" *"></asp:Label>
                            </div>  
                        </div>                      
                        <div class="grid-x grid-padding-x">  
                            <div class="large-12 medium-12 cell">  
                                <asp:TextBox ID="TextBoxSerial5" runat="server" onBlur="javascript:if(this.value==''){this.value=this.defaultValue}" onfocus="if(this.value==this.defaultValue) this.value='';" style="font-family: Verdana" >Serial Number</asp:TextBox>
                            </div>
                        </div>
                        <div class="grid-x grid-padding-x">
                            <div class="large-8 medium-8 cell"> 
                            <asp:Label ID="Label38" runat="server" style="color: #000000; font-family: Verdana; font-size: 10pt; font-weight: 700;" Text="Date of Purchase - 5"></asp:Label>
                            <asp:Label ID="Label39" runat="server" style="color: #FF0000; font-family: Verdana; font-size: 10pt; font-weight: 700;" Text=" *"></asp:Label>
                            </div>  
                        </div>                      
                        <div class="grid-x grid-padding-x">  
                            <div class="large-12 medium-12 cell">  
                                <asp:TextBox ID="TextBoxPurchaseDate5" runat="server" CssClass="style31"></asp:TextBox>
                                <ajaxtoolkit:calendarextender ID="CalendarExtenderEntryDate5" runat="server" CssClass="cal_Theme1" PopupButtonID="TextBoxPurchaseDate5" TargetControlID="TextBoxPurchaseDate5"></ajaxtoolkit:calendarextender>
                                <ajaxtoolkit:maskededitextender ID="EntryDate5" runat="server" 
                                     CultureAMPMPlaceholder="" CultureCurrencySymbolPlaceholder="" 
                                     CultureDateFormat="" CultureDatePlaceholder="" CultureDecimalPlaceholder="" 
                                     CultureThousandsPlaceholder="" CultureTimePlaceholder="" Enabled="True" 
                                     Mask="99/99/9999" MaskType="Date" TargetControlID="TextBoxPurchaseDate5">
                                </ajaxtoolkit:maskededitextender>
                            </div>
                        </div>
                    </asp:Panel>
                </div>  
            </div>

            <div class="grid-x grid-padding-x">
                <div class="large-12 medium-8 cell">                     
                    <asp:Panel ID="Panel6" runat="server" Visible="False">
                        <hr />                    
                        <div class="grid-x grid-padding-x">
                            <div class="large-8 medium-8 cell"> 
                            <asp:Label ID="Label40" runat="server" style="color: #000000; font-family: Verdana; font-size: 10pt; font-weight: 700;" Text="Model 6"></asp:Label>
                            <asp:Label ID="Label41" runat="server" style="color: #FF0000; font-family: Verdana; font-size: 10pt; font-weight: 700;" Text=" *"></asp:Label>
                            </div>  
                        </div>                      
                        <div class="grid-x grid-padding-x">  
                            <div class="large-12 medium-12 cell">  
                                <asp:DropDownList ID="DropDownListModel6" runat="server" DataSourceID="ObjectDataSource6" DataTextField="PART_NUMBER" 
                                        DataValueField="SKU" style="font-family: Verdana"></asp:DropDownList>
                                <asp:ObjectDataSource ID="ObjectDataSource6" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="SelectC7" TypeName="RSBusinessObject"></asp:ObjectDataSource>
                            </div>
                        </div>
                        <div class="grid-x grid-padding-x">
                            <div class="large-8 medium-8 cell"> 
                            <asp:Label ID="Label42" runat="server" style="color: #000000; font-family: Verdana; font-size: 10pt; font-weight: 700;" Text="Serial Number - 6"></asp:Label>
                            <asp:Label ID="Label43" runat="server" style="color: #FF0000; font-family: Verdana; font-size: 10pt; font-weight: 700;" Text=" *"></asp:Label>
                            </div>  
                        </div>                      
                        <div class="grid-x grid-padding-x">  
                            <div class="large-12 medium-12 cell">  
                                <asp:TextBox ID="TextBoxSerial6" runat="server" onBlur="javascript:if(this.value==''){this.value=this.defaultValue}" onfocus="if(this.value==this.defaultValue) this.value='';" style="font-family: Verdana" >Serial Number</asp:TextBox>
                            </div>
                        </div>
                        <div class="grid-x grid-padding-x">
                            <div class="large-8 medium-8 cell"> 
                            <asp:Label ID="Label44" runat="server" style="color: #000000; font-family: Verdana; font-size: 10pt; font-weight: 700;" Text="Date of Purchase - 6"></asp:Label>
                            <asp:Label ID="Label45" runat="server" style="color: #FF0000; font-family: Verdana; font-size: 10pt; font-weight: 700;" Text=" *"></asp:Label>
                            </div>  
                        </div>                      
                        <div class="grid-x grid-padding-x">  
                            <div class="large-12 medium-12 cell">  
                                <asp:TextBox ID="TextBoxPurchaseDate6" runat="server" CssClass="style31"></asp:TextBox>
                                <ajaxtoolkit:calendarextender ID="CalendarExtenderEntryDate6" runat="server" CssClass="cal_Theme1" PopupButtonID="TextBoxPurchaseDate6" TargetControlID="TextBoxPurchaseDate6"></ajaxtoolkit:calendarextender>
                                <ajaxtoolkit:maskededitextender ID="EntryDate6" runat="server" 
                                     CultureAMPMPlaceholder="" CultureCurrencySymbolPlaceholder="" 
                                     CultureDateFormat="" CultureDatePlaceholder="" CultureDecimalPlaceholder="" 
                                     CultureThousandsPlaceholder="" CultureTimePlaceholder="" Enabled="True" 
                                     Mask="99/99/9999" MaskType="Date" TargetControlID="TextBoxPurchaseDate6">
                                </ajaxtoolkit:maskededitextender>
                            </div>
                        </div>
                    </asp:Panel>
                </div>  
            </div>
            
            <div class="grid-x grid-padding-x">
                <div class="large-12 medium-8 cell">                     
                    <asp:Panel ID="Panel7" runat="server" Visible="False">
                        <hr />                    
                        <div class="grid-x grid-padding-x">
                            <div class="large-8 medium-8 cell"> 
                            <asp:Label ID="Label46" runat="server" style="color: #000000; font-family: Verdana; font-size: 10pt; font-weight: 700;" Text="Model 7"></asp:Label>
                            <asp:Label ID="Label47" runat="server" style="color: #FF0000; font-family: Verdana; font-size: 10pt; font-weight: 700;" Text=" *"></asp:Label>
                            </div>  
                        </div>                      
                        <div class="grid-x grid-padding-x">  
                            <div class="large-12 medium-12 cell">  
                                <asp:DropDownList ID="DropDownListModel7" runat="server" DataSourceID="ObjectDataSource7" DataTextField="PART_NUMBER" 
                                        DataValueField="SKU" style="font-family: Verdana"></asp:DropDownList>
                                <asp:ObjectDataSource ID="ObjectDataSource7" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="SelectC7" TypeName="RSBusinessObject"></asp:ObjectDataSource>
                            </div>
                        </div>
                        <div class="grid-x grid-padding-x">
                            <div class="large-8 medium-8 cell"> 
                            <asp:Label ID="Label48" runat="server" style="color: #000000; font-family: Verdana; font-size: 10pt; font-weight: 700;" Text="Serial Number - 7"></asp:Label>
                            <asp:Label ID="Label49" runat="server" style="color: #FF0000; font-family: Verdana; font-size: 10pt; font-weight: 700;" Text=" *"></asp:Label>
                            </div>  
                        </div>                      
                        <div class="grid-x grid-padding-x">  
                            <div class="large-12 medium-12 cell">  
                                <asp:TextBox ID="TextBoxSerial7" runat="server" onBlur="javascript:if(this.value==''){this.value=this.defaultValue}" onfocus="if(this.value==this.defaultValue) this.value='';" style="font-family: Verdana" >Serial Number</asp:TextBox>
                            </div>
                        </div>
                        <div class="grid-x grid-padding-x">
                            <div class="large-8 medium-8 cell"> 
                            <asp:Label ID="Label50" runat="server" style="color: #000000; font-family: Verdana; font-size: 10pt; font-weight: 700;" Text="Date of Purchase - 7"></asp:Label>
                            <asp:Label ID="Label51" runat="server" style="color: #FF0000; font-family: Verdana; font-size: 10pt; font-weight: 700;" Text=" *"></asp:Label>
                            </div>  
                        </div>                      
                        <div class="grid-x grid-padding-x">  
                            <div class="large-12 medium-12 cell">  
                                <asp:TextBox ID="TextBoxPurchaseDate7" runat="server" CssClass="style31"></asp:TextBox>
                                <ajaxtoolkit:calendarextender ID="CalendarExtenderEntryDate7" runat="server" CssClass="cal_Theme1" PopupButtonID="TextBoxPurchaseDate7" TargetControlID="TextBoxPurchaseDate7"></ajaxtoolkit:calendarextender>
                                <ajaxtoolkit:maskededitextender ID="EntryDate7" runat="server" 
                                     CultureAMPMPlaceholder="" CultureCurrencySymbolPlaceholder="" 
                                     CultureDateFormat="" CultureDatePlaceholder="" CultureDecimalPlaceholder="" 
                                     CultureThousandsPlaceholder="" CultureTimePlaceholder="" Enabled="True" 
                                     Mask="99/99/9999" MaskType="Date" TargetControlID="TextBoxPurchaseDate7">
                                </ajaxtoolkit:maskededitextender>
                            </div>
                        </div>
                    </asp:Panel>
                </div>  
            </div>

            <div class="grid-x grid-padding-x">
                <div class="large-12 medium-8 cell">                     
                    <asp:Panel ID="Panel8" runat="server" Visible="False">
                        <hr />                    
                        <div class="grid-x grid-padding-x">
                            <div class="large-8 medium-8 cell"> 
                            <asp:Label ID="Label52" runat="server" style="color: #000000; font-family: Verdana; font-size: 10pt; font-weight: 700;" Text="Model 8"></asp:Label>
                            <asp:Label ID="Label53" runat="server" style="color: #FF0000; font-family: Verdana; font-size: 10pt; font-weight: 700;" Text=" *"></asp:Label>
                            </div>  
                        </div>                      
                        <div class="grid-x grid-padding-x">  
                            <div class="large-12 medium-12 cell">  
                                <asp:DropDownList ID="DropDownListModel8" runat="server" DataSourceID="ObjectDataSource8" DataTextField="PART_NUMBER" 
                                        DataValueField="SKU" style="font-family: Verdana"></asp:DropDownList>
                                <asp:ObjectDataSource ID="ObjectDataSource8" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="SelectC7" TypeName="RSBusinessObject"></asp:ObjectDataSource>
                            </div>
                        </div>
                        <div class="grid-x grid-padding-x">
                            <div class="large-8 medium-8 cell"> 
                            <asp:Label ID="Label54" runat="server" style="color: #000000; font-family: Verdana; font-size: 10pt; font-weight: 700;" Text="Serial Number - 8"></asp:Label>
                            <asp:Label ID="Label55" runat="server" style="color: #FF0000; font-family: Verdana; font-size: 10pt; font-weight: 700;" Text=" *"></asp:Label>
                            </div>  
                        </div>                      
                        <div class="grid-x grid-padding-x">  
                            <div class="large-12 medium-12 cell">  
                                <asp:TextBox ID="TextBoxSerial8" runat="server" onBlur="javascript:if(this.value==''){this.value=this.defaultValue}" onfocus="if(this.value==this.defaultValue) this.value='';" style="font-family: Verdana" >Serial Number</asp:TextBox>
                            </div>
                        </div>
                        <div class="grid-x grid-padding-x">
                            <div class="large-8 medium-8 cell"> 
                            <asp:Label ID="Label56" runat="server" style="color: #000000; font-family: Verdana; font-size: 10pt; font-weight: 700;" Text="Date of Purchase - 8"></asp:Label>
                            <asp:Label ID="Label57" runat="server" style="color: #FF0000; font-family: Verdana; font-size: 10pt; font-weight: 700;" Text=" *"></asp:Label>
                            </div>  
                        </div>                      
                        <div class="grid-x grid-padding-x">  
                            <div class="large-12 medium-12 cell">  
                                <asp:TextBox ID="TextBoxPurchaseDate8" runat="server" CssClass="style31"></asp:TextBox>
                                <ajaxtoolkit:calendarextender ID="CalendarExtenderEntryDate8" runat="server" CssClass="cal_Theme1" PopupButtonID="TextBoxPurchaseDate8" TargetControlID="TextBoxPurchaseDate8"></ajaxtoolkit:calendarextender>
                                <ajaxtoolkit:maskededitextender ID="EntryDate8" runat="server" 
                                     CultureAMPMPlaceholder="" CultureCurrencySymbolPlaceholder="" 
                                     CultureDateFormat="" CultureDatePlaceholder="" CultureDecimalPlaceholder="" 
                                     CultureThousandsPlaceholder="" CultureTimePlaceholder="" Enabled="True" 
                                     Mask="99/99/9999" MaskType="Date" TargetControlID="TextBoxPurchaseDate8">
                                </ajaxtoolkit:maskededitextender>
                            </div>
                        </div>
                    </asp:Panel>
                </div>  
            </div>

            <div class="grid-x grid-padding-x">
                <div class="large-12 medium-8 cell">                     
                    <asp:Panel ID="Panel9" runat="server" Visible="False">
                        <hr />                    
                        <div class="grid-x grid-padding-x">
                            <div class="large-8 medium-8 cell"> 
                            <asp:Label ID="Label58" runat="server" style="color: #000000; font-family: Verdana; font-size: 10pt; font-weight: 700;" Text="Model 9"></asp:Label>
                            <asp:Label ID="Label59" runat="server" style="color: #FF0000; font-family: Verdana; font-size: 10pt; font-weight: 700;" Text=" *"></asp:Label>
                            </div>  
                        </div>                      
                        <div class="grid-x grid-padding-x">  
                            <div class="large-12 medium-12 cell">  
                                <asp:DropDownList ID="DropDownListModel9" runat="server" DataSourceID="ObjectDataSource9" DataTextField="PART_NUMBER" 
                                        DataValueField="SKU" style="font-family: Verdana"></asp:DropDownList>
                                <asp:ObjectDataSource ID="ObjectDataSource9" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="SelectC7" TypeName="RSBusinessObject"></asp:ObjectDataSource>
                            </div>
                        </div>
                        <div class="grid-x grid-padding-x">
                            <div class="large-8 medium-8 cell"> 
                            <asp:Label ID="Label60" runat="server" style="color: #000000; font-family: Verdana; font-size: 10pt; font-weight: 700;" Text="Serial Number - 9"></asp:Label>
                            <asp:Label ID="Label61" runat="server" style="color: #FF0000; font-family: Verdana; font-size: 10pt; font-weight: 700;" Text=" *"></asp:Label>
                            </div>  
                        </div>                      
                        <div class="grid-x grid-padding-x">  
                            <div class="large-12 medium-12 cell">  
                                <asp:TextBox ID="TextBoxSerial9" runat="server" onBlur="javascript:if(this.value==''){this.value=this.defaultValue}" onfocus="if(this.value==this.defaultValue) this.value='';" style="font-family: Verdana" >Serial Number</asp:TextBox>
                            </div>
                        </div>
                        <div class="grid-x grid-padding-x">
                            <div class="large-8 medium-8 cell"> 
                            <asp:Label ID="Label62" runat="server" style="color: #000000; font-family: Verdana; font-size: 10pt; font-weight: 700;" Text="Date of Purchase - 9"></asp:Label>
                            <asp:Label ID="Label63" runat="server" style="color: #FF0000; font-family: Verdana; font-size: 10pt; font-weight: 700;" Text=" *"></asp:Label>
                            </div>  
                        </div>                      
                        <div class="grid-x grid-padding-x">  
                            <div class="large-12 medium-12 cell">  
                                <asp:TextBox ID="TextBoxPurchaseDate9" runat="server" CssClass="style31"></asp:TextBox>
                                <ajaxtoolkit:calendarextender ID="CalendarExtenderEntryDate9" runat="server" CssClass="cal_Theme1" PopupButtonID="TextBoxPurchaseDate9" TargetControlID="TextBoxPurchaseDate9"></ajaxtoolkit:calendarextender>
                                <ajaxtoolkit:maskededitextender ID="EntryDate9" runat="server" 
                                     CultureAMPMPlaceholder="" CultureCurrencySymbolPlaceholder="" 
                                     CultureDateFormat="" CultureDatePlaceholder="" CultureDecimalPlaceholder="" 
                                     CultureThousandsPlaceholder="" CultureTimePlaceholder="" Enabled="True" 
                                     Mask="99/99/9999" MaskType="Date" TargetControlID="TextBoxPurchaseDate9">
                                </ajaxtoolkit:maskededitextender>
                            </div>
                        </div>
                    </asp:Panel>
                </div>  
            </div>


            <div class="grid-x grid-padding-x">
                <div class="large-12 medium-8 cell">                     
                    <asp:Panel ID="Panel10" runat="server" Visible="False">
                        <hr />                    
                        <div class="grid-x grid-padding-x">
                            <div class="large-8 medium-8 cell"> 
                            <asp:Label ID="Label64" runat="server" style="color: #000000; font-family: Verdana; font-size: 10pt; font-weight: 700;" Text="Model 10"></asp:Label>
                            <asp:Label ID="Label65" runat="server" style="color: #FF0000; font-family: Verdana; font-size: 10pt; font-weight: 700;" Text=" *"></asp:Label>
                            </div>  
                        </div>                      
                        <div class="grid-x grid-padding-x">  
                            <div class="large-12 medium-12 cell">  
                                <asp:DropDownList ID="DropDownListModel10" runat="server" DataSourceID="ObjectDataSource10" DataTextField="PART_NUMBER" 
                                        DataValueField="SKU" style="font-family: Verdana"></asp:DropDownList>
                                <asp:ObjectDataSource ID="ObjectDataSource10" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="SelectC7" TypeName="RSBusinessObject"></asp:ObjectDataSource>
                            </div>
                        </div>
                        <div class="grid-x grid-padding-x">
                            <div class="large-8 medium-8 cell"> 
                            <asp:Label ID="Label66" runat="server" style="color: #000000; font-family: Verdana; font-size: 10pt; font-weight: 700;" Text="Serial Number - 10"></asp:Label>
                            <asp:Label ID="Label1104" runat="server" style="color: #FF0000; font-family: Verdana; font-size: 10pt; font-weight: 700;" Text=" *"></asp:Label>
                            </div>  
                        </div>                      
                        <div class="grid-x grid-padding-x">  
                            <div class="large-12 medium-12 cell">  
                                <asp:TextBox ID="TextBoxSerial10" runat="server" onBlur="javascript:if(this.value==''){this.value=this.defaultValue}" onfocus="if(this.value==this.defaultValue) this.value='';" style="font-family: Verdana" >Serial Number</asp:TextBox>
                            </div>
                        </div>
                        <div class="grid-x grid-padding-x">
                            <div class="large-8 medium-8 cell"> 
                            <asp:Label ID="Label1102" runat="server" style="color: #000000; font-family: Verdana; font-size: 10pt; font-weight: 700;" Text="Date of Purchase - 10"></asp:Label>
                            <asp:Label ID="Label1101" runat="server" style="color: #FF0000; font-family: Verdana; font-size: 10pt; font-weight: 700;" Text=" *"></asp:Label>
                            </div>  
                        </div>                      
                        <div class="grid-x grid-padding-x">  
                            <div class="large-12 medium-12 cell">  
                                <asp:TextBox ID="TextBoxPurchaseDate10" runat="server" CssClass="style31"></asp:TextBox>
                                <ajaxtoolkit:calendarextender ID="CalendarExtenderEntryDate10" runat="server" CssClass="cal_Theme1" PopupButtonID="TextBoxPurchaseDate10" TargetControlID="TextBoxPurchaseDate10"></ajaxtoolkit:calendarextender>
                                <ajaxtoolkit:maskededitextender ID="EntryDate10" runat="server" 
                                     CultureAMPMPlaceholder="" CultureCurrencySymbolPlaceholder="" 
                                     CultureDateFormat="" CultureDatePlaceholder="" CultureDecimalPlaceholder="" 
                                     CultureThousandsPlaceholder="" CultureTimePlaceholder="" Enabled="True" 
                                     Mask="99/99/9999" MaskType="Date" TargetControlID="TextBoxPurchaseDate10">
                                </ajaxtoolkit:maskededitextender>
                            </div>
                        </div>
                    </asp:Panel>
                </div>  
            </div>

            <div class="grid-x grid-padding-x">
                <div class="large-12 medium-8 cell">                     
                    <asp:Panel ID="Panel11" runat="server" Visible="False">
                        <hr />                    

                        <div class="grid-x grid-padding-x">
                            <div class="large-8 medium-8 cell"> 
                            <asp:Label ID="Label67" runat="server" style="color: #000000; font-family: Verdana; font-size: 10pt; font-weight: 700;" Text="Purchase Type"></asp:Label>
                            <asp:Label ID="Label68" runat="server" style="color: #FF0000; font-family: Verdana; font-size: 10pt; font-weight: 700;" Text=" *"></asp:Label>
                            </div>  
                        </div>                      
                        <div class="grid-x grid-padding-x">  
                            <div class="large-12 medium-12 cell">  
                                <asp:RadioButtonList ID="RadioButtonListOnline" runat="server" 
                                    AutoPostBack="True" 
                                    onselectedindexchanged="RadioButtonListOnline_SelectedIndexChanged" 
                                    style="font-family: Verdana; font-size: 10pt">
                                    <asp:ListItem Value="N">In Person</asp:ListItem>
                                    <asp:ListItem Value="Y">Online</asp:ListItem>
                                </asp:RadioButtonList>
                            </div>
                        </div>

                        <br />
                        <div class="grid-x grid-padding-x">
                        <div class="large-8 medium-8 cell"> 
                                <asp:Label ID="Label69" runat="server" style="color: #000000; font-family: Verdana; font-size: 10pt; font-weight: 700;" Text="Name of Seller / Store"></asp:Label>
                                <asp:Label ID="Label70" runat="server" style="color: #FF0000; font-family: Verdana; font-size: 10pt; font-weight: 700;" Text=" *"></asp:Label>
                            </div>  
                        </div>  
                        <div class="grid-x grid-padding-x">  
                            <div class="large-12 medium-8 cell">  
                                <asp:TextBox ID="TextBoxStoreName" runat="server" 
                                    onBlur="javascript:if(this.value==''){this.value=this.defaultValue}" 
                                    onfocus="if(this.value==this.defaultValue) this.value='';" 
                                    style="font-family: Verdana">Name of Seller / Store</asp:TextBox>
                        </div>
                        </div>

                        <div class="grid-x grid-padding-x">
                            <div class="large-12 medium-8 cell">                     
                                <asp:Panel ID="Panel12" runat="server" Visible="False">

                                <br />
                                <div class="grid-x grid-padding-x">
                                <div class="large-8 medium-8 cell"> 
                                        <asp:Label ID="Label71" runat="server" style="color: #000000; font-family: Verdana; font-size: 10pt; font-weight: 700;" Text="Marketplace (i.e. eBay, Amazon) "></asp:Label>
                                    </div>  
                                </div>  
                                <div class="grid-x grid-padding-x">  
                                    <div class="large-12 medium-8 cell">  
                                        <asp:TextBox ID="TextBoxMarketPlace" runat="server" 
                                        onBlur="javascript:if(this.value==''){this.value=this.defaultValue}" 
                                        onfocus="if(this.value==this.defaultValue) this.value='';" 
                                        style="font-family: Verdana">Marketplace (i.e. eBay, Amazon)</asp:TextBox>
                                </div>
                                </div>

                                </asp:Panel>
                            </div>  
                        </div>

                        <div class="grid-x grid-padding-x">
                            <div class="large-12 medium-8 cell">                     
                                <asp:Panel ID="Panel13" runat="server" Visible="False">

                                <br />
                                <div class="grid-x grid-padding-x">
                                <div class="large-8 medium-8 cell"> 
                                        <asp:Label ID="Label72" runat="server" style="color: #000000; font-family: Verdana; font-size: 10pt; font-weight: 700;" Text="Store Location"></asp:Label>
                                        <asp:Label ID="Label73" runat="server" style="color: #FF0000; font-family: Verdana; font-size: 10pt; font-weight: 700;" Text=" *"></asp:Label>
                                    </div>  
                                </div>  
                                <div class="grid-x grid-padding-x">  
                                    <div class="large-6 medium-6 small-6 cell">  
                                        <asp:TextBox ID="TextBoxStoreCity" runat="server" 
                                        onBlur="javascript:if(this.value==''){this.value=this.defaultValue}" 
                                        onfocus="if(this.value==this.defaultValue) this.value='';" 
                                        style="font-family: Verdana">City</asp:TextBox>
                                </div>
                                <div class="large-6 medium-6 small-6 cell">  
                                        <asp:TextBox ID="TextBoxStoreState" runat="server" 
                                        onBlur="javascript:if(this.value==''){this.value=this.defaultValue}" 
                                        onfocus="if(this.value==this.defaultValue) this.value='';" 
                                        style="font-family: Verdana" >State / Province</asp:TextBox>
                                    </div>  
                                </div>            
            
                                <div class="grid-x grid-padding-x">  
                                    <div class="large-12 medium-8 cell">  
                                        <asp:DropDownList ID="DropDownListStoreCountry" runat="server" 
                                        style="font-family: Verdana">
                                        <asp:ListItem>Please Select Country . . .</asp:ListItem>
                                        <asp:ListItem value="United States"> United States </asp:ListItem>
                                        <asp:ListItem value="Afghanistan"> Afghanistan </asp:ListItem>
                                        <asp:ListItem value="Albania"> Albania </asp:ListItem>
                                        <asp:ListItem value="Algeria"> Algeria </asp:ListItem>
                                        <asp:ListItem value="American Samoa"> American Samoa </asp:ListItem>
                                        <asp:ListItem value="Andorra"> Andorra </asp:ListItem>
                                        <asp:ListItem value="Angola"> Angola </asp:ListItem>
                                        <asp:ListItem value="Anguilla"> Anguilla </asp:ListItem>
                                        <asp:ListItem value="Antigua and Barbuda"> Antigua and Barbuda </asp:ListItem>
                                        <asp:ListItem value="Argentina"> Argentina </asp:ListItem>
                                        <asp:ListItem value="Armenia"> Armenia </asp:ListItem>
                                        <asp:ListItem value="Aruba"> Aruba </asp:ListItem>
                                        <asp:ListItem value="Australia"> Australia </asp:ListItem>
                                        <asp:ListItem value="Austria"> Austria </asp:ListItem>
                                        <asp:ListItem value="Azerbaijan"> Azerbaijan </asp:ListItem>
                                        <asp:ListItem value="The Bahamas"> The Bahamas </asp:ListItem>
                                        <asp:ListItem value="Bahrain"> Bahrain </asp:ListItem>
                                        <asp:ListItem value="Bangladesh"> Bangladesh </asp:ListItem>
                                        <asp:ListItem value="Barbados"> Barbados </asp:ListItem>
                                        <asp:ListItem value="Belarus"> Belarus </asp:ListItem>
                                        <asp:ListItem value="Belgium"> Belgium </asp:ListItem>
                                        <asp:ListItem value="Belize"> Belize </asp:ListItem>
                                        <asp:ListItem value="Benin"> Benin </asp:ListItem>
                                        <asp:ListItem value="Bermuda"> Bermuda </asp:ListItem>
                                        <asp:ListItem value="Bhutan"> Bhutan </asp:ListItem>
                                        <asp:ListItem value="Bolivia"> Bolivia </asp:ListItem>
                                        <asp:ListItem value="Bosnia and Herzegovina"> Bosnia and Herzegovina </asp:ListItem>
                                        <asp:ListItem value="Botswana"> Botswana </asp:ListItem>
                                        <asp:ListItem value="Brazil"> Brazil </asp:ListItem>
                                        <asp:ListItem value="Brunei"> Brunei </asp:ListItem>
                                        <asp:ListItem value="Bulgaria"> Bulgaria </asp:ListItem>
                                        <asp:ListItem value="Burkina Faso"> Burkina Faso </asp:ListItem>
                                        <asp:ListItem value="Burundi"> Burundi </asp:ListItem>
                                        <asp:ListItem value="Cambodia"> Cambodia </asp:ListItem>
                                        <asp:ListItem value="Cameroon"> Cameroon </asp:ListItem>
                                        <asp:ListItem value="Canada"> Canada </asp:ListItem>
                                        <asp:ListItem value="Cape Verde"> Cape Verde </asp:ListItem>
                                        <asp:ListItem value="Cayman Islands"> Cayman Islands </asp:ListItem>
                                        <asp:ListItem value="Central African Republic"> Central African Republic </asp:ListItem>
                                        <asp:ListItem value="Chad"> Chad </asp:ListItem>
                                        <asp:ListItem value="Chile"> Chile </asp:ListItem>
                                        <asp:ListItem value="China"> China </asp:ListItem>
                                        <asp:ListItem value="Christmas Island"> Christmas Island </asp:ListItem>
                                        <asp:ListItem value="Cocos (Keeling) Islands"> Cocos (Keeling) Islands </asp:ListItem>
                                        <asp:ListItem value="Colombia"> Colombia </asp:ListItem>
                                        <asp:ListItem value="Comoros"> Comoros </asp:ListItem>
                                        <asp:ListItem value="Congo"> Congo </asp:ListItem>
                                        <asp:ListItem value="Cook Islands"> Cook Islands </asp:ListItem>
                                        <asp:ListItem value="Costa Rica"> Costa Rica </asp:ListItem>
                                        <asp:ListItem value="Cote d&amp;#x27;Ivoire"> Cote d&#39;Ivoire </asp:ListItem>
                                        <asp:ListItem value="Croatia"> Croatia </asp:ListItem>
                                        <asp:ListItem value="Cuba"> Cuba </asp:ListItem>
                                        <asp:ListItem value="Cyprus"> Cyprus </asp:ListItem>
                                        <asp:ListItem value="Czech Republic"> Czech Republic </asp:ListItem>
                                        <asp:ListItem value="Democratic Republic of the Congo"> Democratic Republic of the Congo </asp:ListItem>
                                        <asp:ListItem value="Denmark"> Denmark </asp:ListItem>
                                        <asp:ListItem value="Djibouti"> Djibouti </asp:ListItem>
                                        <asp:ListItem value="Dominica"> Dominica </asp:ListItem>
                                        <asp:ListItem value="Dominican Republic"> Dominican Republic </asp:ListItem>
                                        <asp:ListItem value="Ecuador"> Ecuador </asp:ListItem>
                                        <asp:ListItem value="Egypt"> Egypt </asp:ListItem>
                                        <asp:ListItem value="El Salvador"> El Salvador </asp:ListItem>
                                        <asp:ListItem value="Equatorial Guinea"> Equatorial Guinea </asp:ListItem>
                                        <asp:ListItem value="Eritrea"> Eritrea </asp:ListItem>
                                        <asp:ListItem value="Estonia"> Estonia </asp:ListItem>
                                        <asp:ListItem value="Ethiopia"> Ethiopia </asp:ListItem>
                                        <asp:ListItem value="Falkland Islands"> Falkland Islands </asp:ListItem>
                                        <asp:ListItem value="Faroe Islands"> Faroe Islands </asp:ListItem>
                                        <asp:ListItem value="Fiji"> Fiji </asp:ListItem>
                                        <asp:ListItem value="Finland"> Finland </asp:ListItem>
                                        <asp:ListItem value="France"> France </asp:ListItem>
                                        <asp:ListItem value="French Polynesia"> French Polynesia </asp:ListItem>
                                        <asp:ListItem value="Gabon"> Gabon </asp:ListItem>
                                        <asp:ListItem value="The Gambia"> The Gambia </asp:ListItem>
                                        <asp:ListItem value="Georgia"> Georgia </asp:ListItem>
                                        <asp:ListItem value="Germany"> Germany </asp:ListItem>
                                        <asp:ListItem value="Ghana"> Ghana </asp:ListItem>
                                        <asp:ListItem value="Gibraltar"> Gibraltar </asp:ListItem>
                                        <asp:ListItem value="Greece"> Greece </asp:ListItem>
                                        <asp:ListItem value="Greenland"> Greenland </asp:ListItem>
                                        <asp:ListItem value="Grenada"> Grenada </asp:ListItem>
                                        <asp:ListItem value="Guadeloupe"> Guadeloupe </asp:ListItem>
                                        <asp:ListItem value="Guam"> Guam </asp:ListItem>
                                        <asp:ListItem value="Guatemala"> Guatemala </asp:ListItem>
                                        <asp:ListItem value="Guernsey"> Guernsey </asp:ListItem>
                                        <asp:ListItem value="Guinea"> Guinea </asp:ListItem>
                                        <asp:ListItem value="Guinea-Bissau"> Guinea-Bissau </asp:ListItem>
                                        <asp:ListItem value="Guyana"> Guyana </asp:ListItem>
                                        <asp:ListItem value="Haiti"> Haiti </asp:ListItem>
                                        <asp:ListItem value="Honduras"> Honduras </asp:ListItem>
                                        <asp:ListItem value="Hong Kong"> Hong Kong </asp:ListItem>
                                        <asp:ListItem value="Hungary"> Hungary </asp:ListItem>
                                        <asp:ListItem value="Iceland"> Iceland </asp:ListItem>
                                        <asp:ListItem value="India"> India </asp:ListItem>
                                        <asp:ListItem value="Indonesia"> Indonesia </asp:ListItem>
                                        <asp:ListItem value="Iran"> Iran </asp:ListItem>
                                        <asp:ListItem value="Iraq"> Iraq </asp:ListItem>
                                        <asp:ListItem value="Ireland"> Ireland </asp:ListItem>
                                        <asp:ListItem value="Israel"> Israel </asp:ListItem>
                                        <asp:ListItem value="Italy"> Italy </asp:ListItem>
                                        <asp:ListItem value="Jamaica"> Jamaica </asp:ListItem>
                                        <asp:ListItem value="Japan"> Japan </asp:ListItem>
                                        <asp:ListItem value="Jersey"> Jersey </asp:ListItem>
                                        <asp:ListItem value="Jordan"> Jordan </asp:ListItem>
                                        <asp:ListItem value="Kazakhstan"> Kazakhstan </asp:ListItem>
                                        <asp:ListItem value="Kenya"> Kenya </asp:ListItem>
                                        <asp:ListItem value="Kiribati"> Kiribati </asp:ListItem>
                                        <asp:ListItem value="North Korea"> North Korea </asp:ListItem>
                                        <asp:ListItem value="South Korea"> South Korea </asp:ListItem>
                                        <asp:ListItem value="Kosovo"> Kosovo </asp:ListItem>
                                        <asp:ListItem value="Kuwait"> Kuwait </asp:ListItem>
                                        <asp:ListItem value="Kyrgyzstan"> Kyrgyzstan </asp:ListItem>
                                        <asp:ListItem value="Laos"> Laos </asp:ListItem>
                                        <asp:ListItem value="Latvia"> Latvia </asp:ListItem>
                                        <asp:ListItem value="Lebanon"> Lebanon </asp:ListItem>
                                        <asp:ListItem value="Lesotho"> Lesotho </asp:ListItem>
                                        <asp:ListItem value="Liberia"> Liberia </asp:ListItem>
                                        <asp:ListItem value="Libya"> Libya </asp:ListItem>
                                        <asp:ListItem value="Liechtenstein"> Liechtenstein </asp:ListItem>
                                        <asp:ListItem value="Lithuania"> Lithuania </asp:ListItem>
                                        <asp:ListItem value="Luxembourg"> Luxembourg </asp:ListItem>
                                        <asp:ListItem value="Macau"> Macau </asp:ListItem>
                                        <asp:ListItem value="Macedonia"> Macedonia </asp:ListItem>
                                        <asp:ListItem value="Madagascar"> Madagascar </asp:ListItem>
                                        <asp:ListItem value="Malawi"> Malawi </asp:ListItem>
                                        <asp:ListItem value="Malaysia"> Malaysia </asp:ListItem>
                                        <asp:ListItem value="Maldives"> Maldives </asp:ListItem>
                                        <asp:ListItem value="Mali"> Mali </asp:ListItem>
                                        <asp:ListItem value="Malta"> Malta </asp:ListItem>
                                        <asp:ListItem value="Marshall Islands"> Marshall Islands </asp:ListItem>
                                        <asp:ListItem value="Martinique"> Martinique </asp:ListItem>
                                        <asp:ListItem value="Mauritania"> Mauritania </asp:ListItem>
                                        <asp:ListItem value="Mauritius"> Mauritius </asp:ListItem>
                                        <asp:ListItem value="Mayotte"> Mayotte </asp:ListItem>
                                        <asp:ListItem value="Mexico"> Mexico </asp:ListItem>
                                        <asp:ListItem value="Micronesia"> Micronesia </asp:ListItem>
                                        <asp:ListItem value="Moldova"> Moldova </asp:ListItem>
                                        <asp:ListItem value="Monaco"> Monaco </asp:ListItem>
                                        <asp:ListItem value="Mongolia"> Mongolia </asp:ListItem>
                                        <asp:ListItem value="Montenegro"> Montenegro </asp:ListItem>
                                        <asp:ListItem value="Montserrat"> Montserrat </asp:ListItem>
                                        <asp:ListItem value="Morocco"> Morocco </asp:ListItem>
                                        <asp:ListItem value="Mozambique"> Mozambique </asp:ListItem>
                                        <asp:ListItem value="Myanmar"> Myanmar </asp:ListItem>
                                        <asp:ListItem value="Nagorno-Karabakh"> Nagorno-Karabakh </asp:ListItem>
                                        <asp:ListItem value="Namibia"> Namibia </asp:ListItem>
                                        <asp:ListItem value="Nauru"> Nauru </asp:ListItem>
                                        <asp:ListItem value="Nepal"> Nepal </asp:ListItem>
                                        <asp:ListItem value="Netherlands"> Netherlands </asp:ListItem>
                                        <asp:ListItem value="Netherlands Antilles"> Netherlands Antilles </asp:ListItem>
                                        <asp:ListItem value="New Caledonia"> New Caledonia </asp:ListItem>
                                        <asp:ListItem value="New Zealand"> New Zealand </asp:ListItem>
                                        <asp:ListItem value="Nicaragua"> Nicaragua </asp:ListItem>
                                        <asp:ListItem value="Niger"> Niger </asp:ListItem>
                                        <asp:ListItem value="Nigeria"> Nigeria </asp:ListItem>
                                        <asp:ListItem value="Niue"> Niue </asp:ListItem>
                                        <asp:ListItem value="Norfolk Island"> Norfolk Island </asp:ListItem>
                                        <asp:ListItem value="Turkish Republic of Northern Cyprus"> Turkish Republic of Northern Cyprus </asp:ListItem>
                                        <asp:ListItem value="Northern Mariana"> Northern Mariana </asp:ListItem>
                                        <asp:ListItem value="Norway"> Norway </asp:ListItem>
                                        <asp:ListItem value="Oman"> Oman </asp:ListItem>
                                        <asp:ListItem value="Pakistan"> Pakistan </asp:ListItem>
                                        <asp:ListItem value="Palau"> Palau </asp:ListItem>
                                        <asp:ListItem value="Palestine"> Palestine </asp:ListItem>
                                        <asp:ListItem value="Panama"> Panama </asp:ListItem>
                                        <asp:ListItem value="Papua New Guinea"> Papua New Guinea </asp:ListItem>
                                        <asp:ListItem value="Paraguay"> Paraguay </asp:ListItem>
                                        <asp:ListItem value="Peru"> Peru </asp:ListItem>
                                        <asp:ListItem value="Philippines"> Philippines </asp:ListItem>
                                        <asp:ListItem value="Pitcairn Islands"> Pitcairn Islands </asp:ListItem>
                                        <asp:ListItem value="Poland"> Poland </asp:ListItem>
                                        <asp:ListItem value="Portugal"> Portugal </asp:ListItem>
                                        <asp:ListItem value="Puerto Rico"> Puerto Rico </asp:ListItem>
                                        <asp:ListItem value="Qatar"> Qatar </asp:ListItem>
                                        <asp:ListItem value="Republic of the Congo"> Republic of the Congo </asp:ListItem>
                                        <asp:ListItem value="Romania"> Romania </asp:ListItem>
                                        <asp:ListItem value="Russia"> Russia </asp:ListItem>
                                        <asp:ListItem value="Rwanda"> Rwanda </asp:ListItem>
                                        <asp:ListItem value="Saint Barthelemy"> Saint Barthelemy </asp:ListItem>
                                        <asp:ListItem value="Saint Helena"> Saint Helena </asp:ListItem>
                                        <asp:ListItem value="Saint Kitts and Nevis"> Saint Kitts and Nevis </asp:ListItem>
                                        <asp:ListItem value="Saint Lucia"> Saint Lucia </asp:ListItem>
                                        <asp:ListItem value="Saint Martin"> Saint Martin </asp:ListItem>
                                        <asp:ListItem value="Saint Pierre and Miquelon"> Saint Pierre and Miquelon </asp:ListItem>
                                        <asp:ListItem value="Saint Vincent and the Grenadines"> Saint Vincent and the Grenadines </asp:ListItem>
                                        <asp:ListItem value="Samoa"> Samoa </asp:ListItem>
                                        <asp:ListItem value="San Marino"> San Marino </asp:ListItem>
                                        <asp:ListItem value="Sao Tome and Principe"> Sao Tome and Principe </asp:ListItem>
                                        <asp:ListItem value="Saudi Arabia"> Saudi Arabia </asp:ListItem>
                                        <asp:ListItem value="Senegal"> Senegal </asp:ListItem>
                                        <asp:ListItem value="Serbia"> Serbia </asp:ListItem>
                                        <asp:ListItem value="Seychelles"> Seychelles </asp:ListItem>
                                        <asp:ListItem value="Sierra Leone"> Sierra Leone </asp:ListItem>
                                        <asp:ListItem value="Singapore"> Singapore </asp:ListItem>
                                        <asp:ListItem value="Slovakia"> Slovakia </asp:ListItem>
                                        <asp:ListItem value="Slovenia"> Slovenia </asp:ListItem>
                                        <asp:ListItem value="Solomon Islands"> Solomon Islands </asp:ListItem>
                                        <asp:ListItem value="Somalia"> Somalia </asp:ListItem>
                                        <asp:ListItem value="Somaliland"> Somaliland </asp:ListItem>
                                        <asp:ListItem value="South Africa"> South Africa </asp:ListItem>
                                        <asp:ListItem value="South Ossetia"> South Ossetia </asp:ListItem>
                                        <asp:ListItem value="South Sudan"> South Sudan </asp:ListItem>
                                        <asp:ListItem value="Spain"> Spain </asp:ListItem>
                                        <asp:ListItem value="Sri Lanka"> Sri Lanka </asp:ListItem>
                                        <asp:ListItem value="Sudan"> Sudan </asp:ListItem>
                                        <asp:ListItem value="Suriname"> Suriname </asp:ListItem>
                                        <asp:ListItem value="Svalbard"> Svalbard </asp:ListItem>
                                        <asp:ListItem value="Swaziland"> Swaziland </asp:ListItem>
                                        <asp:ListItem value="Sweden"> Sweden </asp:ListItem>
                                        <asp:ListItem value="Switzerland"> Switzerland </asp:ListItem>
                                        <asp:ListItem value="Syria"> Syria </asp:ListItem>
                                        <asp:ListItem value="Taiwan"> Taiwan </asp:ListItem>
                                        <asp:ListItem value="Tajikistan"> Tajikistan </asp:ListItem>
                                        <asp:ListItem value="Tanzania"> Tanzania </asp:ListItem>
                                        <asp:ListItem value="Thailand"> Thailand </asp:ListItem>
                                        <asp:ListItem value="Timor-Leste"> Timor-Leste </asp:ListItem>
                                        <asp:ListItem value="Togo"> Togo </asp:ListItem>
                                        <asp:ListItem value="Tokelau"> Tokelau </asp:ListItem>
                                        <asp:ListItem value="Tonga"> Tonga </asp:ListItem>
                                        <asp:ListItem value="Transnistria Pridnestrovie"> Transnistria Pridnestrovie </asp:ListItem>
                                        <asp:ListItem value="Trinidad and Tobago"> Trinidad and Tobago </asp:ListItem>
                                        <asp:ListItem value="Tristan da Cunha"> Tristan da Cunha </asp:ListItem>
                                        <asp:ListItem value="Tunisia"> Tunisia </asp:ListItem>
                                        <asp:ListItem value="Turkey"> Turkey </asp:ListItem>
                                        <asp:ListItem value="Turkmenistan"> Turkmenistan </asp:ListItem>
                                        <asp:ListItem value="Turks and Caicos Islands"> Turks and Caicos Islands </asp:ListItem>
                                        <asp:ListItem value="Tuvalu"> Tuvalu </asp:ListItem>
                                        <asp:ListItem value="Uganda"> Uganda </asp:ListItem>
                                        <asp:ListItem value="Ukraine"> Ukraine </asp:ListItem>
                                        <asp:ListItem value="United Arab Emirates"> United Arab Emirates </asp:ListItem>
                                        <asp:ListItem value="United Kingdom"> United Kingdom </asp:ListItem>
                                        <asp:ListItem value="Uruguay"> Uruguay </asp:ListItem>
                                        <asp:ListItem value="Uzbekistan"> Uzbekistan </asp:ListItem>
                                        <asp:ListItem value="Vanuatu"> Vanuatu </asp:ListItem>
                                        <asp:ListItem value="Vatican City"> Vatican City </asp:ListItem>
                                        <asp:ListItem value="Venezuela"> Venezuela </asp:ListItem>
                                        <asp:ListItem value="Vietnam"> Vietnam </asp:ListItem>
                                        <asp:ListItem value="British Virgin Islands"> British Virgin Islands </asp:ListItem>
                                        <asp:ListItem value="Isle of Man"> Isle of Man </asp:ListItem>
                                        <asp:ListItem value="US Virgin Islands"> US Virgin Islands </asp:ListItem>
                                        <asp:ListItem value="Wallis and Futuna"> Wallis and Futuna </asp:ListItem>
                                        <asp:ListItem value="Western Sahara"> Western Sahara </asp:ListItem>
                                        <asp:ListItem value="Yemen"> Yemen </asp:ListItem>
                                        <asp:ListItem value="Zambia"> Zambia </asp:ListItem>
                                        <asp:ListItem value="Zimbabwe"> Zimbabwe </asp:ListItem>
                                        <asp:ListItem value="other"> Other </asp:ListItem>
                                    </asp:DropDownList>
                                    </div>
                                </div>

                                </asp:Panel>
                            </div>  
                        </div>

                        <br />
                        <div class="grid-x grid-padding-x">
                            <div class="large-8 medium-8 cell"> 
                                <asp:Label ID="Label74" runat="server" style="color: #000000; font-family: Verdana; font-size: 10pt; font-weight: 700;" Text="Who performed the instalation?"></asp:Label>
                                <asp:Label ID="Label75" runat="server" style="color: #FF0000; font-family: Verdana; font-size: 10pt; font-weight: 700;" Text=" *"></asp:Label>
                            </div>  
                        </div>                      
                        <div class="grid-x grid-padding-x">  
                            <div class="large-12 medium-12 cell">  
                                <asp:RadioButtonList ID="RadioButtonListInstall" runat="server" 
                                                onselectedindexchanged="RadioButtonListOnline_SelectedIndexChanged" 
                                                style="color: #000000; font-family: Verdana; font-size: 10pt">
                                                <asp:ListItem Value="JD">A JL Audio Dealer</asp:ListItem>
                                                <asp:ListItem Value="NJ">A Non-JL Audio Dealer</asp:ListItem>
                                                <asp:ListItem Value="SL">I installed my own product</asp:ListItem>
                                                <asp:ListItem Value="FR">My friend installed my product</asp:ListItem>
                                                <asp:ListItem Value="NA">Not Applicable</asp:ListItem>
                                </asp:RadioButtonList>
                            </div>
                        </div>

                        <hr />

                        <div class="grid-x grid-padding-x">  
                            <div class="large-12 medium-12 cell">  
                                <asp:CheckBoxList ID="CheckBoxListOptIn" runat="server" 
                                    style="font-size: 10pt; color: #000000; font-family: Verdana;" 
                                    AutoPostBack="True" 
                                    onselectedindexchanged="CheckBoxListOptIn_SelectedIndexChanged">
                                    <asp:ListItem Selected="True" Value="Y">Opt-in to JL Audio Product and Promo emails</asp:ListItem>
                                </asp:CheckBoxList>
                            </div>
                        </div>
            
                         <br />
                        <div class="grid-x grid-padding-x">
                            <div class="large-8 medium-8 cell"> 
                                <asp:Label ID="Label76" runat="server" style="color: #000000; font-family: Verdana; font-size: 10pt; font-weight: 700;" Text="Preferred Product Types"></asp:Label>
                                <asp:Label ID="Label77" runat="server" style="color: #FF0000; font-family: Verdana; font-size: 10pt; font-weight: 700;" Text=" *"></asp:Label>
                            </div>  
                        </div>                      
                        <div class="grid-x grid-padding-x">  
                            <div class="large-12 medium-12 cell">  
                                <asp:CheckBoxList ID="CheckBoxListBrontoProductType" runat="server" 
                                    style="font-size: 10pt; color: #000000; font-family: Verdana;">
                                    <asp:ListItem Selected="True" Value="Mobile">Mobile</asp:ListItem>
                                    <asp:ListItem>Home</asp:ListItem>
                                    <asp:ListItem>Marine</asp:ListItem>
                                    <asp:ListItem>Powersports</asp:ListItem>
                                </asp:CheckBoxList>
                            </div>
                        </div>

                         <br />
                        <div class="grid-x grid-padding-x">
                            <div class="large-8 medium-8 cell"> 
                                <asp:Label ID="Label78" runat="server" style="color: #000000; font-family: Verdana; font-size: 10pt; font-weight: 700;" Text="Enter the message as it's shown"></asp:Label>
                                <asp:Label ID="Label79" runat="server" style="color: #FF0000; font-family: Verdana; font-size: 10pt; font-weight: 700;" Text=" *"></asp:Label>
                            </div>  
                        </div> 
                        <div class="grid-x grid-padding-x">  
                            <div class="large-12 medium-12 cell">  
                                <asp:Image ID="Image1" runat="server" ImageUrl="~/CImage.aspx" />
                            </div>
                        </div>
                        <div class="grid-x grid-padding-x">  
                            <div class="large-12 medium-12 cell">  
                                <asp:TextBox ID="TextBoxImgCode" runat="server"></asp:TextBox>
                            </div>
                        </div>
                        
                        <br />                     
                        
                        <div class="grid-x grid-padding-x">  
                            <div class="large-12 medium-12 cell">  
                                <asp:ImageButton ID="ImageButton1" runat="server" 
                                    ImageUrl="~/images/register.png" onclick="Button1_Click1" />
                            </div>
                        </div>
                        <div class="grid-x grid-padding-x">  
                            <div class="large-12 medium-12 cell">  
                                <asp:Label ID="LabelError" runat="server" 
                                    style="color: #FF0000; font-family: Verdana; font-size: 10pt"></asp:Label>
                            </div>
                        </div>


                    </asp:Panel>
                </div>  
            </div>
          
          </div>
          <div class="row">
            <div class="eight columns text-center"><br />
                <p style="color: #FFFFFF" class="style2">If you require assistance with the registration process, please contact JL Audio Customer Service: JL Audio, Inc, 10369 North Commerce Pkwy., Miramar, FL 33025, Phone: 1-888-JLAUDIO 1-888-552-8346 Fax: 954-443-1111</p>
            </div>
          </div>
          <div class="row">
            <div class="eight columns text-center"><br class="style3" />
                <p style="color: #FFFFFF"><span class="style444"><span class="style2">Copyright © 2013, JL Audio, Inc. - All Rights Reserved. 
                </span> 
                    <font class="style2" size="2"> 
                <font color="#336699"><a href="http://www.jlaudio.com/footer/Copyright+%26+Trademark+Notice/Copyright+%26+Trademark+Notice/719811" >
                        <span class="style4">Copyright & Trademark Notice</span></a></font><span > I
                        </span></font></span><font color="#336699">
                        <a href="http://www.jlaudio.com/footer/Privacy/Privacy+Policy/719808">
                        <span class="style3">Privacy Policy</span></a></font><span> </span></p>
            </div>
          </div>

        </div>
      </div>


    </div>

    <script src="js/vendor/jquery.js"></script>
    <script src="js/vendor/what-input.js"></script>
    <script src="js/vendor/foundation.js"></script>
    <script src="js/app.js"></script>
    </form>

</body>
</html>

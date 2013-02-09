<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="CRM2011_Settings.ascx.cs" Inherits="WebsitePanel.Portal.ProviderControls.CRM2011_Settings" %>
<%@ Register Src="../UserControls/SelectIPAddress.ascx" TagName="SelectIPAddress" TagPrefix="wsp" %>
<table>
    <tr>
        <td class="SubHead" width="200" nowrap>Sql Server</td>
        <td>                        
            <asp:TextBox runat="server" ID="txtSqlServer" MaxLength="256" Width="200px"  />            
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtSqlServer" Display="Dynamic" ErrorMessage="*" />
        </td>
    </tr>
    
    <tr>
        <td class="SubHead" width="200" nowrap>Reporting URL </td>
        <td class="Normal" width="100%">
            <asp:TextBox runat="server" Width="200px" ID="txtReportingService" MaxLength="256" />
            <asp:RequiredFieldValidator runat="server" ControlToValidate="txtReportingService" Display="Dynamic" ErrorMessage="*" />
        </td>
    </tr>
    
    <tr>
        <td class="SubHead" width="200" nowrap>Web Application Server Domain</td>
        <td class="Normal" width="100%">
            <asp:TextBox runat="server" Width="200px" ID="txtDomainName" MaxLength="256" />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtDomainName" Display="Dynamic" ErrorMessage="*" />
        </td>
    </tr>
    
    <tr>
        <td class="SubHead" width="200" nowrap>Web Application Domain Scheme</td>
        <td class="Normal" width="100%">
          <asp:DropDownList runat="server" ID="ddlSchema">
            <asp:ListItem Text="http" Value="http" />
            <asp:ListItem Text="https" Value="https" />
          </asp:DropDownList>
        </td>
    </tr>
    
    <tr>
        <td class="SubHead" width="200" nowrap>CRM Website IP</td>
        <td class="Normal" width="100%">
            <wsp:SelectIPAddress ID="ddlCrmIpAddress" runat="server" ServerIdParam="ServerID" AllowEmptySelection="false" />            
        </td>
    </tr>
    
    <tr>
        <td class="SubHead" width="200" nowrap>CRM Website Port</td>
        <td class="Normal" width="100%">
            <asp:TextBox runat="server" ID="txtPort" Width="200px" />
            <asp:RangeValidator runat="server" ControlToValidate="txtPort" Display="dynamic" ErrorMessage="*" Type="String" MinimumValue="0" MaximumValue="9" />
        </td>
    </tr>
    
    <tr>
        <td class="SubHead" width="200" nowrap>Deployment web service</td>
        <td class="Normal" width="100%">
            <asp:TextBox runat="server" ID="txtAppRootDomain" Width="200px" />
            <asp:RequiredFieldValidator runat="server" ControlToValidate="txtAppRootDomain" ErrorMessage="*" />
        </td>
    </tr>
    
    
    
    
</table>
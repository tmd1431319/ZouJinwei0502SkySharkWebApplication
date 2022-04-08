<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="QueryStat.aspx.cs" Inherits="ZouJinwei0502SkySharkWebApplication.LOB.QueryStat" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    Business Executive
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <form id="form1" runat="server">
         <asp:Menu ID="Menu1" runat="server" BackColor="#E3EAEB" DynamicHorizontalOffset="2" Font-Names="Verdana" Font-Size="0.8em" ForeColor="#666666" Orientation="Horizontal" StaticSubMenuIndent="10px">
             <DynamicHoverStyle BackColor="#666666" ForeColor="White" />
             <DynamicMenuItemStyle HorizontalPadding="5px" VerticalPadding="2px" />
             <DynamicMenuStyle BackColor="#E3EAEB" />
             <DynamicSelectedStyle BackColor="#1C5E55" />
             <Items>
                 <asp:MenuItem NavigateUrl="~/LOB/CreateRes.aspx"  Text="Create Reservation" Value="Create Reservation"></asp:MenuItem>
                 <asp:MenuItem NavigateUrl="~/LOB/CancelRes.aspx"  Text="Cancel Reservation" Value="Cancel Reservation"></asp:MenuItem>
                 <asp:MenuItem NavigateUrl="~/LOB/QueryStat.aspx" Selected="True" Text="Query Status" Value="Query Status"></asp:MenuItem>
                 <asp:MenuItem NavigateUrl="~/LOB/ConfirmRes.aspx" Text="Confirm Reservation" Value="Confirm Reservation"></asp:MenuItem>
             </Items>
             <StaticHoverStyle BackColor="#666666" ForeColor="White" />
             <StaticMenuItemStyle HorizontalPadding="5px" VerticalPadding="2px" />
             <StaticSelectedStyle BackColor="#1C5E55" />

         </asp:Menu>
         <div class="tabContents">
         <table>
          
          <tr>
                      <td>
                          <asp:Label ID="Label1" runat="server" Text="Enquire about the status of flights and tickets"></asp:Label>
                      </td>
                      <td></td>
                      <td></td>
                      
                </tr>
             <tr>
                      <td>
                          <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/ChangePassword.aspx">Change password</asp:HyperLink>
                      </td>
                      <td>
                          <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/Logoff.aspx">Logoff</asp:HyperLink>
                      </td>
                      <td></td>
                     
                </tr>

             </table>
             <asp:Wizard ID="Wizard1" runat="server" BackColor="#F7F6F3" BorderColor="#CCCCCC" BorderStyle="Solid" BorderWidth="1px" Font-Names="Verdana" Font-Size="0.8em" ActiveStepIndex="1">
                 <HeaderStyle BackColor="#5D7B9D" BorderStyle="Solid" Font-Bold="True" Font-Size="0.9em" ForeColor="White" HorizontalAlign="Left" />
                 <NavigationButtonStyle BackColor="#FFFBFF" BorderColor="#CCCCCC" BorderStyle="Solid" BorderWidth="1px" Font-Names="Verdana" Font-Size="0.8em" ForeColor="#284775" />
                 <SideBarButtonStyle BorderWidth="0px" Font-Names="Verdana" ForeColor="White" />
                 <SideBarStyle BackColor="#7C6F57" BorderWidth="0px" Font-Size="0.9em" VerticalAlign="Top" />
                 <StepStyle BorderWidth="0px" ForeColor="#5D7B9D" />
                 <WizardSteps>
                     <asp:WizardStep ID="WizardStep1" runat="server" Title="Query Flight Status">
                         <!-- step 1 -->
                         <table>
                             <tr>
                                 <td colspan="2">
                                     <asp:Label ID="Label2" runat="server" Text="Enquire about the status of flights and tickets"></asp:Label></td>
                                  
                             </tr>
                             <tr>
                                 <td>
                                     <asp:Label ID="Label3" runat="server" Text="Flight Number"></asp:Label></td>
                                  <td>
                                      <asp:TextBox ID="txtFlightNo" runat="server"></asp:TextBox></td>
                                  <td></td>
                             </tr>
                             <tr>
                                 <td>
                                     <asp:Label ID="Label4" runat="server" Text="Class"></asp:Label></td>
                                  <td>
                                      <asp:ListBox ID="lstClass" runat="server">
                                          <asp:ListItem>Executive</asp:ListItem>
                                          <asp:ListItem>Business</asp:ListItem>
                                      </asp:ListBox></td>
                                  <td></td>

                             </tr>
                             <tr>
                                 <td>
                                     <asp:Label ID="Label5" runat="server" Text="Date"></asp:Label></td>
                                  <td>
                                      <asp:Calendar ID="calDepDate" runat="server"></asp:Calendar>
                                  </td>
                                  <td></td>
                             </tr>
                             <tr>
                                 <td></td>
                                  <td></td>
                                  <td>
                                      <asp:Button ID="btnFStatSubmit" runat="server" Text="Submit" /></td>
                             </tr>
                             <tr>
                                 <td></td>
                                  <td></td>
                                  <td></td>
                             </tr>
                         </table>
                     </asp:WizardStep>
                     <asp:WizardStep ID="WizardStep2" runat="server" Title="Query Ticket Status">
                         <!-- step 2 -->
                          <table>
                             <tr>
                                 <td>
                                     <asp:Label ID="Label6" runat="server" Text="Enquiry Ticket Status"></asp:Label></td>
                                  <td></td>
                                  <td></td>
                             </tr>
                              <tr>
                                 <td>
                                     <asp:Label ID="Label7" runat="server" Text="Ticket No"></asp:Label></td>
                                  <td>
                                      <asp:TextBox ID="txtTNo" runat="server"></asp:TextBox></td>
                                  <td></td>
                             </tr>
                              <tr>
                                 <td></td>
                                  <td></td>
                                  <td>
                                      <asp:Button ID="btnTStatSubmit" runat="server" Text="Submit" /></td>

                             </tr>
                              <tr>
                                 <td></td>
                                  <td></td>
                                  <td></td>
                             </tr>
                             
                         </table>
                     </asp:WizardStep>
                 </WizardSteps>
             </asp:Wizard>
             </div>
         </form>
</asp:Content>

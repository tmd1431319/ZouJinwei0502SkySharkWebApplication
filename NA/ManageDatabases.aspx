<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="ManageDatabases.aspx.cs" Inherits="ZouJinwei0502SkySharkWebApplication.NA.ManageDatabases" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    Network Administrator
    <style type="text/css">
        .auto-style1 {
            height: 36px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="form1" runat="server">
       <asp:Menu ID="Menu1" runat="server" BackColor="#E3EAEB" DynamicHorizontalOffset="2" Font-Names="Verdana" Font-Size="0.8em" ForeColor="#666666" Orientation="Horizontal" StaticSubMenuIndent="10px">
           <DynamicHoverStyle BackColor="#666666" ForeColor="White" />
           <DynamicMenuItemStyle HorizontalPadding="5px" VerticalPadding="2px" />
           <DynamicMenuStyle BackColor="#E3EAEB" />
           <DynamicSelectedStyle BackColor="#1C5E55" />
           <Items>
               <asp:MenuItem  Text="Manage Users" Value="Manage Users" NavigateUrl="~/NA/ManageUsers.aspx"></asp:MenuItem>
               <asp:MenuItem Selected="True" Text="Manage Datebase" Value="Manage Database" NavigateUrl="~/NA/ManageDatabases.aspx"></asp:MenuItem>
           </Items>
           <StaticHoverStyle BackColor="#666666" ForeColor="White" />
           <StaticMenuItemStyle HorizontalPadding="5px" VerticalPadding="2px" />
           <StaticSelectedStyle BackColor="#1C5E55" />
        </asp:Menu>
        <div class="tabContents">
            <table>
                <tr>
                      <td>
                          <asp:Label ID="Label1" runat="server" Text="Manage Database"></asp:Label>
                      </td>
                      <td></td>
                      <td></td>
                      <td></td>
                </tr>
                <tr>
                      
                      <td>
                          <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/ChangePassword.aspx">Change Password</asp:HyperLink>
                      </td>
                      <td>
                          <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/Logoff.aspx">Logoff</asp:HyperLink>
                      </td>
                     
                </tr>
                <tr>
                      <td>
                          <asp:Button ID="btnArchive" runat="server" BackColor="Silver" BorderColor="Blue" Text="Archive information pertaining to flights that  have departed" />
                      </td>
                      
                </tr>
                <tr>
                      <td>
                          <asp:Button ID="Button2" runat="server" BackColor="Silver" BorderColor="Blue" Text="Update customer information for the frequent fliers program" />
                      </td>
                     
                </tr>
                <tr>
                      <td></td>
                      <td></td>
                      <td></td>
                      <td></td>
                </tr>
            </table>
        </div>
   </form>
</asp:Content>

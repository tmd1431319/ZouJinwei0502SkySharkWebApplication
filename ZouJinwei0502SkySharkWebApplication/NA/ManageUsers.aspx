<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="ManageUsers.aspx.cs" Inherits="ZouJinwei0502SkySharkWebApplication.NA.ManageUsers" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    Network Administrator
    <style type="text/css">
        .auto-style1 {
            height: 31px;
        }
    </style>
    <style type="text/css">
        .auto-style1 {
            height: 90px;
        }
        .auto-style2 {
            height: 36px;
        }
    </style>
    <style type="text/css">
        .auto-style1 {
            height: 33px;
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
               <asp:MenuItem Selected="True" Text="Manage Users" Value="Manage Users" NavigateUrl="~/NA/ManageUsers.aspx"></asp:MenuItem>
               <asp:MenuItem Text="Manage Datebase" Value="Manage Database" NavigateUrl="~/NA/ManageDatabases.aspx"></asp:MenuItem>
           </Items>
           <StaticHoverStyle BackColor="#666666" ForeColor="White" />
           <StaticMenuItemStyle HorizontalPadding="5px" VerticalPadding="2px" />
           <StaticSelectedStyle BackColor="#1C5E55" />
        </asp:Menu>
        <div class="tabContents">
            <table>
                <tr>
                      <td>
                          <asp:Label ID="Label1" runat="server" Text="Manage User Account"></asp:Label>
                      </td>
                      <td></td>
                      <td></td>
                      <td></td>
                </tr>
                <tr>
                      <td></td>
                      <td>
                          <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/ChangePassword.aspx">Change Password</asp:HyperLink>
                      </td>
                      <td>
                          <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/Logoff.aspx">Logoff</asp:HyperLink>
                      </td>
                      <td></td>
                </tr>
                 <tr>
                      <td class="auto-style1">
                          <asp:Label ID="lblMessage" runat="server" Font-Bold="True" ForeColor="Red"></asp:Label></td>
                      <td class="auto-style1"></td>
                      <td class="auto-style1"></td>
                      <td class="auto-style1"></td>
                </tr>
                <tr>
                      <td class="auto-style1">
                          <asp:Label ID="Label2" runat="server" Text="Username"></asp:Label></td>
                      <td class="auto-style1">
                          <asp:TextBox ID="txtAddUserName" runat="server"></asp:TextBox></td>
                      <td class="auto-style1">
                          <asp:Label ID="Label3" runat="server" Text="Delete Username"></asp:Label></td>
                      <td class="auto-style1">
                          <asp:TextBox ID="txtDelUserName" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                      <td class="auto-style2">
                          <asp:Label ID="Label4" runat="server" Text="Password"></asp:Label></td>
                      <td class="auto-style2">
                          <asp:TextBox ID="txtAddPassword" runat="server" TextMode="Password"></asp:TextBox></td>
                      <td class="auto-style2"></td>
                      <td class="auto-style2">
                          <asp:Button ID="btnDelDelete" runat="server" Text="Delete" /></td>
                </tr>
                <tr>
                      <td>
                          <asp:Label ID="Label5" runat="server" Text="Confirm Password"></asp:Label></td>
                      <td>
                          <asp:TextBox ID="txtAddConfPassword" runat="server" TextMode="Password"></asp:TextBox></td>
                      <td></td>
                      <td></td>
                </tr>
  
                <tr>
                      <td class="auto-style1">
                          <asp:Label ID="Label7" runat="server" Text="Role"></asp:Label></td>
                      <td class="auto-style1">
                          <asp:ListBox ID="lstAddRole" runat="server">
                              <asp:ListItem>BM</asp:ListItem>
                              <asp:ListItem>NA</asp:ListItem>
                              <asp:ListItem>LOB</asp:ListItem>
                          </asp:ListBox></td>
                      <td class="auto-style1"></td>
                      <td class="auto-style1"></td>
                </tr>
                <tr>
                      <td></td>
                      <td>
                          <asp:Button ID="btnAddSubmit" runat="server" Text="Submit" /></td>
                      <td></td>
                      <td></td>
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

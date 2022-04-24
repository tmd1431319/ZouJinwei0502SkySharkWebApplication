<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="ZouJinwei0502SkySharkWebApplication._default" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 10px;
        }
        .auto-style2 {
            width: 10px;
            height: 31px;
        }
        .auto-style3 {
            height: 31px;
        width: 210px;
    }
    .auto-style4 {
        width: 210px;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>Welcome to Skyshark Airline Home Page</h1>
    <asp:Image ID="Image1" runat="server" ImageUrl="~/skyShark.png" Width="850px" Height="260px"/>
    <p>
        Launched in 1999,SkyShark Airline is a United States-based aieline that has rapidlly grown in the past years.
    </p>
    <form id="form1" runat="server">
<div>
    <table>
        <tr>
            <td colspan="2">
                <asp:Label ID="lblMessage" runat="server" Font-Bold="True" ForeColor="Red"></asp:Label>
            </td>
            <td colspan="2"></td>
           
        </tr>
        <tr>
            <td colspan="2">
                <asp:Label ID="Label1" runat="server" Text="Username"></asp:Label>
            </td>
            <td colspan="2">
                <asp:TextBox ID="txtUserName" runat="server"></asp:TextBox>
            </td>
            <td colspan="2">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtUserName" ErrorMessage="Please Specify a Valid Username"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td colspan="2">
                <asp:Label ID="Label2" runat="server" Text="Password"></asp:Label>
            </td>
            <td colspan="2">
                <asp:TextBox ID="txtPassword" runat="server" TextMode="Password"></asp:TextBox>
            </td>
            <td colspan="2">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtPassword" ErrorMessage="Please Specify a Valid Password"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td colspan="2"></td>
            <td colspan="2">
                <asp:Button ID="btnSubmit" runat="server" Text="Submit" />
            </td>
            <td colspan="2"></td>
        </tr>
        <tr>
            <td colspan="2"></td>
            <td colspan="2"></td>
            <td colspan="2"></td>
        </tr>
    </table>
</div>
    </form>

</asp:Content>

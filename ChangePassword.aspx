<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="ChangePassword.aspx.cs" Inherits="ZouJinwei0502SkySharkWebApplication.ChangePassword" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    Home
    <style type="text/css">
        .auto-style1 {
            width: 90px;
        }
    </style>
    <style type="text/css">
        .auto-style1 {
            height: 31px;
        }
    </style>
    <style type="text/css">
        .auto-style1 {
            width: 268435456px;
        }
        .auto-style2 {
            width: 268435424px;
        }
    </style>
    <style type="text/css">
        .auto-style1 {
            height: 36px;
        }
        .auto-style2 {
            height: 31px;
        }
        .auto-style3 {
            width: 268435424px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="form1" runat="server">
        <div>
            <table>
                <tr>
                   <td colspan="2">
                       <asp:Label ID="txtUser" runat="server" Text="Changing Password For:"></asp:Label>
                    </td>
                   <td></td>
                   <td colspan="2"></td>
                </tr>
                <tr>
                   <td colspan="2">
                       <asp:Label ID="Label1" runat="server" Text="Password"></asp:Label>
                    </td>
                   <td>
                       <asp:TextBox ID="txtPassword" runat="server" TextMode="Password"></asp:TextBox>
                    </td>
                   <td colspan="2">
                       <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Please Specify a Valid Password" ControlToValidate="txtPassword"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                   <td colspan="2" >
                       <asp:Label ID="Label2" runat="server" Text="Confirm Password"></asp:Label>
                    </td>
                   <td colspan="2" >
                       <asp:TextBox ID="txtConfpassword" runat="server" TextMode="Password" Height="26px"></asp:TextBox>
                    </td>
                   <td colspan="2" >
                       <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtConfpassword" ErrorMessage="Please  Specify a Valid Password"></asp:RequiredFieldValidator>
                       <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtPassword" ControlToValidate="txtConfpassword" ErrorMessage=" The Passwords Specified by you do not match.Please Try Again."></asp:CompareValidator>
                    </td>
                </tr>
                <tr>
                   <td colspan="2" ></td>
                   <td colspan="2" >
                       <asp:Button ID="btnSubmit" runat="server" Text="Submit" />
                    </td>
                   <td colspan="2" ></td>
                </tr>
                <tr>
                   <td colspan="2"></td>
                   <td></td>
                   <td colspan="2"></td>
                </tr>
                <tr>
                   <td colspan="2"></td>
                   <td></td>
                   <td colspan="2" ></td>
                </tr>
                <tr>
                   <td colspan="2"></td>
                   <td></td>
                   <td class="auto-style3"></td>
                </tr>
            </table>
        </div>
    </form>
</asp:Content>

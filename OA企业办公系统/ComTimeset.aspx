<%@ Page Title="" Language="C#" MasterPageFile="~/ComTimeset.Master" AutoEventWireup="true" CodeBehind="ComTimeset.aspx.cs" Inherits="OA企业办公系统.ComTimeset1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        #Main{
            width:800px;
            height:400px;
            border:solid 1px #00ffff;
            margin: 0 auto;
            
        }
        tr{
            width:800px;
            height:100px;
        }
        td{
            border:solid 1px #02b18b;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="Main">
        <table>
            <tr id="tr_Timeset">
                <td>员工上下班时间设置</td>
            </tr>
            <tr>
                <td>员工上班时间:</td>
                <td></td>
                <td>格式例如：08:30:00</td>
            </tr>
            <tr>
                <td>员工下班时间:</td>
                <td></td>
                <td>格式例如：16:30:00</td>
            </tr>
            <tr>
                <td>
                    <asp:Button Text="设置" runat="server" BackColor="#33ccff" />
                    <asp:Button Text="重置" runat="server" BackColor="#33ccff" />
                </td>
            </tr>
        </table>
    </div>
</asp:Content>

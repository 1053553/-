<%@ Page Title="" Language="C#" MasterPageFile="~/ChangePwd.Master" AutoEventWireup="true" CodeBehind="ChangePwd.aspx.cs" Inherits="OA企业办公系统.ChangePwd1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
         .btn{
        background-color:#0babb9;
        border:none;
        width:80px;
        height:30px;
        border-radius:8px;
         margin-left:25px;
        }
         #Main{
             width:400px;
             height:300px;
             margin:0 auto;
             border:solid 1px #0babb9;
         }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="Main">
     <div style="margin-top: 50px;margin-left:80px;">
            <div style=" height:10px;">
                    <div style="width: 100px; float: left; text-align: right;">职员名称：</div>
                    <div style="width: 100px; float: left; margin-left: 40px;">
                        <asp:Label ID="Account" runat="server" CssClass="cssTitle" Text="" Width="144px"></asp:Label>
                    </div>
            </div>
            <div style="clear:both; margin-top:30px;height:10px;">
                    <div style="width: 100px; float: left; text-align: right;">新密码：</div>
                    <div style="width: 100px; float: left; margin-left: 40px;">
                        <asp:TextBox ID="TextBox1" runat="server" Width="140px" TextMode="Password"></asp:TextBox>
                    </div>
            </div>
            <div style="clear:both; margin-top:30px;height:10px;">
                    <div style="width: 100px; float: left; text-align: right;">确认新密码：</div>
                    <div style="width: 100px; float: left; margin-left: 40px;">
                        <asp:TextBox ID="TextBox2" runat="server" Width="139px" TextMode="Password"></asp:TextBox><asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBox1"
                            ControlToValidate="TextBox2" ErrorMessage="** 两次输入的密码不一致"></asp:CompareValidator>
                    </div>
            </div>
            <div style="clear:both; margin-top:30px;height:10px;">
                    <div style="width: 250px; float: left; margin-left: 40px;">
                        <asp:Button ID="Button1" runat="server" Text="提　交"  CssClass="btn" OnClick="Button1_Click"/>
                        <asp:Button ID="Button2" runat="server" CausesValidation="False" Text="重　置" CssClass="btn" OnClick="Button2_Click" />
                    </div>
            </div>
        </div>
        </div>
</asp:Content>

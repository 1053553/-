<%@ Page Title="" Language="C#" MasterPageFile="~/Regulations.Master" AutoEventWireup="true" CodeBehind="Regulations.aspx.cs" Inherits="OA企业办公系统.Regulations1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        #DivBody{
            width:1000px;
            height:640px;
            border:solid 1px #00ffff;
            margin-top:12px;
            font-size: 12px;
        }
        #Main{
            width:600px;
            height:500px;
            border:solid 1px #808080;
            margin: 0 auto;
        }
        #TextHeadline{
            width:599px;
            height:22px;
            border:solid 1px blue;
            margin: 0 auto;
            border-bottom:2px solid #808080;
        }
        #TextHeadline>p{
             margin: 0 auto;
             width:100px;
             height:21px;
             color:blue;
        }
        #ContentPlaceHolder1_TextContent{
            margin-top:1px;
            width:596px;
            height:471px;
            float:left;
            color:blue;
            font-size: 12px;
            border:solid 1px #5da8f8;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="DivBody">
        <div id="Main">
            <div id="TextHeadline"><p>公司规章制度</p></div>
            <asp:TextBox ID="TextContent" TextMode="MultiLine" Rows="10"  runat="server" Height="472px" OnLoad="Page_Load" Width="596px" />
        </div>
    </div>
</asp:Content>

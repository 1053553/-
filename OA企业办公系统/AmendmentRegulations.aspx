<%@ Page Title="" Language="C#" MasterPageFile="~/AmendmentRegulations.Master" AutoEventWireup="true" CodeBehind="AmendmentRegulations.aspx.cs" Inherits="OA企业办公系统.AmendmentRegulations1" %>
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
        #DivButton{
            width:600px;
            height:32px;
            margin: 0 auto;
            border:2px solid #808080;
        }
        #DivButtonInterior{
            width:300px;
            height:59px;
            margin: 0 auto;
        }
        .btn{
        background-color:#0babb9;
        border:none;
        width:80px;
        height:25px;
        border-radius:8px;
        margin-top:2px;
        margin-left:35px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div id="DivBody">
        <div id="Main">
            <div id="TextHeadline"><p>公司规章制度</p></div>
            <asp:TextBox ID="TextContents" TextMode="MultiLine" Rows="10"  runat="server" Height="472px" OnLoad="Page_Load" Width="596px" />
        </div>
         <div id="DivButton">
             <div id="DivButtonInterior">
                 <asp:Button Text="提交" runat="server" CssClass="btn" ID="Submit" OnClick="Submit_Click" OnClientClick="return confirm('确定修改吗？')"/>
                 <asp:Button Text="重置" runat="server" CssClass="btn" ID="Reset" OnClick="Reset_Click"/>
             </div>
         </div>
      </div>
</asp:Content>

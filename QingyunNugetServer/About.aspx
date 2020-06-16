<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="QingyunNugetServer.About" %>

<%@ Import Namespace="NuGet.Server" %>
<%@ Import Namespace="NuGet.Server.App_Start" %>
<%@ Import Namespace="NuGet.Server.Infrastructure" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div>
        <h2>关于</h2>
        <p>RichGet Server v<%= typeof(NuGetODataConfig).Assembly.GetName().Version %></p>

         


        <p>2020.6.16</p>

    </div>

</asp:Content>

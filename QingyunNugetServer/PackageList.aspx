<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="PackageList.aspx.cs" Inherits="QingyunNugetServer.PackageList" %>

<%@ Import Namespace="NuGet.Server" %>
<%@ Import Namespace="NuGet.Server.App_Start" %>
<%@ Import Namespace="NuGet.Server.Infrastructure" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h2>软件包列表</h2>


    <% Response.Redirect(VirtualPathUtility.ToAbsolute("~/nuget/Packages")); %>

</asp:Content>

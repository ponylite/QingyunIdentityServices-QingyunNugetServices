<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="Help.aspx.cs" Inherits="QingyunNugetServer.Help" %>

<%@ Import Namespace="NuGet.Server" %>
<%@ Import Namespace="NuGet.Server.App_Start" %>
<%@ Import Namespace="NuGet.Server.Infrastructure" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div>
        <h2>帮助</h2>

        <p> Version <%= typeof(NuGetODataConfig).Assembly.GetName().Version %></p>


        <h3>仓库</h3>
        <blockquote>
            <%= Helpers.GetRepositoryUrl(Request.Url, Request.ApplicationPath) %>
        </blockquote>


        <h3>推送</h3>
        <blockquote>
            <strong>nuget.exe push {package file} {apikey} -Source <%= Helpers.GetPushUrl(Request.Url, Request.ApplicationPath) %></strong>
        </blockquote>



    </div>

</asp:Content>

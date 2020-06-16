﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="QingyunNugetServer.TestWithMasterPage" %>

<%@ Import Namespace="NuGet.Server" %>
<%@ Import Namespace="NuGet.Server.App_Start" %>
<%@ Import Namespace="NuGet.Server.Infrastructure" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div>
        <h2>You are running NuGet.Server v<%= typeof(NuGetODataConfig).Assembly.GetName().Version %></h2>
        <p>
            Click <a href="<%= VirtualPathUtility.ToAbsolute("~/nuget/Packages") %>">here</a> to view your packages.
        </p>
        <fieldset style="width: 800px">
            <legend><strong>Repository URLs</strong></legend>
            In the package manager settings, add the following URL to the list of 
            Package Sources:
            <blockquote>
                <strong><%= Helpers.GetRepositoryUrl(Request.Url, Request.ApplicationPath) %></strong>
            </blockquote>
            <% if (string.IsNullOrEmpty(ConfigurationManager.AppSettings["apiKey"]))
                { %>
            To enable pushing packages to this feed using the <a href="https://www.nuget.org/downloads">NuGet command line tool</a> (nuget.exe), set the <code>apiKey</code> appSetting in web.config.
            <% }
                else
                { %>
            Use the command below to push packages to this feed using the <a href="https://www.nuget.org/downloads">NuGet command line tool</a> (nuget.exe).
            <blockquote>
                <strong>nuget.exe push {package file} {apikey} -Source <%= Helpers.GetPushUrl(Request.Url, Request.ApplicationPath) %></strong>
            </blockquote>
            <% } %>
        </fieldset>

        <% if (Request.IsLocal || ServiceResolver.Current.Resolve<NuGet.Server.Core.Infrastructure.ISettingsProvider>().GetBoolSetting("allowRemoteCacheManagement", false))
            { %>
        <fieldset style="width: 800px">
            <legend><strong>Adding packages</strong></legend>

            To add packages to the feed put package files (.nupkg files) in the folder
            <code><% = PackageUtility.PackagePhysicalPath %></code><br />
            <br />

            Click <a href="<%= VirtualPathUtility.ToAbsolute("~/nuget/clear-cache") %>">here</a> to clear the package cache.
        </fieldset>
        <% } %>
    </div>
</asp:Content>

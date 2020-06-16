<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="ClearCache.aspx.cs" Inherits="QingyunNugetServer.ClearCache" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    
    <% Response.Redirect(VirtualPathUtility.ToAbsolute("~/nuget/clear-cache")); %>

</asp:Content>

<%@ Page Title="Simple sample" Language="C#" MasterPageFile="~/Page.master" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="RequireSamples._default" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Head" runat="server">
    <script>
        function ChangeColor() {
            require(["graphics/drawing"], function (drawing) {
                var e = document.getElementById("colors");
                var color = e.options[e.selectedIndex].value;
                fillBody(color);
            });
        }
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Body" runat="server">
    <select id="colors">
      <option value="red">Red</option>
      <option value="blue">Blue</option>
      <option value="orange">Orange</option>
      <option value="yellow">Yellow</option>
    </select>
    <input type="button" id="btn" value="Change color" onclick="ChangeColor()" />
</asp:Content>

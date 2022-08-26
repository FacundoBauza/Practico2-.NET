<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Prueba.aspx.cs" Inherits="WFP.Prueba" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <asp:TextBox ID="documento" runat="server"></asp:TextBox>
    <asp:Button ID="buscar" runat="server" Text="Buscar" />
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" DataSourceID="SqlDataSource1">
        <Columns>
            <asp:CommandField ShowSelectButton="True" />
        </Columns>
    </asp:GridView>

    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:PruebaP2ConnectionString2 %>" SelectCommand="SELECT * FROM [Persona] WHERE ([Documento] = @Documento)">
        <SelectParameters>
            <asp:ControlParameter ControlID="documento" Name="Documento" PropertyName="Text" Type="Int32" />
        </SelectParameters>

    </asp:SqlDataSource>
    

</asp:Content>


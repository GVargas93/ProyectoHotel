<%@ Page Title="" Language="C#" MasterPageFile="~/PaginaMaestraAdministrador.master" AutoEventWireup="true" CodeFile="RegistroEstadias.aspx.cs" Inherits="RegistroEstadias" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
       <section class="row">
        <div class="col-md-6">
    <div>
        <asp:Label ID="Label1" runat="server" Text="Fecha de Entrada"></asp:Label>
    </div>
    <div>
        <asp:Calendar ID="Fecha_entrada" runat="server"></asp:Calendar>
    </div>
    <div>
        <asp:Label ID="Label2" runat="server" Text="Fecha Final"></asp:Label>
    </div>
    <div>

        <asp:Calendar ID="Fecha_final" runat="server"></asp:Calendar>
    </div>
    <div>
        <asp:Label ID="Label3" runat="server" Text="Costo Total"></asp:Label>
    </div>
    <div>
         <asp:TextBox ID="Costo" cssclass="form-control" runat="server"></asp:TextBox>
    </div>
    <div>
        <asp:Label ID="Label4" runat="server" Text="Observacion"></asp:Label>
    </div>
       <div>
           <asp:TextBox ID="Observacion" runat="server" cssclass="form-control"></asp:TextBox>
    </div>
       <div>
        <asp:Label ID="Label5" runat="server" Text="Habitacion"></asp:Label>
    </div>
       <div>
           <asp:DropDownList ID="Habitacion" runat="server" DataSourceID="SqlDataSource3" DataTextField="lNumeroHabitacion" DataValueField="lHabitacion_iD"></asp:DropDownList>
           <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:DB_HotelConnectionString %>" SelectCommand="SELECT [lHabitacion_iD], [lNumeroHabitacion] FROM [Tbl_Habitacion]"></asp:SqlDataSource>
           <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:DB_HotelConnectionString %>" SelectCommand="SELECT [sNombre], [lTipoHabitacion_iD] FROM [Tbl_TipoHabitacion]"></asp:SqlDataSource>
           <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DB_HotelConnectionString %>" SelectCommand="SELECT [lCliente_iD], [sDocumento] FROM [Tbl_Cliente]"></asp:SqlDataSource>
    </div>
            <div>
                <asp:Label ID="Label7" runat="server" Text="Adulto"></asp:Label>
            </div>
                   <div>
           <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource8" DataTextField="numero" DataValueField="id"></asp:DropDownList>
                       <asp:SqlDataSource ID="SqlDataSource8" runat="server" ConnectionString="<%$ ConnectionStrings:DB_HotelConnectionString %>" SelectCommand="SELECT [id], [numero] FROM [Adulto]"></asp:SqlDataSource>
                       re<asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:DB_HotelConnectionString %>" SelectCommand="SELECT [sNombre], [lCliente_iD] FROM [Tbl_Cliente]"></asp:SqlDataSource>
    </div>
                  <div>
                <asp:Label ID="Label8" runat="server" Text="Niños"></asp:Label>
            </div>
                   <div>
           <asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="SqlDataSource7" DataTextField="numero" DataValueField="id"></asp:DropDownList>
                       <asp:SqlDataSource ID="SqlDataSource7" runat="server" ConnectionString="<%$ ConnectionStrings:DB_HotelConnectionString %>" SelectCommand="SELECT [id], [numero] FROM [Niños]"></asp:SqlDataSource>
           <asp:SqlDataSource ID="SqlDataSource6" runat="server" ConnectionString="<%$ ConnectionStrings:DB_HotelConnectionString %>" SelectCommand="SELECT [sNombre], [lCliente_iD] FROM [Tbl_Cliente]"></asp:SqlDataSource>
    </div>
       <div>
        <asp:Label ID="Label6" runat="server" Text="Cliente"></asp:Label>
    </div>
       <div>
           <asp:DropDownList ID="Cliente" runat="server" DataSourceID="SqlDataSource4" DataTextField="sNombre" DataValueField="lCliente_iD"></asp:DropDownList>
           <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:DB_HotelConnectionString %>" SelectCommand="SELECT [sNombre], [lCliente_iD] FROM [Tbl_Cliente]"></asp:SqlDataSource>
    </div>
              </div>
    </section>
</asp:Content>


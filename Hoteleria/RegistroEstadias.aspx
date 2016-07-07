<%@ Page Title="" Language="C#" MasterPageFile="~/PaginaMaestraAdministrador.master" AutoEventWireup="true" CodeFile="RegistroEstadias.aspx.cs" Inherits="RegistroEstadias" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <section class="row">
        <div class="col-md-6">
            <div>
                <asp:Label ID="lblFechaEntrada" runat="server" Text="Fecha de Entrada"></asp:Label>
            </div>
            <div>
                <asp:Calendar ID="Fecha_entrada" runat="server"></asp:Calendar>
            </div>
            <div>
                <asp:Label ID="lblFechaSalida" runat="server" Text="Fecha Final"></asp:Label>
            </div>
            <div>

                <asp:Calendar ID="Fecha_final" runat="server"></asp:Calendar>
            </div>
            <div>
                <asp:Label ID="Label3" runat="server" Text="Costo Total"></asp:Label>
            </div>
            <div>
                <asp:TextBox ID="Costo" CssClass="form-control" runat="server"></asp:TextBox>
            </div>
            <div>
                <asp:Label ID="Label4" runat="server" Text="Observacion"></asp:Label>
            </div>
            <div>
                <asp:TextBox ID="Observacion" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
            <div>
                <asp:Label ID="Label5" runat="server" Text="Habitacion"></asp:Label>
            </div>
            <div>
                <asp:DropDownList ID="Habitacion" runat="server"></asp:DropDownList>

            </div>
            <div>
                <asp:Label ID="Label7" runat="server" Text="Adulto"></asp:Label>
            </div>
            <div>
                <asp:DropDownList ID="DropDownList1" runat="server"></asp:DropDownList>

            </div>
            <div>
                <asp:Label ID="Label8" runat="server" Text="Niños"></asp:Label>
            </div>
            <div>
                <asp:DropDownList ID="DropDownList2" runat="server"></asp:DropDownList>

            </div>
            <div>
                <asp:Label ID="Label6" runat="server" Text="Cliente"></asp:Label>
            </div>
            <div>
                <asp:DropDownList ID="Cliente" runat="server"></asp:DropDownList>

            </div>
            <asp:LinkButton ID="SaveButtonn" runat="server"
                CssClass="btn btn-primary"
                ValidationGroup="tipoHabitacion"
                OnClick="SaveButtonn_Click">
                Guardar
            </asp:LinkButton>
        </div>
    </section>
</asp:Content>


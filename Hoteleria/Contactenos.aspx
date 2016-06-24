<%@ Page Title="" Language="C#" MasterPageFile="~/PaginaMaestraCliente.master" AutoEventWireup="true" CodeFile="Contactenos.aspx.cs" Inherits="Contactenos" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <section class="row">
        <div class="col-md-6" itemid="u">
            <asp:Panel ID="Error" runat="server" Visible="false" CssClass="alert alert-danger" role="alert">
            </asp:Panel>
            <br />
            <br />
            <br />
            <br />
            <br />

            <div class="form-group">
                <asp:Label runat="server" Text="Nombre"></asp:Label>
                <asp:TextBox ID="Nombre" runat="server"
                    CssClass="form-control">
                </asp:TextBox>
                <asp:RequiredFieldValidator runat="server"
                    ControlToValidate="Nombre"
                    Display="Dynamic"
                    ForeColor="Blue"
                    ValidationGroup="Contactenos"
                    ErrorMessage="Debe ingresar el nombre del cliente">
                </asp:RequiredFieldValidator>
            </div>

            <div class="form-group">
                <asp:Label runat="server" Text="Correo"></asp:Label>
                <asp:TextBox ID="Correo" runat="server"
                    CssClass="form-control">
                </asp:TextBox>
                <asp:RequiredFieldValidator runat="server"
                    ControlToValidate="Correo"
                    Display="Dynamic"
                    ForeColor="Blue"
                    ValidationGroup="Contactenos"
                    ErrorMessage="Debe ingresar el nombre del cliente">
                </asp:RequiredFieldValidator>
            </div>

            <div class="form-group">
                <asp:Label runat="server" Text="Comentario"></asp:Label>
                <asp:TextBox ID="Textbox1" runat="server"
                    CssClass="form-control" Height="247px" Width="475px"></asp:TextBox>
            </div>
            <div class="form-group">
                &nbsp;
            </div>

            <asp:LinkButton ID="botonguardar" runat="server"
                CssClass="btn btn-primary"
                ValidationGroup="Contactenos"
                OnClick="botonguardar_Click">
                Enviar
            </asp:LinkButton>

            <asp:Label ID="lbmensaje" runat="server" BackColor="White" ForeColor="Red"></asp:Label>

        </div>
    </section>

</asp:Content>


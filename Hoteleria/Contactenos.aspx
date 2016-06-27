<%@ Page Title="" Language="C#" MasterPageFile="~/PaginaMaestraCliente.master" AutoEventWireup="true" CodeFile="Contactenos.aspx.cs" Inherits="Contactenos" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <div id="googleMap" style="height:400px;width:100%;"></div>

<div id="contact" class="container">
  <h3 class="text-center">Contactenos</h3>
  <p class="text-center"><em>Envianos un Mensaje!</em></p>

  <div class="row">
    <div class="col-md-4">
      <p>HotelNur!!!.</p>
      <p><span class="glyphicon glyphicon-map-marker"></span>Av. El Trompillo 2do Anillo entre René Moreno y Monseñor Santisteban Nro. 4432 </p>
      <p><span class="glyphicon glyphicon-phone"></span>Teléfono: +591 71619342</p>
      <p><span class="glyphicon glyphicon-envelope"></span>Email: hotelNur2016@mail.com</p>
    </div>
    <div class="col-md-8">
      <div class="row">
        <div class="col-sm-6 form-group">
          <input class="form-control" id="name" name="name" placeholder="Nombre" type="text" required>
        </div>
        <div class="col-sm-6 form-group">
          <input class="form-control" id="email" name="email" placeholder="Email" type="email" required>
        </div>
      </div>
      <textarea class="form-control" id="comments" name="comments" placeholder="Comentenos..." rows="5"></textarea>
      <br>
      <div class="row">
        <div class="col-md-12 form-group">
          <button class="btn pull-right" type="submit">Enviar</button>
        </div>
      </div>
    </div>
  </div>
  </div>


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


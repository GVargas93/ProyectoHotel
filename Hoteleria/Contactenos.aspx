<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Contactenos.aspx.cs" Inherits="Contactenos" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style type="text/css">
        .form-control {}
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="content" runat="Server">
    <section class="row">
        <div class="col-md-6" itemid="u">
            <asp:panel id="Error" runat="server" visible="false" cssclass="alert alert-danger" role="alert">
            </asp:panel>

                   <div class="form-group">
                <asp:label runat="server" text="Nombre"></asp:label>
                <asp:textbox id="Nombre" runat="server"
                    cssclass="form-control">
    </asp:textbox>
                <asp:requiredfieldvalidator runat="server"
                    controltovalidate="Nombre"
                    display="Dynamic"
                    forecolor="Blue"
                    validationgroup="Contactenos"
                    errormessage="Debe ingresar el nombre del cliente">

                 </asp:requiredfieldvalidator>

            </div>

            <div class="form-group">
                <asp:label runat="server" text="Correo"></asp:label>
                <asp:textbox id="Correo" runat="server"
                    cssclass="form-control">
    </asp:textbox>
                <asp:requiredfieldvalidator runat="server"
                    controltovalidate="Correo"
                    display="Dynamic"
                    forecolor="Blue"
                    validationgroup="Contactenos"
                    errormessage="Debe ingresar el nombre del cliente">

                 </asp:requiredfieldvalidator>

            </div>

            <div class="form-group">
                <asp:label runat="server" text="Comentario"></asp:label>
                <asp:textbox id="Textbox1" runat="server"
                    cssclass="form-control" Height="247px" Width="475px"></asp:textbox>

            </div>
            <div class="form-group">
                &nbsp;</div>

            <asp:linkbutton id="botonguardar" runat="server"
                cssclass="btn btn-primary"
                validationgroup="Contactenos"
                onclick="botonguardar_Click">
                
                Enviar
       
            </asp:linkbutton>
         
            <asp:Label ID="lbmensaje" runat="server" BackColor="White" ForeColor="Red"></asp:Label>
         
        </div>
    </section>
    
</asp:Content>


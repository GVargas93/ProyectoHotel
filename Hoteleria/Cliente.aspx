<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Cliente.aspx.cs" Inherits="Cliente" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="content" Runat="Server">
        <section class="row">
        <div class="col-md-6">
                        <asp:Panel ID="ErrorPanel" runat="server" Visible="false"
                CssClass="alert alert-danger" role="alert">
                Error al Guardar el tipo de Habitacion
            </asp:Panel>


            <div class="form-group">
                <label>nombre</label>
                <asp:TextBox ID="nombreTextBox" runat="server" CssClass="form-control"></asp:TextBox>
                <asp:RequiredFieldValidator runat="server"
                    ControlToValidate="nombreTextBox"
                    Display="Dynamic"
                    ForeColor="Red"
                    ValidationGroup="tipoHabitacion"
                    ErrorMessage="Debe ingresar el nombre">
                </asp:RequiredFieldValidator>
            </div>

            <div class="form-group">
                <label>Apellido</label>
                <asp:TextBox ID="apellido" runat="server" CssClass="form-control"></asp:TextBox>
                <asp:RequiredFieldValidator runat="server"
                    ControlToValidate="apellido"
                    Display="Dynamic"
                    ForeColor="Red"
                    ValidationGroup="tblClientes"
                    ErrorMessage="Debe ingresar el apellido">
                </asp:RequiredFieldValidator>
            </div>
            
            <div class="form-group">
                <label>Direccion</label>
                <asp:TextBox ID="Direccion" runat="server" CssClass="form-control"></asp:TextBox>
                <asp:RequiredFieldValidator runat="server"
                    ControlToValidate="Direccion"
                    Display="Dynamic"
                    ForeColor="Red"
                    ValidationGroup="tblClientes"
                    ErrorMessage="Debe ingresar el Direccion">
                </asp:RequiredFieldValidator>
            </div>

            <div class="form-group">
                <label>descripcion</label>
                <asp:TextBox ID="Telefono" runat="server" CssClass="form-control"></asp:TextBox>
                <asp:RequiredFieldValidator runat="server"
                    ControlToValidate="Telefono"
                    Display="Dynamic"
                    ForeColor="Red"
                    ValidationGroup="tblClientes"
                    ErrorMessage="Debe ingresar el Telefono ">
                </asp:RequiredFieldValidator>
            </div>
            
            <div class="form-group">
                <label>Documentacion</label>
                <asp:TextBox ID="Documentacion" runat="server" CssClass="form-control"></asp:TextBox>
                <asp:RequiredFieldValidator runat="server"
                    ControlToValidate="Documentacion"
                    Display="Dynamic"
                    ForeColor="Red"
                    ValidationGroup="tblClientes"
                    ErrorMessage="Debe ingresar el Documentacion">
                     </asp:RequiredFieldValidator>
            </div>
<div>

    <asp:label runat="server" text="Nacionalidad"></asp:label>
    <asp:dropdownlist runat="server" Height="16px" Width="148px" DataSourceID="SqlDataSource1" DataTextField="sNacionalidad" DataValueField="sNacionalidad"></asp:dropdownlist>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DB_HotelConnectionString %>" SelectCommand="   select distinct [sNacionalidad]   FROM [DB_Hotel].[dbo].[Tbl_Nacionalidad]"></asp:SqlDataSource>
</div>

<div>

    <asp:label runat="server" text="Ciudad "></asp:label>
    <asp:dropdownlist runat="server" Height="16px" Width="145px" DataSourceID="SqlDataSource2" DataTextField="sPais" DataValueField="sPais" style="margin-left: 0px"></asp:dropdownlist>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:DB_HotelConnectionString %>" SelectCommand="  select  [sPais]  FROM [DB_Hotel].[dbo].[Tbl_Nacionalidad] where [sNacionalidad]=[sNacionalidad];"></asp:SqlDataSource>
</div>

            <br />


            <asp:LinkButton ID="SaveButtonn" runat="server"
                CssClass="btn btn-primary"
                ValidationGroup="tipoHabitacion"
                OnClick="SaveButtonn_Click">
                Guardar
            </asp:LinkButton>
            <asp:HyperLink runat="server" CssClass="btn"
                NavigateUrl="~/ListaTipoHabitacion.aspx">
                Cancelar
            </asp:HyperLink>

            <asp:HiddenField ID="TipoHabitacionIdHiddenField" runat="server"
                Value="0" />

               </div>
    </section>

</asp:Content>


<%@ Page Title="" Language="C#" MasterPageFile="~/PaginaMaestraAdministrador.master" AutoEventWireup="true" CodeFile="RegistroHabitacion.aspx.cs" Inherits="RegistroHabitacion" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <br />
    <br />
    <br />
    <br />
    <br />
    <div class="container">
        <div class="row">
            <div class="col-md-2"></div>
            <div class="col-md-6">
                <label>Numero Habitacion</label>
                <asp:TextBox ID="nombreTextBox" runat="server" CssClass="form-control"></asp:TextBox>
                <asp:RequiredFieldValidator runat="server"
                    ControlToValidate="nombreTextBox"
                    Display="Dynamic"
                    ForeColor="Red"
                    ValidationGroup="tipoHabitacion"
                    ErrorMessage="Debe ingresar el nombre">
                </asp:RequiredFieldValidator>
                <label>Estado</label><br />
                <asp:DropDownList CssClass="form-control" ID="DropDownList1" runat="server">

                    <asp:ListItem Text="No Disponible" Value="1" />
                    <asp:ListItem Text="Disponible" Value="0" />

                </asp:DropDownList><br />

                <label>Costo</label>
                <asp:TextBox ID="apellido" runat="server" CssClass="form-control"></asp:TextBox>
                <asp:RequiredFieldValidator runat="server"
                    ControlToValidate="apellido"
                    Display="Dynamic"
                    ForeColor="Red"
                    ValidationGroup="tblClientes"
                    ErrorMessage="Debe ingresar el apellido">
                </asp:RequiredFieldValidator>

                <label>Descripcion</label>
                <asp:TextBox ID="Direccion" runat="server" CssClass="form-control"></asp:TextBox>
                <asp:RequiredFieldValidator runat="server"
                    ControlToValidate="Direccion"
                    Display="Dynamic"
                    ForeColor="Red"
                    ValidationGroup="tblClientes"
                    ErrorMessage="Debe ingresar el Direccion">
                </asp:RequiredFieldValidator>

                <label>Tipo Habitacion</label><br />
                <asp:DropDownList ID="tipo" runat="server" CssClass="form-control" DataSourceID="SqlDataSource2" DataTextField="sNombre" DataValueField="lTipoHabitacion_iD" Style="margin-left: 0px"></asp:DropDownList><br />
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:DB_HotelConnectionString %>" SelectCommand="SELECT [sNombre], [lTipoHabitacion_iD] FROM [Tbl_TipoHabitacion]"></asp:SqlDataSource>



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
        </div>
        <div class="col-md-4"></div>
    </div>
    <br />
    <div class="container">
        <div class="row">
            <div class="col-md-2"></div>
            <div class="col-md-8">
                <asp:GridView ID="ClienteGridView" runat="server"
                    CssClass="table" GridLines="None"
                    AutoGenerateColumns="false"
                    OnRowCommand="ClienteGridView_RowCommand">
                    <Columns>
                        <asp:TemplateField HeaderText="Editar">
                            <ItemTemplate>
                                <asp:LinkButton ID="EditButton" runat="server" CommandName="Editar"
                                    CommandArgument='<%# Eval("HabitacionID") %>'>
                                <i class="glyphicon glyphicon-pencil"></i>
                                </asp:LinkButton>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Eliminar">
                            <ItemTemplate>
                                <asp:LinkButton ID="DeleteButton" runat="server" CommandName="Eliminar"
                                    CommandArgument='<%# Eval("HabitacionID") %>'>
                                <i class="glyphicon glyphicon-remove"></i>
                                </asp:LinkButton>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:BoundField DataField="NumeroHabitacion" HeaderText="Numero Habitacion" />
                        <asp:BoundField DataField="EstadoForDisplay" HeaderText="Estado" />
                        <asp:BoundField DataField="Costo" HeaderText="Costo" />
                        <asp:BoundField DataField="Descripcion" HeaderText="Descripcion" />
                        <asp:BoundField DataField="TipoHabitacionFK" HeaderText="Tipo Habitacion" />
                    </Columns>

                </asp:GridView>
            </div>
        </div>
    </div>

</asp:Content>


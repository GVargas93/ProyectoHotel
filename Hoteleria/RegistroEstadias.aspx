<%@ Page Title="" Language="C#" MasterPageFile="~/PaginaMaestraAdministrador.master" AutoEventWireup="true" CodeFile="RegistroEstadias.aspx.cs" Inherits="RegistroEstadias" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <br />
    <br />
    <br />
    <br />
    <section class="row">
        <div class="col-md-6">
            <div>
                <asp:Label ID="lblFechaEntrada" runat="server" Text="Fecha de Entrada"></asp:Label>
            </div>
            <div>
<<<<<<< HEAD
                <asp:TextBox ID="txtFechaSalida" runat="server" CssClass="form-control" placeholder="Fecha de Salida"> </asp:TextBox>
                <script type="text/javascript">
                    var picker = new Pikaday(
                        {
                            field: document.getElementById('<%= txtFechaSalida.ClientID %>'),
                            firstDay: 1,
                            minDate: new Date('2000-01-01'),
                            maxDate: new Date('2020-01-01'),
                            yearRange: [2000, 2020],
                            numberOfMonths: 1,
                            theme: 'dark-theme'
                        });
                </script>
=======
                <asp:Calendar  runat="server"></asp:Calendar>
                <asp:TextBox ID="Fecha_entrada" runat="server" />
>>>>>>> 360ecd1cfd6779b8a1df6b6914138dd5708c1ea2
            </div>
            <div>
                <asp:Label ID="lblFechaSalida" runat="server" Text="Fecha Final"></asp:Label>
            </div>
            <div>

<<<<<<< HEAD
                <asp:TextBox ID="txtFechaEntrada" runat="server" CssClass="form-control" placeholder="Fecha de Salida"> </asp:TextBox>
                <script type="text/javascript">
                    var picker = new Pikaday(
                        {
                            field: document.getElementById('<%= txtFechaEntrada.ClientID %>'),
                            firstDay: 1,
                            minDate: new Date('2000-01-01'),
                            maxDate: new Date('2020-01-01'),
                            yearRange: [2000, 2020],
                            numberOfMonths: 1,
                            theme: 'dark-theme'
                        });
                </script>
=======
                <asp:Calendar  runat="server"></asp:Calendar>
                <asp:TextBox ID="Fecha_final" runat="server" />
>>>>>>> 360ecd1cfd6779b8a1df6b6914138dd5708c1ea2
            </div>
            <div>
                <asp:Label ID="lblCosto" runat="server" Text="Costo Total"></asp:Label>
            </div>
            <div>
                <asp:TextBox ID="txtCosto" CssClass="form-control" runat="server"></asp:TextBox>
            </div>
            <div>
                <asp:Label ID="lblObservacion" runat="server" Text="Observacion"></asp:Label>
            </div>
            <div>
                <asp:TextBox ID="txtObservacion" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
            <div>
                <asp:Label ID="lblHabitacion" runat="server" Text="Habitacion"></asp:Label>
            </div>
            <div>
<<<<<<< HEAD
                <asp:DropDownList ID="ddlHabitacion" runat="server"></asp:DropDownList>
=======
                <asp:DropDownList ID="ddlHabitacion" runat="server" DataSourceID="sdsHabitacion1" DataTextField="sNombre" DataValueField="lTipoHabitacion_iD_FK"></asp:DropDownList>
>>>>>>> 360ecd1cfd6779b8a1df6b6914138dd5708c1ea2

                <asp:SqlDataSource runat="server" ID="sdsHabitacion1" ConnectionString='<%$ ConnectionStrings:DB_HotelConnectionString %>' SelectCommand="SELECT Tbl_Habitacion.lHabitacion_iD, Tbl_Habitacion.lTipoHabitacion_iD_FK, Tbl_TipoHabitacion.lTipoHabitacion_iD, Tbl_TipoHabitacion.sNombre FROM Tbl_Habitacion INNER JOIN Tbl_TipoHabitacion ON Tbl_Habitacion.lTipoHabitacion_iD_FK = Tbl_TipoHabitacion.lTipoHabitacion_iD AND Tbl_Habitacion.lTipoHabitacion_iD_FK = Tbl_TipoHabitacion.sNombre WHERE (Tbl_Habitacion.lHabitacion_iD = Tbl_Habitacion.lTipoHabitacion_iD_FK)"></asp:SqlDataSource>
            </div>
            <div>
<<<<<<< HEAD
                <asp:Label ID="lblAdulto" runat="server" Text="Adulto"></asp:Label>
            </div>
            <div>
                <asp:DropDownList ID="ddlAdulto" runat="server">
                    <asp:ListItem Text="1" />
                    <asp:ListItem Text="2" />
                    <asp:ListItem Text="3" />
                    <asp:ListItem Text="4" />
                    <asp:ListItem Text="5" />
                    <asp:ListItem Text="6" />
                    <asp:ListItem Text="7" />
                    <asp:ListItem Text="8" />
                    <asp:ListItem Text="9" />
                </asp:DropDownList>

            </div>
            <div>
                <asp:Label ID="lblNinhos" runat="server" Text="Niños"></asp:Label>
            </div>
            <div>
                <asp:DropDownList ID="ddlNinhos" runat="server">
                    <asp:ListItem Text="1" />
                    <asp:ListItem Text="2" />
                    <asp:ListItem Text="3" />
                    <asp:ListItem Text="4" />
                    <asp:ListItem Text="5" />
                    <asp:ListItem Text="6" />
                    <asp:ListItem Text="7" />
                    <asp:ListItem Text="8" />
                    <asp:ListItem Text="9" />
                </asp:DropDownList>
=======
                <asp:Label ID="lblAdultos" runat="server" Text="Cantidad Adulto"></asp:Label>
            </div>
            <div>
                <asp:TextBox ID="CantidadAdultos" runat="server" placeholder="Cantidad Adultos"/>

            </div>
            <div>
                <asp:Label ID="lblNinhos" runat="server" Text="Cantidad Niños"></asp:Label>
            </div>
            <div>
                <asp:TextBox ID="CantidadNinhos" runat="server" placeholder="Cantidad Niños"/>
>>>>>>> 360ecd1cfd6779b8a1df6b6914138dd5708c1ea2

            </div>
            <div>
                <asp:Label ID="lblCliente" runat="server" Text="Cliente"></asp:Label>
            </div>
            <div>
<<<<<<< HEAD
                <asp:DropDownList ID="ddlCliente" runat="server"></asp:DropDownList>
=======
                <asp:DropDownList ID="ddlCliente" runat="server" DataSourceID="sdsCliente" DataTextField="sNombre" DataValueField="lCliente_iD"></asp:DropDownList>
>>>>>>> 360ecd1cfd6779b8a1df6b6914138dd5708c1ea2

                <asp:SqlDataSource runat="server" ID="sdsCliente" ConnectionString='<%$ ConnectionStrings:DB_HotelConnectionString %>' SelectCommand="SELECT [lCliente_iD], [sNombre] FROM [Tbl_Cliente]"></asp:SqlDataSource>
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


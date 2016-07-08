<%@ Page Title="" Language="C#" MasterPageFile="~/PaginaMaestraAdministrador.master" AutoEventWireup="true" CodeFile="RegistroEstadias.aspx.cs" Inherits="RegistroEstadias" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <div class="container">
        <div class="row">
            <div class="col-md-2"></div>
            <div class="col-md-6">
                <div class="form-group">
                    <label> Fecha de Entrada</label>
                    <script src="Scripts/pikaday.js"></script>
                    <asp:TextBox ID="txtEntrada" runat="server" CssClass="form-control" placeholder="Fecha de Salida"> </asp:TextBox>
                    <script src="js/pikaday.js"></script>
                    <script>
                        var picker = new Pikaday(
                        {
                            field: document.getElementById('<%= txtEntrada.ClientID %>'),
                            firstDay: 1,
                            minDate: new Date(),
                            maxDate: new Date(2020, 12, 31),
                            yearRange: [2000, 2020]
                        });
                    </script>

                    <label> Fecha de Salida</label>
                    <script src="Scripts/pikaday.js"></script>
                    <asp:TextBox ID="txtSalida" runat="server" CssClass="form-control" placeholder="Fecha de Salida"> </asp:TextBox>
                    <script src="js/pikaday.js"></script>
                    <script>
                        var picker = new Pikaday(
                        {
                            field: document.getElementById('<%= txtSalida.ClientID %>'),
                            firstDay: 1,
                            minDate: new Date(),
                            maxDate: new Date(2020, 12, 31),
                            yearRange: [2000, 2020]
                        });
                    </script>

                    <label>Costo</label>
                    <asp:TextBox ID="txtCosto" CssClass="form-control" runat="server"></asp:TextBox>

                    <label>Observacion</label>
                    <asp:TextBox ID="txtObservacion" runat="server" CssClass="form-control"></asp:TextBox>

                    <label>Habitacion</label><br />
                    <asp:DropDownList ID="ddlHabitacion" CssClass="form-control" runat="server" DataSourceID="sdsHabitacion" DataTextField="lHabitacion_iD" DataValueField="lHabitacion_iD"></asp:DropDownList><br />
                    <asp:SqlDataSource runat="server" ID="sdsHabitacion" ConnectionString='<%$ ConnectionStrings:DB_HotelConnectionString %>' SelectCommand="SELECT [lHabitacion_iD] FROM [Tbl_Habitacion]"></asp:SqlDataSource>

                    <label>Cliente</label><br />
                    <asp:DropDownList ID="ddlCliente" CssClass="form-control" runat="server" DataSourceID="sdsCliente" DataTextField="sNombre" DataValueField="lCliente_iD"></asp:DropDownList><br />
                    <asp:SqlDataSource runat="server" ID="sdsCliente" ConnectionString='<%$ ConnectionStrings:DB_HotelConnectionString %>' SelectCommand="SELECT [lCliente_iD], [sNombre] FROM [Tbl_Cliente]"></asp:SqlDataSource>

                    <label>Cantidad Adultos</label><br />
                    <asp:DropDownList ID="ddlAdulto" CssClass="form-control" runat="server">
                        <asp:ListItem Text="1" />
                        <asp:ListItem Text="2" />
                        <asp:ListItem Text="3" />
                        <asp:ListItem Text="4" />
                        <asp:ListItem Text="5" />
                        <asp:ListItem Text="6" />
                    </asp:DropDownList><br />

                     <label>Cantidad Niños</label><br />
                    <asp:DropDownList ID="ddlNino" CssClass="form-control" runat="server">
                        <asp:ListItem Text="1" />
                        <asp:ListItem Text="2" />
                        <asp:ListItem Text="3" />
                        <asp:ListItem Text="4" />
                        <asp:ListItem Text="5" />
                        <asp:ListItem Text="6" />
                    </asp:DropDownList><br />   



                    <asp:LinkButton ID="SaveButtonn" runat="server"
                        CssClass="btn btn-primary"
                        ValidationGroup="tipoHabitacion"
                        OnClick="SaveButtonn_Click">
                Guardar
                    </asp:LinkButton>

                </div>
            </div>
        </div>
        <div class="col-md-4"></div>
    </div>

    <br />

    <div class="container">
        <div class="row">
            <div class="col-md-1"></div>
            <div class="col-md-8">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns ="False" CellPadding="2" AutoGenerateDeleteButton="True" DataKeyNames="lReserva_iD" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" Width="1042px" >
             <AlternatingRowStyle BackColor="White" />
             <Columns>
                 <asp:BoundField DataField="lReserva_iD" HeaderText="iD" InsertVisible="False" ReadOnly="True" SortExpression="lReserva_iD" />
                 <asp:BoundField DataField="dFechaEntrada" HeaderText="Fecha Entrada" SortExpression="dFechaEntrada" />
                 <asp:BoundField DataField="dFechaSalida" HeaderText="Fecha Salida" SortExpression="dFechaSalida" />
                 <asp:BoundField DataField="lCostoTotal" HeaderText="Costo" SortExpression="lCostoTotal" />
                 <asp:BoundField DataField="sObservacion" HeaderText="Observacion" SortExpression="sObservacion" />
                 <asp:BoundField DataField="lCantidadAdultos" HeaderText="Cantidad Adultos" SortExpression="lCantidadAdultos" />
                 <asp:BoundField DataField="lCantidadNinhos" HeaderText="Cantidad Niños" SortExpression="lCantidadNinhos" />
                 <asp:BoundField DataField="sNombre" HeaderText="Nombre Cliente" SortExpression="sNombre" />
                 <asp:BoundField DataField="Expr1" HeaderText="Habitacion" SortExpression="Expr1" />
             </Columns>
             <EditRowStyle BackColor="#2461BF" />
             <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
             <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
             <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
             <RowStyle BackColor="#EFF3FB" />
             <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
             <SortedAscendingCellStyle BackColor="#F5F7FB" />
             <SortedAscendingHeaderStyle BackColor="#6D95E1" />
             <SortedDescendingCellStyle BackColor="#E9EBEF" />
             <SortedDescendingHeaderStyle BackColor="#4870BE" />
         </asp:GridView>
         <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DB_HotelConnectionString %>" SelectCommand="SELECT        dbo.Tbl_Reserva.lReserva_iD, dbo.Tbl_Reserva.dFechaEntrada, dbo.Tbl_Reserva.dFechaSalida, dbo.Tbl_Reserva.lCostoTotal, dbo.Tbl_Reserva.sObservacion, 
                         dbo.Tbl_Reserva.lCantidadAdultos, dbo.Tbl_Reserva.lCantidadNinhos, dbo.Tbl_Cliente.sNombre, dbo.Tbl_TipoHabitacion.sNombre AS Expr1
FROM            dbo.Tbl_Habitacion INNER JOIN
                         dbo.Tbl_Reserva ON dbo.Tbl_Habitacion.lHabitacion_iD = dbo.Tbl_Reserva.lHabitacion_iD_FK INNER JOIN
                         dbo.Tbl_Cliente ON dbo.Tbl_Reserva.lCliente_iD_FK = dbo.Tbl_Cliente.lCliente_iD INNER JOIN
                         dbo.Tbl_TipoHabitacion ON dbo.Tbl_Habitacion.lTipoHabitacion_iD_FK = dbo.Tbl_TipoHabitacion.lTipoHabitacion_iD" DeleteCommand="DELETE FROM Tbl_Reserva where lReserva_iD=@lReserva_iD"></asp:SqlDataSource>

            </div>
            <div class="col-md-2"></div>
        </div>
    </div>

</asp:Content>


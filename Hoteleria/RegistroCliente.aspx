<%@ Page Title="" Language="C#" MasterPageFile="~/PaginaMaestraAdministrador.master" AutoEventWireup="true" CodeFile="RegistroCliente.aspx.cs" Inherits="RegistroCliente" %>

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
                <label>Nombre</label>
                <asp:TextBox ID="nombreTextBox" runat="server" CssClass="form-control"></asp:TextBox>
                <asp:RequiredFieldValidator runat="server"
                    ControlToValidate="nombreTextBox"
                    Display="Dynamic"
                    ForeColor="Red"
                    ValidationGroup="tipoHabitacion"
                    ErrorMessage="Debe ingresar el nombre">
                </asp:RequiredFieldValidator>
                <label>Apellido</label>
                <asp:TextBox ID="apellido" runat="server" CssClass="form-control"></asp:TextBox>
                <asp:RequiredFieldValidator runat="server"
                    ControlToValidate="apellido"
                    Display="Dynamic"
                    ForeColor="Red"
                    ValidationGroup="tblClientes"
                    ErrorMessage="Debe ingresar el apellido">
                </asp:RequiredFieldValidator>

                <label>Direccion</label>
                <asp:TextBox ID="Direccion" runat="server" CssClass="form-control"></asp:TextBox>
                <asp:RequiredFieldValidator runat="server"
                    ControlToValidate="Direccion"
                    Display="Dynamic"
                    ForeColor="Red"
                    ValidationGroup="tblClientes"
                    ErrorMessage="Debe ingresar el Direccion">
                </asp:RequiredFieldValidator>

                <label>Telefono</label>
                <asp:TextBox ID="Telefono" runat="server" CssClass="form-control"></asp:TextBox>
                <asp:RequiredFieldValidator runat="server"
                    ControlToValidate="Telefono"
                    Display="Dynamic"
                    ForeColor="Red"
                    ValidationGroup="tblClientes"
                    ErrorMessage="Debe ingresar el Telefono ">
                </asp:RequiredFieldValidator>

                <label>Documentacion</label>
                <asp:TextBox ID="Documentacion" runat="server" CssClass="form-control"></asp:TextBox>
                <asp:RequiredFieldValidator runat="server"
                    ControlToValidate="Documentacion"
                    Display="Dynamic"
                    ForeColor="Red"
                    ValidationGroup="tblClientes"
                    ErrorMessage="Debe ingresar el Documentacion">
                </asp:RequiredFieldValidator>
                <label>Pais</label><br />
                <asp:DropDownList ID="Paises" runat="server" CssClass="form-control"></asp:DropDownList>


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
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="lCliente_iD" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" AutoGenerateEditButton="True" Width="702px">
                    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                    <Columns>
                        <asp:BoundField DataField="lCliente_iD" HeaderText="iD" InsertVisible="False" ReadOnly="True" SortExpression="lCliente_iD" />
                        <asp:BoundField DataField="sNombre" HeaderText="Nombre" SortExpression="sNombre" />
                        <asp:BoundField DataField="sApellido" HeaderText="Apellido" SortExpression="sApellido" />
                        <asp:BoundField DataField="sDireccion" HeaderText="Direccion" SortExpression="sDireccion" />
                        <asp:BoundField DataField="sTelefono" HeaderText="Telefono" SortExpression="sTelefono" />
                        <asp:BoundField DataField="sDocumento" HeaderText="Documento" SortExpression="sDocumento" />
                        <asp:BoundField DataField="sPais" HeaderText="Pais" SortExpression="sPais" />
                    </Columns>
                    <EditRowStyle BackColor="#999999" />
                    <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                    <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                    <SortedAscendingCellStyle BackColor="#E9E7E2" />
                    <SortedAscendingHeaderStyle BackColor="#506C8C" />
                    <SortedDescendingCellStyle BackColor="#FFFDF8" />
                    <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
                </asp:GridView>


            </div>
            <div class="col-md-2"></div>

            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DB_HotelConnectionString %>" SelectCommand="SELECT * FROM [Tbl_Cliente]" UpdateCommand="UPDATE Tbl_Cliente SET  sNombre=@sNombre,sApellido=@sApellido,sDireccion=@sDireccion,sTelefono=@sTelefono,sDocumento=@sDocumento,sPais=@sPais WHERE  lCliente_iD = @lCliente_iD"></asp:SqlDataSource>

        </div>
    </div>

</asp:Content>


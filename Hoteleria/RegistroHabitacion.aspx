﻿<%@ Page Title="" Language="C#" MasterPageFile="~/PaginaMaestraAdministrador.master" AutoEventWireup="true" CodeFile="RegistroHabitacion.aspx.cs" Inherits="RegistroHabitacion" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <asp:Panel ID="Error" runat="server" Visible="false" CssClass="alert alert-danger" role="alert">
            </asp:Panel>
     <section class="row">
        <div class="col-md-6">
             <asp:panel id="ErrorPanel" runat="server" visible="false"
                 cssclass="alert alert-danger" role="alert">
                 Error al Guardar el tipo de Habitacion
             </asp:panel>
 
 <br /><br />
             <br /><br />
             <br /><br />
             <div class="form-group">
                 <label>Numero Habitacion</label>
                 <asp:textbox id="NumeroHabitacion" runat="server" cssclass="form-control"></asp:textbox>
                 <asp:requiredfieldvalidator runat="server"
                     controltovalidate="NumeroHabitacion"
                     display="Dynamic"
                     forecolor="Red"
                     validationgroup="tblHabitacion"
                     errormessage="Debe ingresar el nombre">
                 </asp:requiredfieldvalidator>
             </div>
             <div>
 
                 <asp:label runat="server" ID="ddlestado" text="Estado"></asp:label>
                 <asp:DropDownList ID="DropDownList1" runat="server">
                     
                     <asp:ListItem Text="Disponible" value="1"/>
                     <asp:ListItem Text="No Disponible" value="0"/>
 
                 </asp:DropDownList>
              
            </div>
 
            <div class="form-group">
                 <label>Costo</label>
                 <asp:textbox id="Costos" runat="server" cssclass="form-control"></asp:textbox>
                 <asp:requiredfieldvalidator runat="server"
                     controltovalidate="Costos"
                     display="Dynamic"
                     forecolor="Red"
                     validationgroup="tblHabitacion"
                     errormessage="Debe ingresar el apellido">
                 </asp:requiredfieldvalidator>
             </div>
 
             <div class="form-group">
                 <label>Descripcion</label>
                 <asp:textbox id="Descripcion" runat="server" cssclass="form-control"></asp:textbox>
                 <asp:requiredfieldvalidator runat="server"
                    controltovalidate="Descripcion"
                     display="Dynamic"
                    forecolor="Red"
                    validationgroup="tblHabitacion"
                    errormessage="Debe ingresar el Direccion">
                 </asp:requiredfieldvalidator>
             </div>
 
             <div>
 
                 <asp:label runat="server" text="Tipo Habitacion "></asp:label>
                 <asp:dropdownlist id="tipo" runat="server" height="16px" width="145px" datasourceid="SqlDataSource2" datatextfield="sNombre" datavaluefield="lTipoHabitacion_iD" style="margin-left: 0px"></asp:dropdownlist>
                 <asp:sqldatasource id="SqlDataSource2" runat="server" connectionstring="<%$ ConnectionStrings:DB_HotelConnectionString %>" selectcommand="SELECT [sNombre], [lTipoHabitacion_iD] FROM [Tbl_TipoHabitacion]"></asp:sqldatasource>
             </div>
           
           
 
             <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataSourceID="SqlDataSource1" GridLines="Vertical" Width="617px" AutoGenerateDeleteButton="True">
                 <AlternatingRowStyle BackColor="Gainsboro" />
                 <Columns>
                     <asp:BoundField DataField="lNumeroHabitacion" HeaderText="Numero Habitacion" SortExpression="Numero Habitacion" />
                      <asp:BoundField  DataField="bEstado" HeaderText="Estado" SortExpression="EstadoForDisplay"/>
                     <asp:BoundField DataField="lCosto" HeaderText="Costo" SortExpression="lCosto" />
                     <asp:BoundField DataField="sDescripcion" HeaderText="Descripcion" SortExpression="sDescripcion" />
                     <asp:BoundField DataField="sNombre" HeaderText="Tipo Habitacion" SortExpression="sNombre" />
                 </Columns>
                 <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
                 <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
                 <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                 <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
                 <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
                 <SortedAscendingCellStyle BackColor="#F1F1F1" />
                 <SortedAscendingHeaderStyle BackColor="#0000A9" />
                 <SortedDescendingCellStyle BackColor="#CAC9C9" />
                 <SortedDescendingHeaderStyle BackColor="#000065" />
             </asp:GridView>
             <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DB_HotelConnectionString %>" SelectCommand="SELECT     dbo.Tbl_Habitacion.lNumeroHabitacion , dbo.Tbl_Habitacion.bEstado, dbo.Tbl_Habitacion.lCosto, dbo.Tbl_Habitacion.sDescripcion, dbo.Tbl_TipoHabitacion.sNombre
FROM         dbo.Tbl_Habitacion INNER JOIN
                      dbo.Tbl_TipoHabitacion ON dbo.Tbl_Habitacion.lTipoHabitacion_iD_FK = dbo.Tbl_TipoHabitacion.lTipoHabitacion_iD" ></asp:SqlDataSource>
           
           
 
             <br />
 
 
             <asp:linkbutton id="SaveButtonn" runat="server"
                 cssclass="btn btn-primary"
                 validationgroup="tblHabitacion"
                 onclick="SaveButtonn_Click">
                 Guardar
             </asp:linkbutton>
             <asp:hyperlink runat="server" cssclass="btn"
                 Navigateurl="~/RegistroHabitacion.aspx">
                 Cancelar
             </asp:hyperlink>
 
            <asp:hiddenfield id="TipoHabitacionIdHiddenField" runat="server"
                value="0" />
 
         </div>
     </section>
</asp:Content>


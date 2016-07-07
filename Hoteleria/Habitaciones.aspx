<%@ Page Title="" Language="C#" MasterPageFile="~/PaginaMaestraCliente.master" AutoEventWireup="true" CodeFile="Habitaciones.aspx.cs" Inherits="Habitaciones" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <div id="tour" class="">
        <br>
        <br>
        <br>
        <br>


        <div class="container">
            <h3 class="text-center naranjaText">BIENVENIDO A HOTELNUR</h3>
            <br />
            <p class="text-center textoNegro">HotelNur les da la Bienvenida a cada uno de nuestros distinguidos Huéspedes, deseándoles la más confortable estadía en nuestras Instalaciones. Estamos situado en el corazón de Santa Cruz al frente de la Plaza Principal el lugar mas estratégico de la ciudad, donde encontraras: Shoopings, Restaurantes, Bancos, Heladerías, Casa de Cambios, Cines, etc. y mucho más a unos pasos del Hotel.  </p>
            <p class="textoNegro text-center">
                Excepcional y única Vista Panorámica de la Ciudad desde la Terraza, piscina climatizada, Restaurantes, Salones de Negocio para Eventos, gimnasio, sauna seco y vapor. 
          <br />
                Recuerda hacer tu reserva Ya!
            </p>


            <div class="row">
                <div class="col-sm-6">
                    <div class="mosaic_container">
                        <img src="img/mosaic_1.jpg" alt="" class="img-responsive add_bottom_30"><span class="caption_2"><font><font>agradable al aire libre</font></font></span>
                    </div>
                </div>
                <div class="col-sm-6">
                    <div class="col-xs-12">
                        <div class="mosaic_container">
                            <img src="img/mosaic_2.jpg" alt="" class="img-responsive add_bottom_30"><span class="caption_2"><font><font>gran dormitorio</font></font></span>
                        </div>
                    </div>
                    <div class="col-xs-6">
                        <div class="mosaic_container">
                            <img src="img/mosaic_3.jpg" alt="" class="img-responsive add_bottom_30"><span class="caption_2"><font><font>Cuarto de baño moderno</font></font></span>
                        </div>
                    </div>
                    <div class="col-xs-6">
                        <div class="mosaic_container">
                            <img src="img/mosaic_4.jpg" alt="" class="img-responsive add_bottom_30"><span class="caption_2"><font><font>bienestar</font></font></span>
                        </div>
                    </div>
                </div>
            </div>



            <div class="row text-center">
                <h3 class="text-center">Nuestras habitaciones</h3>

                <div class="col-sm-4" id="simple">
                    <div class="thumbnail">
                        <br>
                        <img src="img/habitacion1.png" alt="habitacion simple" width="400" height="300">
                        <br>
                        <p><strong>Habitacion Simple</strong></p>
                        <h2>$ 160</h2>

                        <button class="btn" data-toggle="modal" data-target="#myModal">Hacer Reserva</button>
                    </div>
                </div>

                <div class="col-sm-4" id="doble">
                    <div class="thumbnail">
                        <br>
                        <img src="img/habitacion2.png" alt="habitacion doble" width="400" height="300">
                        <br>
                        <p><strong>Habitacion Doble</strong></p>
                        <h2>$ 300</h2>

                        <button class="btn" data-toggle="modal" data-target="#myModal">Hacer Reserva</button>
                    </div>
                </div>

                <div class="col-sm-4" id="suite">
                    <div class="thumbnail">
                        <br>
                        <img src="img/habitacion3.png" alt="Suite" width="400" height="300">
                        <br>
                        <p><strong>Suite</strong></p>
                        <h2>$ 420</h2>

                        <button class="btn" data-toggle="modal" data-target="#myModal">Hacer Reserva</button>
                    </div>
                </div>
            </div>
        </div>
        <br>
        <br>
        <br>
        <br>
        <br>
        <br>
        <br>
        <br>
        <br>













        <!-- Modal -->
        <div class="modal fade " id="myModal" role="dialog">
            <div class="modal-dialog">

                <!-- Modal content-->
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal">×</button>
                        <h4><span class="fa fa-building" aria-hidden="true"></span>HotelNur</h4>
                    </div>
                    <br />
                    <div class="modal-body">
                        <div role="form">


                            <div class="form-group">
                                <label for="usrname"><span class="glyphicon glyphicon-user"></span>E-mail</label>
                                <asp:TextBox ID="emailTextBox" type="email" runat="server" CssClass="form-control" placeholder="email@email.com" required="required"></asp:TextBox>

                                <asp:RequiredFieldValidator runat="server"
                                    ControlToValidate="emailTextBox"
                                    Display="Dynamic"
                                    ForeColor="red"
                                    ValidationGroup="Contactenos"
                                    ErrorMessage="Debe ingresar su E-mail">
                                </asp:RequiredFieldValidator>



                            </div>

                            <div class="form-group">
                                <label for="usrname"><span class="glyphicon glyphicon-user"></span>Habiatcion</label>

                                <div class="row">
                                    <div class="col-lg-10">
                                        <asp:TextBox ID="habitacionTextBox" runat="server" CssClass="form-control" placeholder="Ingrese Nombre" Text="Simple" disabled=" "></asp:TextBox>
                                    </div>
                                    <div class="col-lg-2">
                                        <p></p>
                                        <asp:DropDownList ID="DropDownListHabitacion" runat="server" class="form-control">
                                            <asp:ListItem Text="1" />
                                            <asp:ListItem Text="2" />
                                            <asp:ListItem Text="3" />
                                            <asp:ListItem Text="4" />
                                            <asp:ListItem Text="5" />
                                            <asp:ListItem Text="6" />
                                            <asp:ListItem Text="7" />
                                            <asp:ListItem Text="8" />
                                            <asp:ListItem Text="9" />
                                            <asp:ListItem Text="10" />
                                        </asp:DropDownList>
                                    </div>
                                </div>
                            </div>







                            <div class="form-group">
                                <div class="row">
                                    <div class="col-lg-6">
                                        <label for="fecha1a" >Fecha Incio <i class="fa fa-calendar-check-o" aria-hidden="true"></i></label>
                                        <asp:TextBox ID="fechaInicioTextBox"  CssClass="from form-control"  name="fechaInicioTextBox" placeholder="mm/dd/yyyy" runat="server" required="required"> </asp:TextBox>
                                            <asp:RequiredFieldValidator runat="server"
                                                ControlToValidate="fechaInicioTextBox"
                                                Display="Dynamic"
                                                ForeColor="red"
                                                ValidationGroup="Contactenos"
                                                ErrorMessage="Debe Seleccionar una Fecha ">
                                            </asp:RequiredFieldValidator>
                                        </div>




                                    <div class="col-lg-6">
                                        <label for="fecha2a" >Fecha Fin <i class="fa fa-calendar-check-o" aria-hidden="true"></i></label>
                                        <asp:TextBox ID="fechaFinTextBox"  CssClass="to form-control"  name="fechaFinTextBox" placeholder="mm/dd/yyyy" runat="server" required="required"> </asp:TextBox>
                                        <asp:RequiredFieldValidator runat="server"
                                            ControlToValidate="fechaFinTextBox"
                                            Display="Dynamic"
                                            ForeColor="red"
                                            ValidationGroup="Contactenos"
                                            ErrorMessage="Debe Seleccionar una Fecha ">
                                        </asp:RequiredFieldValidator>
                                    </div>
                                </div>
                            </div>


                            <div class="form-group">
                                <label for="psw1"><span class="glyphicon glyphicon-user"></span>Adultos</label>
                                <asp:DropDownList ID="DropDownListAdulto" runat="server" class="form-control">
                                    <asp:ListItem Text="1" />
                                    <asp:ListItem Text="2" />
                                    <asp:ListItem Text="3" />
                                    <asp:ListItem Text="4" />
                                    <asp:ListItem Text="5" />
                                    <asp:ListItem Text="6" />
                                    <asp:ListItem Text="7" />
                                    <asp:ListItem Text="8" />
                                    <asp:ListItem Text="9" />
                                    <asp:ListItem Text="10" />
                                </asp:DropDownList>
                            </div>

                            <div class="form-group">
                                <label for="psw2"><span class="glyphicon glyphicon-user"></span>Niños</label>
                                <asp:DropDownList ID="DropDownListNiños" runat="server" class="form-control">
                                    <asp:ListItem Text="1" />
                                    <asp:ListItem Text="2" />
                                    <asp:ListItem Text="3" />
                                    <asp:ListItem Text="4" />
                                    <asp:ListItem Text="5" />
                                    <asp:ListItem Text="6" />
                                    <asp:ListItem Text="7" />
                                    <asp:ListItem Text="8" />
                                    <asp:ListItem Text="9" />
                                    <asp:ListItem Text="10" />
                                </asp:DropDownList>
                            </div>



                            <asp:LinkButton ID="botonReservar" runat="server"
                                CssClass="btn btn-block pull-right"
                                ValidationGroup="Contactenos"
                                OnClick="botonReservar_Click">
                               Reservar Ahora!.  <span class="glyphicon glyphicon-ok"></span>
                            </asp:LinkButton>
                            <asp:Label ID="lbmensaje" runat="server" BackColor="White" ForeColor="Red"></asp:Label>







                        </div>
                        <br />
                        <br />
                    </div>
                    <div class="modal-footer">
                        <button type="submit" class="btn btn-danger btn-default pull-left" data-dismiss="modal">
                            <span class="glyphicon glyphicon-remove"></span>Cancel
                        </button>
                        <p>Need <a href="#">help?</a></p>
                    </div>
                </div>
            </div>
        </div>














    </div>
</asp:Content>


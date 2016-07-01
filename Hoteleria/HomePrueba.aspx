<%@ Page Title="" Language="C#" MasterPageFile="~/PaginaMaestraCliente.master" AutoEventWireup="true" CodeFile="HomePrueba.aspx.cs" Inherits="HomePrueba" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
<!-- ====================================    slider    ============================================== -->
<!-- ================================================================================================ -->
  <div class="">    
      <div id="myCarousel" class="carousel slide" data-ride="carousel">
            <!-- Wrapper for slides -->
            <div class="carousel-inner" role="listbox">
                <div class="item active">
                  <img src="img/z1.jpg" alt="New York" height="1200"/ >
                  <div class="carousel-caption">
                    <h3>UN POCO ACERCA DE NOSOTROS</h3>
                    <p>quipo profesional completamente equipado.
                        La calidad y la eficiencia nos caracterizan.</p>
                  </div>      
                </div>


                <div class="item">
                  <img src="img/z2.jpg" alt="Chicago" height="1200"/  >
                  <div class="carousel-caption">
                    <h3>Nuestro objetivo es destacar nuestra obra</h3>
                    <p>pero no sólo hacemos eso.</p>
                  </div>      
                </div>
              
                <div class="item">
                  <img src="img/z3.jpg" alt="Chicago" height="1200"/  >
                  <div class="carousel-caption">
                    <h3>Heche un vistazo a lo que podemos hacer</h3>
                    <p>Por usted y su proyecto.</p>
                  </div>      
                </div>
            
                <div class="item">
                    <img src="img/z4.jpg" alt="Los Angeles" height="1200" / >
                    <div class="carousel-caption">
                      <h3>Construimos el futuro.</h3>
                      <p>Llámenos hoy mismo. </p>
                    </div>      
                </div>
            </div>

            <!-- Left and right controls -->
            <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
              <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
              <span class="sr-only">Previous</span>
            </a>

            <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
              <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
              <span class="sr-only">Next</span>
            </a>  
      </div>
  </div>

    <!-- ====================================  reservacion ============================================== -->
    <!-- ================================================================================================ -->
    <div id=" " class=" ">
        <div class="container">
            <div class="row colorT  bordeando">
                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 res-z-index">
                    <br />
                    <div class="row">

                        <div class="col-lg-2">
                            <div class="form-group">
                                <label for="email" accesskey="E"><i class="fa fa-envelope" aria-hidden="true"></i> E-mail</label>
                                <asp:TextBox ID="emailTextBox" type="email" runat="server" CssClass="form-control" placeholder="email@email.com" required="required"></asp:TextBox>
                                <span class="help-block"></span>
                            </div>
                        </div>


                        <div class="col-lg-2 ">
                            <div class="form-group">
                                <label for="fechaInicio" accesskey="E"><i class="fa fa-info-circle fa-lg"></i>Fecha Inicio </label>
                                <asp:TextBox ID="fechaInicioTextBox"  CssClass="from form-control"  name="fechaInicioTextBox" placeholder="mm/dd/yyyy" runat="server" required="required"> </asp:TextBox>

                            </div>
                                
                        </div>

                        <div class="col-lg-2 ">
                            <div class="form-group">
                                <label for="fechaFin" accesskey="E"><i class="fa fa-calendar-check-o" aria-hidden="true"></i>Fecha Fin </label>
                                <asp:TextBox ID="fechaFinTextBox"  CssClass="to form-control"  name="fechaFinTextBox" placeholder="mm/dd/yyyy" runat="server" required="required"> </asp:TextBox>
                            </div>
                        </div>

                        <div class="col-lg-2 ">
                            <div class="form-group">
                                <label for="habitacion" accesskey="E"><i class="fa fa-bed" aria-hidden="true"></i> Habitación </label>
                                <br />
                                <div class="row">
                                    <div class="col-lg-12">
                                <asp:DropDownList ID="DropDownListHabitacion" runat="server" class="form-control">
                                            <asp:ListItem Text="Simple" />
                                            <asp:ListItem Text="Doble" />
                                            <asp:ListItem Text="Triple" />
                                            <asp:ListItem Text="Suite" />
                                </asp:DropDownList>
                                    </div>
                                    <br />
                                    <br />
                                    <br />
                                    <div class="col-lg-7">
                                <asp:DropDownList ID="DropDownListHabitacionCantidad" runat="server" class="form-control">
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
                       </div>


                     <div class="col-lg-1  ">
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
                       </div>


                      <div class="col-lg-1  ">
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
                       </div>

 
                        <div class=" col-lg-2">
                            <br />
                           <asp:Button ID="BotonReserva" runat="server" Text="Reservar" class="btn btn-warning btn-block"  OnClick="BotonReserva_Click"  />
                             <br />
                        </div>


                    </div>
                    <asp:Label ID="lbmensaje" runat="server" BackColor="White" ForeColor="Red"></asp:Label>

                </div>
            </div>
        </div>
    </div>

<br/>
<br/>
<br/>
<br/>
<br/>
<br/>
<!-- =========================================  Bienvenido    ======================================= -->
<!-- ================================================================================================ -->
<div id="bienvenido" class="">
  <div class="container">
        <div class="row text-center">

          <h1 class="text-center ">Bienvenido a HotelNur</h1><br/><br/>
          <p class="text-center textoNegro"> HotelNur les da la Bienvenida a cada uno de nuestros distinguidos Huéspedes, deseándoles la más confortable estadía en nuestras Instalaciones. Estamos situado en el corazón de Santa Cruz al frente de la Plaza Principal el lugar mas estratégico de la ciudad, donde encontraras: Shoopings, Restaurantes, Bancos, Heladerías, Casa de Cambios, Cines, etc. y mucho más a unos pasos del Hotel.  </p>
          <p  class="textoNegro"> Excepcional y única Vista Panorámica de la Ciudad desde la Terraza, piscina climatizada, Restaurantes, Salones de Negocio para Eventos, gimnasio, sauna seco y vapor. 
          <br/> Recuerda hacer tu reserva Ya!</p>
          
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
        </div>
    </div>
</div>
<br/>
<br/>
<!-- ====================================     Galeria    ============================================ -->
<!-- ================================================================================================ -->
<div class="container">
   <h1 class="text-center">Galeria</h1> 
</div>
<div class="">
    <div class="row">
    <div class="col-md-12 ">
                <div id="Carousel" class="carousel slide">
                <!-- Carousel items -->
                <div class="carousel-inner">
                    
                <div class="item active">
                  <div class="row">
                    <div class="col-md-3"><a href="#" class="thumbnail"><img src="img/galeria1.jpg" alt="Image" style="max-width:100%;"/></a></div>
                    <div class="col-md-3"><a href="#" class="thumbnail"><img src="img/galeria2.jpg" alt="Image" style="max-width:100%;"/></a></div>
                    <div class="col-md-3"><a href="#" class="thumbnail"><img src="img/galeria3.jpg" alt="Image" style="max-width:100%;"/></a></div>
                    <div class="col-md-3"><a href="#" class="thumbnail"><img src="img/galeria4.jpg" alt="Image" style="max-width:100%;"/></a></div>
                  </div><!--.row-->
                </div><!--.item-->
                 
                <div class="item">
                  <div class="row">
                    <div class="col-md-3"><a href="#" class="thumbnail"><img src="img/galeria5.jpg" alt="Image" style="max-width:100%;"/></a></div>
                    <div class="col-md-3"><a href="#" class="thumbnail"><img src="img/galeria6.jpg" alt="Image" style="max-width:100%;"/></a></div>
                    <div class="col-md-3"><a href="#" class="thumbnail"><img src="img/galeria7.jpg" alt="Image" style="max-width:100%;"/></a></div>
                    <div class="col-md-3"><a href="#" class="thumbnail"><img src="img/galeria8.jpg" alt="Image" style="max-width:100%;"/></a></div>
                  </div><!--.row-->
                </div><!--.item-->
                 
                <div class="item">
                  <div class="row">
                    <div class="col-md-3"><a href="#" class="thumbnail"><img src="img/galeria9.jpg" alt="Image" style="max-width:100%;"/></a></div>
                    <div class="col-md-3"><a href="#" class="thumbnail"><img src="img/galeria10.jpg" alt="Image" style="max-width:100%;"/></a></div>
                    <div class="col-md-3"><a href="#" class="thumbnail"><img src="img/galeria11.jpg" alt="Image" style="max-width:100%;"/></a></div>
                    <div class="col-md-3"><a href="#" class="thumbnail"><img src="img/galeria12.jpg" alt="Image" style="max-width:100%;"/></a></div>
                  </div><!--.row-->
                </div><!--.item-->
                 
                    <!-- Left and right controls -->
                <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
                  <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
                  <span class="sr-only">Previous</span>
                </a>

                <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
                  <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
                  <span class="sr-only">Next</span>
                </a>  

              </div>
            </div>
          </div>
    </div>
</div>
    <br />
    <br />
    <br />
    <br />
<!-- ================================================================================================ -->
<!-- ==================================== COntactenos =============================================== -->
<section class="frase">
    <div class="container">
        <div class="row">
        <br/>
        <br/>
            <div class="col-lg-9 col-md-6 text-center">
                Estamos ansiosos por hacer una reserva. Manténgase en contacto con nosotros para obtener una cotización.       
            </div>            
            <div class="form-group" >
                <div class="col-lg-3 col-md-6 text-center">
                 <a href="Contactenos.aspx" type="submit" class="btn btn-warning btn-block">CONTACTAR</a>
                </div>
            </div>
        </div>
        <br/>
        <br/>
    </div>
</section>
</asp:Content>


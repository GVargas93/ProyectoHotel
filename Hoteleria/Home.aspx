<%@ Page Title="" Language="C#" MasterPageFile="~/PaginaMaestraCliente.master" AutoEventWireup="true" CodeFile="Home.aspx.cs" Inherits="Home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

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

                    <div class="row">

                        <div class="col-lg-3 col-md-3 col-sm-12 col-xs-12 ">
                            <div class="form-group">
                                <label for="email" accesskey="E">E-mail <i class="fa fa-info-circle fa-lg"></i></label>
                                <input id="email" name="email" type="text" class="form-control" placeholder="Escriba su email" onkeyup="validacion('email');"/>
                                <span class="help-block"></span>
                            </div>
                        </div>

                        <div class=" col-lg-2 col-md-2 col-sm-12 col-xs-12 ">
                            <div class="form-group">
                                <label for="habitacion" accesskey="E">Habitación <i class="fa fa-info-circle fa-lg"></i></label>
                                <select id="habitacion" name="habitacion" class="form-control" onchange="validacion('habitacion');">
                                    <option value="">seleccione</option>
                                    <option value="1">Simple</option>
                                    <option value="2">Doble</option>
                                    <option value="3">suite</option>
                                </select>
                            </div>
                        </div>

                        <div class="col-lg-2 col-md-2 col-sm-12 col-xs-12">
                            <div class="form-group">
                                <label for="from" accesskey="E">Fecha Incio <i class="fa fa-info-circle fa-lg"></i></label>
                                <input name="from" type="text" id="from" class="form-control" placeholder="llegada"/><i class="fa fa-calendar infield"></i>
                            </div>
                        </div>

                        <div class="col-lg-2 col-md-2 col-sm-12 col-xs-12">
                            <div class="form-group">
                                <label for="to" accesskey="E">Fecha Fin <i class="fa fa-info-circle fa-lg"></i></label>
                                <div>
                                    <input name="to" type="text" id="to" class="form-control" placeholder="salida">
                                    <i class="fa fa-calendar infield"></i>
                                </div>
                            </div>
                        </div>

                        <div class="col-lg-1 col-md-1 col-sm-12 col-xs-12">
                            <div class="form-group">
                                <label for="persona" accesskey="E">Persona  </label>

                                <input id="persona" name="persona" type="text" class="form-control" placeholder="#" onkeyup="validacion('persona');" aria-describedby="inputSuccess2Status">
                                <span class="help-block"></span>
                                <i class="fa fa-user infield"></i>
                            </div>
                        </div>

                        <div class="col-lg-2 col-md-2 col-sm-12 col-xs-12">
                            <label></label>
                            <button type="submit" class="btn btn-warning btn-block">Reservar ahora</button>
                        </div>

                    </div>
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
<!-- ==================================== Habitaciones =============================================== -->
<!-- ================================================================================================ -->
<div id="" class="">
  <div class="container">
    <div class="row text-center">
          <h3 class="text-center">Nuestras habitaciones</h3>

      <div class="col-sm-4" id="simple">
        <div class="thumbnail">
          <br/>
          <img src="img/habitacion1.png" alt="habitacion simple" width="400" height="300"/>
          <br/>
          <p><strong>Habitacion Simple</strong></p>
          <h2>$ 160</h2>

          <p  class="textoNegro">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
          tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
          quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo
          consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse
          cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non
          proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>
          <button class="btn" data-toggle="modal" data-target="#myModal">Hacer Reserva</button>
        </div>
      </div>

      <div class="col-sm-4" id="doble">
        <div class="thumbnail">
          <br/>
          <img src="img/habitacion2.png" alt="habitacion doble" width="400" height="300"/>
          <br/>
          <p><strong>Habitacion Doble</strong></p>
          <h2>$ 300</h2>
          <p  class="textoNegro">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
          tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
          quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo
          consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse
          cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non
          proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>
          <button class="btn" data-toggle="modal" data-target="#myModal">Hacer Reserva</button>
        </div>
      </div>

      <div class="col-sm-4  " id="suite">
        <div class="thumbnail">
          <br/>
          <img src="img/habitacion3.png" alt="Suite" width="400" height="300"/>
          <br/>
          <p><strong>Suite</strong></p>
          <h2>$ 420</h2>

           <p class="textoNegro">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
          tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
          quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo
          consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse
          cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non
          proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>
          <button class="btn" data-toggle="modal" data-target="#myModal">Hacer Reserva</button>
        </div>
      </div>
    </div>
  </div>
</div>
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
                    <button href="Contactenos.aspx" type="submit" class="btn btn-warning btn-lg">CONTACTAR</button>
                </div>
            </div>
        </div>
        <br/>
        <br/>
    </div>
</section>
</asp:Content>


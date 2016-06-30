<%@ Page Title="" Language="C#" MasterPageFile="~/PaginaMaestraCliente.master" AutoEventWireup="true" CodeFile="Loging.aspx.cs" Inherits="Loging" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />

    <br />
    <br />
    <section class="container">
        <div class="row">

            <div class="col-lg-offset-4 col-lg-4">
                <div class="wrapper ">
                    <form class="form-signin">
                        <h2 class="form-signin-heading">Iniciar Seccion</h2>
                        <input type="text" class="form-control" name="username" placeholder="Usuario" required="" autofocus="" />
                        <input type="password" class="form-control" name="password" placeholder="Contraseña" required="" />
                        <label class="checkbox">
                            <input type="checkbox" value="remember-me" id="rememberMe" name="rememberMe">
                            Recordar me
                        </label>
                        <div class="row">
                            <div class="col-lg-6">
                                <a href="HomeAdministrador.aspx" type="submit" class="btn btn-warning btn-block">Entrar</a>
                            </div>
                            <div class="col-lg-6">
                                <a href="Home.aspx" type="submit" class="btn btn-warning btn-block">cancelar</a>
                            </div>

                        </div>

                        <br />
                        Nuevo Usuario?   resgistrar
                    </form>
                </div>
            </div>

        </div>
    </section>
    <br />
    <br />
    <br />
    <br />

</asp:Content>


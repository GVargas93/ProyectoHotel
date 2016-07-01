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
    <section class="container">
        <div class="row">

            <div class="col-lg-offset-4 col-lg-4">
                <div class="wrapper ">
                    <div class="form-signin">
                        <h2 class="form-signin-heading">Iniciar Seccion</h2>

                        <asp:TextBox ID="UserName" CssClass="form-control" runat="server" placeholder="Usuario" required="" autofocus=""></asp:TextBox>
                        <br />
                        <asp:TextBox ID="Password" CssClass="form-control" runat="server" TextMode="Password" placeholder="Contraseña" required=""> </asp:TextBox>

                        <label class="checkbox">
                            <input type="checkbox" value="remember-me" id="rememberMe" name="rememberMe" />
                            Recordar me
                        </label>
                        <div class="row">
                            <div class="col-lg-6"><a href="Home.aspx" type="submit" class="btn btn-lg btn-danger btn-block">cancelar</a></div>


                            <div class="col-lg-6">
                                <asp:Button ID="loginAdministrador" runat="server" Text="Entrar" CssClass="btn btn-lg btn-right  btn-block " OnClick="loginAdministrador_Click" />
                            </div>

                        </div>
                        <asp:Label ID="lblError" runat="server" CssClass="text-danger" Visible="false"> Usuario Incorrecto, Intente de Nuevo</asp:Label>


                        <br>
                        Nuevo Usuario?
                        <asp:LinkButton ID="LinkButton1" runat="server" PostBackUrl="~/RegistroAdministrador.aspx">Registrate gratis</asp:LinkButton>

                    </div>
                </div>
            </div>


        </div>
    </section>
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
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
</asp:Content>


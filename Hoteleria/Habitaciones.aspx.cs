using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Mail;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Habitaciones : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //if (!IsPostBack)
        //{
        //    Paises.DataSource = Pais();
        //    Paises.DataBind();
        //    Paises.Items.Insert(0, "Seleccione Pais..");
        //}
    }
    protected void botonReservar_Click(object sender, EventArgs e)
    {



        //tblClientes cliente = new tblClientes();
        //ClienteBLL.Insert(nombreTextBox.Text, apellido.Text, Direccion.Text, Telefono.Text, Documentacion.Text, Paises.SelectedValue);




        try
        {

            MailMessage msg = new MailMessage();
            msg.From = new MailAddress("hotelnur2016@gmail.com");
            msg.To.Add("hotelnur2016@gmail.com");
            msg.Subject = "hoteleria";
            msg.Body =
            "<b> **************************************************************** </b> " + "<br/>" +
            "<b> *******************  Nueva Reserva ************************** </b> " + "<br/>" +
            "<b> **************************************************************** </b> " + "<br/>"
            + "<b> E-mail del Cliente:</b> " + emailTextBox.Text + "<br/>"
            + "<b/> Habitacion: </b> " + habitacionTextBox.Text + "<b> Cantidad </b>" + DropDownListHabitacion.Text + "<br/>"

            + "<b> Fecha Inicio </b> " + fechaInicioTextBox.Text + "<br/>"
            + "<b> Fecha Fin </b> " + fechaFinTextBox.Text + "<br/>"

            + "<b> Adultos </b> " + DropDownListAdulto.Text + "<br/>"
             + "<b> Niños </b> " + DropDownListNiños.Text
            
            ;
            msg.IsBodyHtml = true;

            SmtpClient clinent = new SmtpClient("smtp.gmail.com", 587);
            clinent.EnableSsl = true;
            clinent.Credentials = new System.Net.NetworkCredential("hotelnur2016@gmail.com", "123456789jose");
            clinent.Send(msg);

            lbmensaje.ForeColor = System.Drawing.Color.Black;
            emailTextBox.Text = "";
            DropDownListHabitacion.Text = "";
            habitacionTextBox.Text = "";
            fechaInicioTextBox.Text = "";
            fechaFinTextBox.Text = "";
            DropDownListAdulto.Text = "";
            DropDownListNiños.Text = "";

            lbmensaje.Text = " Gracias por Reservar.... Enseguida le llega un mensaje a su correo";


        }
        catch (Exception ex)
        {
            lbmensaje.ForeColor = System.Drawing.Color.Blue;
            lbmensaje.ForeColor = System.Drawing.Color.Red;
            lbmensaje.Text = "hubo un error" + ex.Message;
        }
    }

    public string from { get; set; }
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class RegistroEstadias : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }


    protected void SaveButtonn_Click(object sender, EventArgs e)
    {

        tblReserva reserva = new tblReserva();
        ReservaBLL.Insert(Convert.ToDateTime(txtEntrada.Text), Convert.ToDateTime(txtSalida.Text), Convert.ToInt32(txtCosto.Text), txtObservacion.Text, Convert.ToInt32(ddlHabitacion.SelectedValue), Convert.ToInt32(ddlCliente.SelectedValue), Convert.ToInt32(ddlAdulto.SelectedValue), Convert.ToInt32(ddlNino.SelectedValue));

        
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("ListaEstadia.aspx");
    }
}
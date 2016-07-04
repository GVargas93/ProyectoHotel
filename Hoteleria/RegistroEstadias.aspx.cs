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
        tblReserva cliente = new tblReserva();
        ReservaBLL.Insert(Convert.ToDateTime(Fecha_entrada.Text), Convert.ToDateTime(Fecha_final.Text), Convert.ToInt32(txtCosto.Text), txtObservacion.Text, Convert.ToInt32(ddlHabitacion.SelectedValue), Convert.ToInt32(ddlCliente.SelectedValue), Convert.ToInt32(CantidadAdultos.Text), Convert.ToInt32(CantidadNinhos.Text));
    }
}
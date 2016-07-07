using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class RegistroHabitacion : System.Web.UI.Page
{

    protected void Page_Load(object sender, EventArgs e)
    {
   

  

            
    

    }
    protected void SaveButtonn_Click(object sender, EventArgs e)
    {
     
            Error.Visible = false;





            bool estado = (DropDownList1.SelectedValue == "0");

      
      
            HabitacionBLL.Insert(Convert.ToInt32(NumeroHabitacion.Text), estado, Convert.ToInt32(Costos.Text), Descripcion.Text, Convert.ToInt32(tipo.SelectedValue));
                NumeroHabitacion.Text = "";
                Costos.Text = "";
                Descripcion.Text = "";
          
     
    
        
    
//Response.Redirect("~/RegistroHabitacion.aspx");
    }

 
}
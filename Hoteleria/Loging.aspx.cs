using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Loging : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void loginAdministrador_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection("Data Source=ALVARO-PC;Initial Catalog=DB_Hotel;Integrated Security=True");
        SqlDataAdapter sda = new SqlDataAdapter("select * from Administrador where usuario ='" + UserName.Text + "'and constraseña ='" + Password.Text + "'", con);
        DataTable dt = new DataTable();
        sda.Fill(dt);
        if (dt.Rows.Count == 1)
        {
            Response.Redirect("HomeAdministrador.aspx");
        }
        else
        {
            lblError.Visible = true;
        }
    }
}
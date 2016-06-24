using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Globalization;

public partial class RegistroCliente : System.Web.UI.Page
{
    public List<string> Pais() 
    {
        List<string> ListDePaises = new List<string>();
        foreach(CultureInfo informacion in CultureInfo.GetCultures(CultureTypes.SpecificCultures))
        {
            RegionInfo nombreDeRegion = new RegionInfo(informacion.LCID);
            if(!ListDePaises.Contains(nombreDeRegion.EnglishName))
            {
                ListDePaises.Add(nombreDeRegion.EnglishName);
                ListDePaises.Sort();
            }
        }
        return ListDePaises;
    }
    protected void Page_Load(object sender, EventArgs e)
    {
        Paises.DataSource = Pais();
        Paises.DataBind();
        Paises.Items.Insert(0, "Seleccione Pais..");
    }
    protected void SaveButtonn_Click(object sender, EventArgs e)
    {

    }
}
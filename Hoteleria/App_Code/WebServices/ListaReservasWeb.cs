using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;

/// <summary>
/// Descripción breve de ListaReservas
/// </summary>
[WebService(Namespace = "http://tempuri.org/")]
[WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
// Para permitir que se llame a este servicio web desde un script, usando ASP.NET AJAX, quite la marca de comentario de la línea siguiente. 
// [System.Web.Script.Services.ScriptService]
public class ListaReservasWeb : System.Web.Services.WebService {

    [WebMethod]
    public List<tblListaReservas> ListaReservasGenerales () {
        List<tblListaReservas> list = null;
        try
        {
            list = ListaReservaBLL.SelectReservasGenerales();
        }
        catch (Exception ex)
        {
            list = new List<tblListaReservas>();
        }
        return list;
    }
    [WebMethod]
    public List<tblListaReservas> ListaReservasClientes(string Nombre)
    {
        List<tblListaReservas> list = null;
        try
        {
            list = ListaReservaBLL.SelectReservasClientes(Nombre);
        }
        catch (Exception ex)
        {
            list = new List<tblListaReservas>();
        }
        return list;
    }

 
    
}

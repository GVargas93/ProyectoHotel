using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebServicesReservas.ServicioSopListaReservas;

namespace WebServicesReservas
{
    public partial class ListaGeneral : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            cargarLista();
        }
        public void cargarLista()
        {
            string url = ConfigurationManager.AppSettings[""];
            WebServicesReservas.ServicioSopListaReservas.ListaReservasWebSoapClient cliente = string.IsNullOrEmpty(url) ?
                new WebServicesReservas.ServicioSopListaReservas.ListaReservasWebSoapClient() :
                new WebServicesReservas.ServicioSopListaReservas.ListaReservasWebSoapClient("ServicioSopListaReservas", url + "/WebServices/ListaReservasWeb.asmx");
            WebServicesReservas.ServicioSopListaReservas.ArrayOfTblListaReservas tblreserbasForm = cliente.ListaReservasGenerales();

            List<tblListaReservas> listaGeneral = new List<tblListaReservas>();
            foreach (var item in tblreserbasForm)
            {
                listaGeneral.Add(new tblListaReservas()
                {

                    Nombre = item.Nombre,
                    Apellido = item.Apellido,
                    FechaInicio = item.FechaInicio,
                    FechaFinal = item.FechaFinal,
                    Costo = item.Costo,
                    NumeroHabitacion = item.NumeroHabitacion,
                    Tipohabitacion = item.Tipohabitacion
                });
            }
            GridViewListaGeneral.DataSource = listaGeneral;
            GridViewListaGeneral.DataBind();
        }

        public void cargarLista(string nombre)
        {
            string url = ConfigurationManager.AppSettings[""];
            WebServicesReservas.ServicioSopListaReservas.ListaReservasWebSoapClient cliente = string.IsNullOrEmpty(url) ?
                new WebServicesReservas.ServicioSopListaReservas.ListaReservasWebSoapClient() :
                new WebServicesReservas.ServicioSopListaReservas.ListaReservasWebSoapClient("ServicioSopListaReservas", url + "/WebServices/ListaReservasWeb.asmx");
            WebServicesReservas.ServicioSopListaReservas.ArrayOfTblListaReservas tblreserbasForm = cliente.ListaReservasClientes(nombre);

            List<tblListaReservas> listaGeneral = new List<tblListaReservas>();
            foreach (var item in tblreserbasForm)
            {
                listaGeneral.Add(new tblListaReservas()
                {

                    Nombre = item.Nombre,
                    Apellido = item.Apellido,
                    FechaInicio = item.FechaInicio,
                    FechaFinal = item.FechaFinal,
                    Costo = item.Costo,
                    NumeroHabitacion = item.NumeroHabitacion,
                    Tipohabitacion = item.Tipohabitacion
                });
            }
            GridViewListaGeneral.DataSource = listaGeneral;
            GridViewListaGeneral.DataBind();
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            cargarLista(TextBoxCliente.Text);
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            cargarLista();
        }
  
    }
}
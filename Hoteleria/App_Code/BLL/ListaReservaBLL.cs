
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;


/// <summary>
/// Descripción breve de ListaReservaBLL
/// </summary>
public class ListaReservaBLL
{
	public ListaReservaBLL()
	{

	}

    public static List<tblListaReservas> SelectReservasGenerales()
    {

        ListaReservaDataSetTableAdapters.ListaReservasGeneralesTableAdapter adapter = new ListaReservaDataSetTableAdapters.ListaReservasGeneralesTableAdapter();
        ListaReservaDataSet.ListaReservasGeneralesDataTable tablaReservasGenerales = adapter.GetDataGeneral();

        List<tblListaReservas> list = new List<tblListaReservas>();

        foreach (var row in tablaReservasGenerales)
        {
            tblListaReservas Obj = rowToDto(row);
            list.Add(rowToDto(row));
        }
        return list;
    }

    public static List<tblListaReservas> SelectReservasClientes(string Nombre)
    {
        List<tblListaReservas> listareserva = new List<tblListaReservas>();
        ListaReservaDataSetTableAdapters.ListaReservasGeneralesTableAdapter adapter = new ListaReservaDataSetTableAdapters.ListaReservasGeneralesTableAdapter();
        ListaReservaDataSet.ListaReservasGeneralesDataTable tablaReservasGenerales = adapter.GetDataByPersona(Nombre);
        foreach (ListaReservaDataSet.ListaReservasGeneralesRow row in tablaReservasGenerales)
        {
            listareserva.Add(rowToDto(row));
        }
        return listareserva;
    }
    private static tblListaReservas rowToDto(ListaReservaDataSet.ListaReservasGeneralesRow row)
    {
        tblListaReservas objListaGeneral = new tblListaReservas()
        {
            Nombre = row.Nombre,
            Apellido = row.Apellido,
            FechaInicio = row.FechaInicio,
            FechaFinal = row.FechaFinal,
            Costo = row.Costo,
            NumeroHabitacion = row.NumeroHabitacion,
            Tipohabitacion = row.TipoHabitacion

        };

        return objListaGeneral;
    }
}
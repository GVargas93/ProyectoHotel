using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Descripción breve de tblListaReservas
/// </summary>
public class tblListaReservas
{
	public tblListaReservas()
	{
		//
		// TODO: Agregar aquí la lógica del constructor
		//
	}
    public string Nombre { get; set; }

    public string Apellido { get; set; }

    public DateTime FechaInicio { get; set; }

    public DateTime FechaFinal { get; set; }

    public int Costo { get; set; }

    public int NumeroHabitacion { get; set; }

    public string Tipohabitacion { get; set; }
}
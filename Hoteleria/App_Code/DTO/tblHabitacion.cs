using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Descripción breve de tblHabitacion
/// </summary>
public class tblHabitacion
{
	public tblHabitacion()
	{
		//
		// TODO: Agregar aquí la lógica del constructor
		//
	}

    public int HabitacionID { get; set; }

    public int NumeroHabitacion { get; set; }

    public bool Estado { get; set; }

    public int Costo { get; set; }

    public string Descripcion { get; set; }

    public int TipoHabitacionFK { get; set; }
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Descripción breve de ReservaBLL
/// </summary>
public class ReservaBLL
{
    public ReservaBLL()
    {
        //
        // TODO: Agregar aquí la lógica del constructor
        //
    }

    public static List<tblReserva> SelectAll()
    {
        List<tblReserva> listaReserva = new List<tblReserva>();
        tblReservaDSTableAdapters.Tbl_ReservaTableAdapter ReservaAdapter = new tblReservaDSTableAdapters.Tbl_ReservaTableAdapter();
        tblReservaDS.Tbl_ReservaDataTable tablaReserva = ReservaAdapter.SelectAll();
        foreach (tblReservaDS.Tbl_ReservaRow row in tablaReserva)
        {
            listaReserva.Add(rowToDto(row));
        }
        return listaReserva;
    }

    private static tblReserva rowToDto(tblReservaDS.Tbl_ReservaRow row)
    {
        tblReserva objReserva = new tblReserva();
        objReserva.ReservaID = row.lReserva_iD;
        objReserva.FechaEntrada = row.dFechaEntrada;
        objReserva.FechaSalida = row.dFechaSalida;
        objReserva.CostoTotal = row.lCostoTotal;
        objReserva.Observacion = row.sObservacion;
        objReserva.HabitacionFK = row.lHabitacion_iD_FK;
        objReserva.ClienteFK = row.lCliente_iD_FK;
<<<<<<< HEAD
        objReserva.EstadoFK = row.lEstado_iD_FK;
        objReserva.CantidadAdulto = row.lCantidadAdultos;
<<<<<<< HEAD
=======
=======
        objReserva.CantidadAdultos = row.lCantidadAdultos;
>>>>>>> 360ecd1cfd6779b8a1df6b6914138dd5708c1ea2
>>>>>>> 44bfef7c874d394d5601a2e59fee3314a3fe6624
        objReserva.CantidadNinhos = row.lCantidadNinhos;

        return objReserva;
    }

    public static tblReserva SelectById(int Reserva_ID)
    {
        tblReservaDSTableAdapters.Tbl_ReservaTableAdapter ReservaAdapter = new tblReservaDSTableAdapters.Tbl_ReservaTableAdapter();
        tblReservaDS.Tbl_ReservaDataTable tablaReserva = ReservaAdapter.SelectById(Reserva_ID);
        if (tablaReserva.Rows.Count == 0)
        {
            return null;
        }
        return rowToDto(tablaReserva[0]);

    }

<<<<<<< HEAD
=======
<<<<<<< HEAD
>>>>>>> 44bfef7c874d394d5601a2e59fee3314a3fe6624
    public static void Insert(DateTime FechaEntrada, DateTime FechaSalida, int CostoTotal, string Observacion, int HabitacionFK, int ClienteFK, int EstadoFK, int CantidadAdultos, int CantidadNinhos)
    {
        tblReservaDSTableAdapters.Tbl_ReservaTableAdapter ReservaAdapter = new tblReservaDSTableAdapters.Tbl_ReservaTableAdapter();
        ReservaAdapter.Insert(FechaEntrada, FechaSalida, CostoTotal, Observacion, HabitacionFK, ClienteFK, EstadoFK, CantidadAdultos, CantidadNinhos);
    }

    public static void Update(DateTime FechaEntrada, DateTime FechaSalida, int CostoTotal, string Observacion, int HabitacionFK, int ClienteFK, int EstadoFK, int CantidadAdultos, int CantidadNinhos, int ReservaID)
    {
        tblReservaDSTableAdapters.Tbl_ReservaTableAdapter ReservaAdapter = new tblReservaDSTableAdapters.Tbl_ReservaTableAdapter();
        ReservaAdapter.Update(FechaEntrada, FechaSalida, CostoTotal, Observacion, HabitacionFK, ClienteFK, EstadoFK, CantidadAdultos, CantidadNinhos, ReservaID);
<<<<<<< HEAD
=======
=======
    public static void Insert(DateTime FechaEntrada, DateTime FechaSalida, int CostoTotal, string Observacion, int HabitacionFK, int ClienteFK, int CantidadAdultos, int CantidadNinhos)
    {
        tblReservaDSTableAdapters.Tbl_ReservaTableAdapter ReservaAdapter = new tblReservaDSTableAdapters.Tbl_ReservaTableAdapter();
        ReservaAdapter.Insert(FechaEntrada, FechaSalida, CostoTotal, Observacion, HabitacionFK, ClienteFK, CantidadAdultos, CantidadNinhos);
    }

    public static void Update(DateTime FechaEntrada, DateTime FechaSalida, int CostoTotal, string Observacion, int HabitacionFK, int ClienteFK, int CantidadAdultos, int CantidadNinhos, int ReservaID)
    {
        tblReservaDSTableAdapters.Tbl_ReservaTableAdapter ReservaAdapter = new tblReservaDSTableAdapters.Tbl_ReservaTableAdapter();
        ReservaAdapter.Update(FechaEntrada, FechaSalida, CostoTotal, Observacion, HabitacionFK, ClienteFK, CantidadAdultos, CantidadNinhos, ReservaID);
>>>>>>> 360ecd1cfd6779b8a1df6b6914138dd5708c1ea2
>>>>>>> 44bfef7c874d394d5601a2e59fee3314a3fe6624
    }

    public static void Delete(int Reserva_ID)
    {
        tblReservaDSTableAdapters.Tbl_ReservaTableAdapter ReservaAdapter = new tblReservaDSTableAdapters.Tbl_ReservaTableAdapter();
        ReservaAdapter.Delete(Reserva_ID);
    }
}
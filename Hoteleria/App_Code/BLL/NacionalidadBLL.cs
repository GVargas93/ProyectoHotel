using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Descripción breve de NacionalidadBLL
/// </summary>
public class NacionalidadBLL
{
    public NacionalidadBLL()
    {
        //
        // TODO: Agregar aquí la lógica del constructor
        //
    }

    public static List<TblNacionalidades> SelectAll()
    {
        List<TblNacionalidades> listaNacionalidad = new List<TblNacionalidades>();
        tblNacionalidadDSTableAdapters.Tbl_NacionalidadTableAdapter nacionalidadAdapter = new tblNacionalidadDSTableAdapters.Tbl_NacionalidadTableAdapter();
        tblNacionalidadDS.Tbl_NacionalidadDataTable tablaNacionalidad = nacionalidadAdapter.SelectAll();
        foreach (tblNacionalidadDS.Tbl_NacionalidadRow row in tablaNacionalidad)
        {
            listaNacionalidad.Add(rowToDto(row));
        }
        return listaNacionalidad;
    }

    private static TblNacionalidades rowToDto(tblNacionalidadDS.Tbl_NacionalidadRow row)
    {
        TblNacionalidades objNacionalidad = new TblNacionalidades();
        objNacionalidad.NacionalidadID = row.lNacionalidad_iD;
        objNacionalidad.Pais = row.sPais;
        objNacionalidad.Nacionalidad = row.sNacionalidad;
        return objNacionalidad;
    }

    public static TblNacionalidades SelectById(int Nacionalidad_ID)
    {
        tblNacionalidadDSTableAdapters.Tbl_NacionalidadTableAdapter nacionalidadAdapter = new tblNacionalidadDSTableAdapters.Tbl_NacionalidadTableAdapter();
        tblNacionalidadDS.Tbl_NacionalidadDataTable tablaNacionalidad = nacionalidadAdapter.SelectById(Nacionalidad_ID);
        if (tablaNacionalidad.Rows.Count == 0)
        {
            return null;
        }
        return rowToDto(tablaNacionalidad[0]);

    }

    public static void Insert(string Pais, string Nacionalidad)
    {
        tblNacionalidadDSTableAdapters.Tbl_NacionalidadTableAdapter nacionalidadAdapter = new tblNacionalidadDSTableAdapters.Tbl_NacionalidadTableAdapter();
        nacionalidadAdapter.Insert(Nacionalidad, Pais);
    }

    public static void Update(string Pais, string Nacionalidad, int NacionalidadID)
    {
        tblNacionalidadDSTableAdapters.Tbl_NacionalidadTableAdapter nacionalidadAdapter = new tblNacionalidadDSTableAdapters.Tbl_NacionalidadTableAdapter();
        nacionalidadAdapter.Update(Nacionalidad, Pais, NacionalidadID);
    }

    public static void Delete(int NacionalidadID)
    {
        tblNacionalidadDSTableAdapters.Tbl_NacionalidadTableAdapter nacionalidadAdapter = new tblNacionalidadDSTableAdapters.Tbl_NacionalidadTableAdapter();
        nacionalidadAdapter.Delete(NacionalidadID);
    }
}
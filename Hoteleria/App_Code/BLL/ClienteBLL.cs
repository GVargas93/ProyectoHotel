using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Descripción breve de ClienteBLL
/// </summary>
public class ClienteBLL
{
    public ClienteBLL()
    {
        //
        // TODO: Agregar aquí la lógica del constructor
        //
    }

    public static List<tblClientes> SelectAll()
    {
        List<tblClientes> listaCliente = new List<tblClientes>();

        tblClientesDSTableAdapters.Tbl_ClienteTableAdapter clienteAdapter = new tblClientesDSTableAdapters.Tbl_ClienteTableAdapter();
        tblClientesDS.Tbl_ClienteDataTable tablaCliente = clienteAdapter.SelectAll();
        foreach (tblClientesDS.Tbl_ClienteRow row in tablaCliente)
        {
            listaCliente.Add(rowToDto(row));
        }
        return listaCliente;
    }

    private static tblClientes rowToDto(tblClientesDS.Tbl_ClienteRow row)
    {
        tblClientes objCliente = new tblClientes();
        objCliente.ClienteID = row.lCliente_iD;
        objCliente.Nombre = row.sNombre;
        objCliente.Apellido = row.sApellido;
        objCliente.Direccion = row.sDireccion;
        objCliente.Telefono = row.sTelefono;
        objCliente.Documento = row.sDocumento;
        objCliente.NacionalidadFK = row.lNacionalidad_iD_FK;
        return objCliente;
    }

    public static tblClientes SelectById(int Cliente_ID)
    {
        tblClientesDSTableAdapters.Tbl_ClienteTableAdapter clienteAdapter = new tblClientesDSTableAdapters.Tbl_ClienteTableAdapter();
        tblClientesDS.Tbl_ClienteDataTable tablaCliente = clienteAdapter.SelectById(Cliente_ID);
        if (tablaCliente.Rows.Count == 0)
        {
            return null;
        }
        return rowToDto(tablaCliente[0]);

    }

    public static void Insert(string Nombre, string Apellido, string Direccion, string Telefono, string Documento, int NacionalidadFK)
    {
        tblClientesDSTableAdapters.Tbl_ClienteTableAdapter clienteAdapter = new tblClientesDSTableAdapters.Tbl_ClienteTableAdapter();
        clienteAdapter.Insert(NacionalidadFK, Documento, Telefono, Direccion, Apellido, Nombre);
    }

    public static void Update(string Nombre, string Apellido, string Direccion, string Telefono, string Documento, int NacionalidadFK, int ClienteID)
    {
        tblClientesDSTableAdapters.Tbl_ClienteTableAdapter clienteAdapter = new tblClientesDSTableAdapters.Tbl_ClienteTableAdapter();
        clienteAdapter.Update(NacionalidadFK, Documento, Telefono, Direccion, Apellido, Nombre, ClienteID);
    }

    public static void Delete(int ClienteID)
    {
        tblClientesDSTableAdapters.Tbl_ClienteTableAdapter clienteAdapter = new tblClientesDSTableAdapters.Tbl_ClienteTableAdapter();
        clienteAdapter.Delete(ClienteID);
    }
}
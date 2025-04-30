using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace TP5_Programacion
{
    public partial class EliminarSucursales : System.Web.UI.Page
    {
        private int filasAfectadas;

        private Conexion conexion = new Conexion();
        protected void Page_Load(object sender, EventArgs e)
        {
            UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
        }


        private void limpiarCampos()
        {
            txtIngresarIdSucursal.Text = "";
        }

        protected void btnEliminar_Click(object sender, EventArgs e)
        {
            //ESTABLEZCO LA CONSULTA SQL QUE SE DESEA EJECUTAR
            string consultaSQL = "DELETE FROM Sucursal WHERE Id_Sucursal = " + txtIngresarIdSucursal.Text;

            //Ejecutar Consulta
            filasAfectadas = conexion.ejecutarTransaccion(consultaSQL);

            limpiarCampos();
            mostrarMensaje(filasAfectadas);
        }

        private void mostrarMensaje(int filasAfectadas)
        {
            if (filasAfectadas == 1)
            {
                lblMensaje.Text = "La sucursal se ha eliminado con éxito";
                lblMensaje.ForeColor = System.Drawing.Color.Red;

            }
            else
            {
                lblMensaje.Text = "El ID ingresado no existe. No se eliminó ninguna sucursal.";
                lblMensaje.ForeColor = System.Drawing.Color.Red;
            }

        }
    }
}
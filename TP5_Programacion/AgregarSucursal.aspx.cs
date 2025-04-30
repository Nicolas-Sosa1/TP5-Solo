using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TP5_Programacion
{
    public partial class AgregarSucursal : System.Web.UI.Page
    {
        string consultaSQL;

        private const string cadenaConexion = @"Data Source=DESKTOP-Q0EVBE4\SQLEXPRESS;Initial Catalog=BDSucursales;Integrated Security=True";

        private string consultaProvincias = "SELECT * FROM Provincia";

        private int filasAfectadas;

        private Conexion conexion = new Conexion();

        protected void Page_Load(object sender, EventArgs e)
        {
            UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;

            if (IsPostBack == false)
            {
                cargarDropDownList();
            }
        }

        private void cargarDropDownList()
        {
            //Establecemos la conexion a la base de datos en SQL Server
            SqlConnection sqlConnection = new SqlConnection(cadenaConexion);

            
            sqlConnection.Open();

            // Consulta SQL que se desea ejecutar
            SqlCommand sqlCommand = new SqlCommand(consultaProvincias, sqlConnection);

            //Ejecutar Consulta SqlCommand
            SqlDataReader sqlDataReader = sqlCommand.ExecuteReader();

            //Asignar la tabla de datos como origen de datos del DropDownList
            ddlProvincia.DataSource = sqlDataReader;
            ddlProvincia.DataTextField = "DescripcionProvincia";
            ddlProvincia.DataValueField = "Id_Provincia"; //value
            // Enlazar los datos con el DropDownList
            ddlProvincia.DataBind();

            // Agregar una opción por defecto al inicio del DropDownList
            ddlProvincia.Items.Insert(0, new ListItem("-- Seleccione una provincia --", "0"));

            //Cerramos la conexion a la base de datos 
            sqlConnection.Close();

        }


        protected void btnAceptar_Click(object sender, EventArgs e)
        {
            string idProvincia = ddlProvincia.SelectedValue;

            //ESTABLEZCO LA CONSULTA SQL QUE SE DESEA EJECUTAR
            string consultaSQL = "INSERT INTO Sucursal (NombreSucursal, DescripcionSucursal, Id_ProvinciaSucursal, DireccionSucursal) VALUES ('"+ txtNombreSucursal.Text + "', '"+ txtDescripcion.Text + "', "+ ddlProvincia.SelectedValue + ", '"+ txtDireccion.Text + "')";


            //Ejecutar Consulta
            filasAfectadas = conexion.ejecutarTransaccion(consultaSQL);

            limpiar();
            mostrarMensaje(filasAfectadas);

        }

        private void limpiar()
        {
            txtDescripcion.Text = "";
            txtDireccion.Text = "";
            txtNombreSucursal.Text = "";
            ddlProvincia.SelectedIndex = 0;
        }

        private void mostrarMensaje(int filasAfectadas)
        {
            if (filasAfectadas == 1)
            {
                lblMensaje.Text = "la sucursal se ha agregado con éxito";
                lblMensaje.ForeColor = System.Drawing.Color.Red;

            }
         
        }
    }
}
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TP5_Programacion
{
    public partial class ListadoSucursales : System.Web.UI.Page
    {
        private const string cadenaConexion = @"Data Source=DESKTOP-Q0EVBE4\SQLEXPRESS;Initial Catalog=BDSucursales;Integrated Security=True";

        string consultaSQL;
        protected void Page_Load(object sender, EventArgs e)
        {
            UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;

            if (IsPostBack == false)
            {
                cargarTabla();
            }
        }


        private void cargarTabla()
        {
            consultaSQL = "SELECT Id_Sucursal, NombreSucursal, DescripcionSucursal, Id_ProvinciaSucursal, DireccionSucursal FROM Sucursal";

            SqlConnection connection = new SqlConnection(cadenaConexion);


            connection.Open();


            SqlCommand sqlCommand = new SqlCommand(consultaSQL, connection);
            

            SqlDataReader sqlDataReader = sqlCommand.ExecuteReader();

            gvSucursales.DataSource = sqlDataReader;
            gvSucursales.DataBind();

            connection.Close();
        }

        protected void btnFiltrar_Click(object sender, EventArgs e)
        {

            consultaSQL = "SELECT Id_Sucursal, NombreSucursal, DescripcionSucursal, Id_ProvinciaSucursal, DireccionSucursal FROM Sucursal WHERE Id_Sucursal = " + txtIdSucursal.Text;
            SqlConnection connection = new SqlConnection(cadenaConexion);


            connection.Open();


            SqlCommand sqlCommand = new SqlCommand(consultaSQL, connection);
            

            SqlDataReader sqlDataReader = sqlCommand.ExecuteReader();

            gvSucursales.DataSource = sqlDataReader;
            gvSucursales.DataBind();

            connection.Close();
        }

        protected void btnMostrarTodos_Click(object sender, EventArgs e)
        {
            cargarTabla();
        }

        
    }
}
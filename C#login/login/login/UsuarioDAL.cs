using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data.SqlClient;

namespace login
{
    class UsuarioDAL
    {
        public static int CrearCuentas(string pUsuario, string pContraseña)
        {
            int resultado = 0;
            SqlConnection conexion = BDComun.ObtenerCOnexion();
            SqlCommand Comando = new SqlCommand(string.Format("Insert Into Usuariosp (Nombre, Contraseña) values ('{0}', PwdEncrypt('{1}') )", pUsuario, pContraseña), conexion);
            resultado = Comando.ExecuteNonQuery();
            conexion.Close();
            return resultado;

        }
    }
}

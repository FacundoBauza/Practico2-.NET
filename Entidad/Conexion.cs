using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Entidad
{
    public class Conexion
    {
        
        static string servidor = "localhost";
        static string bd = "PruebaP2";
        static string usuario = "sa";
        static string password = "1234";
        static string puerto = "1433";

        string conex = "Data Source=" + servidor + "," + puerto + ";" + "user id=" + usuario + ";" + "password=" + password + ";" + "Initial Catalog=" + bd + ";" + "Persist Security Info=true";


        public string establecerConexion()
        {
            return conex;
        }
    }
}

using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;
using Dominio;
using Negocio;
using System.Data;

namespace Presentacion
{
    /// <summary>
    /// Descripción breve de Login
    /// </summary>
    [WebService(Namespace = "http://tempuri.org/")]
    [WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
    [System.ComponentModel.ToolboxItem(false)]
    // Para permitir que se llame a este servicio web desde un script, usando ASP.NET AJAX, quite la marca de comentario de la línea siguiente. 
    // [System.Web.Script.Services.ScriptService]
    public class Login : System.Web.Services.WebService
    {
        LoginNego loginNego = new LoginNego();

        [WebMethod]
        public DataTable usuario(String usuario)
        {
            DataTable data = new DataTable();
            data = loginNego.compararUsuarioPass(usuario);
            data.TableName = "ListarUsuario";
            return data;
        }

        [WebMethod]
        public void RegistroUsuario(String usuario, String nombre, String apellido, String password)
        {
            LoginDom loginDom = new LoginDom();
            loginDom.Usuario = usuario;
            loginDom.Nombre = nombre;
            loginDom.Apellido = apellido;
            loginDom.Password = password;
            loginNego.GuardarUsuario(loginDom);
        }
    }
}

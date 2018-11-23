using System;
using System.Collections.Generic;
using System.Linq;
using System.Security.Cryptography;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Presentacion
{
    public partial class RegistroUsuario : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        public String Hash(byte[] val)
        {
            using (SHA1Managed sha1 = new SHA1Managed())
            {
                var hash = sha1.ComputeHash(val);
                return Convert.ToBase64String(hash);
            }
        }

        protected void BtnLogin_Click(object sender, EventArgs e)
        {
            CrearUsuario();
        }

        public void CrearUsuario()
        {
            if(txtPass.Text == txtPassConfirm.Text)
            {
                byte[] pass;
                String usuaruio = TxtUsuario.Text;
                String Apellido = TxtApellido.Text;
                String Nombre = TxtNombreUsuario.Text;
                pass = System.Text.Encoding.UTF8.GetBytes(txtPass.Text.ToString());
                String Password = Hash(pass);
                LoginWS.Login loginws = new LoginWS.Login();
                loginws.RegistroUsuario(usuaruio,Nombre,Apellido,Password);
                Response.Redirect("~/Login.aspx");
            }
            else
            {
                LblError.Text = "las contraseñas no coinsiden";
            }
            
        }
    }
}
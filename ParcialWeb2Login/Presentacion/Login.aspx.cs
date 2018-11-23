using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Security.Cryptography;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Presentacion
{
    public partial class Login : System.Web.UI.Page
    {
        private string hashpass;
        private string usuario;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BtnLogin_Click(object sender, EventArgs e)
        {
            Registro();
        }

        public void Registro()
        {

            byte[] pass;
            pass = System.Text.Encoding.UTF8.GetBytes(txtPass.Text.ToString());
            hashpass = Hash(pass);
            usuario = txtUsuario.Text;
            CompararUsuaruio(usuario, hashpass);

        }
        public String Hash(byte[] val)
        {
            using (SHA1Managed sha1 = new SHA1Managed())
            {
                var hash = sha1.ComputeHash(val);
                return Convert.ToBase64String(hash);
            }
        }
        private void CompararUsuaruio(string usuario, string hashpass)
        {
            LoginWS.Login loginws = new LoginWS.Login();
            DataTable data = loginws.usuario(usuario);
            string usuariobase = data.Rows[0]["usuario"].ToString();
            string contraseñabase = data.Rows[0]["contraseña"].ToString();
            if (contraseñabase == hashpass && usuario == usuariobase)
            {
                Session["log"] = usuario;
                Response.Redirect("~/Default.aspx");
            }
            else
            {
                LblError.Text = "usuario o contraseña incorrecto";
            }

        }
    }
}
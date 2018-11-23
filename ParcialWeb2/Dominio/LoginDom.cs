using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Dominio
{
    public class LoginDom
    {
        private String usuario;
        private String nombre;
        private String apellido;
        private String password;

        public string Usuario
        {
            get
            {
                return usuario;
            }

            set
            {
                usuario = value;
            }
        }

        public string Nombre
        {
            get
            {
                return nombre;
            }

            set
            {
                nombre = value;
            }
        }

        public string Apellido
        {
            get
            {
                return apellido;
            }

            set
            {
                apellido = value;
            }
        }

        public string Password
        {
            get
            {
                return password;
            }

            set
            {
                password = value;
            }
        }

        public LoginDom()
        {

        }

        public LoginDom(string usuario, string nombre, string apellido, string password)
        {
            this.usuario = usuario;
            this.nombre = nombre;
            this.apellido = apellido;
            this.password = password;
        }
    }
}

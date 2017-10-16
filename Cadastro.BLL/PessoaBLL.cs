using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Cadastro.BLL
{
    public class PessoaBLL
    {
        public static void validaCampos(string nome, string idade, string endereco, string cidade, string estado) {
            if (String.IsNullOrEmpty(nome)) {
                throw new Exception("Informe o nome");
            }

            if (String.IsNullOrEmpty(idade)) {
                throw new Exception("Informe a idade");
            }

            if (String.IsNullOrEmpty(endereco)) {
                throw new Exception("Informe a cidade");
            }

            if (String.IsNullOrEmpty(estado)) {
                throw new Exception("Informe o estado");
            }
        }
    }
}

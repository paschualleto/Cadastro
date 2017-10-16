using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Cadastro
{
    public partial class CadastroPessoa : System.Web.UI.Page
    {
        protected static List<Entidade.Pessoa> pessoas = new List<Entidade.Pessoa>(); 
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack) {
                bindGrid();
            }
        }

        private void bindGrid()
        {
            gridView.DataSource = pessoas;
            gridView.DataBind();
        }

        protected void btnAdicionar_Click(object sender, EventArgs e)
        {
            adicionarPessoas();
            bindGrid();
            Response.Redirect("CadastroPessoa.aspx");
        }

        private void adicionarPessoas()
        {
            try {
                BLL.PessoaBLL.validaCampos(txtNome.Text, txtIdade.Text, txtEndereco.Text, txtCidade.Text, txtEstado.Text);
            }
            catch (Exception ex) {
                pnErro.Visible = true;
                lbMessageAlert.Text = "Erro: " + ex.Message;
            }

            pessoas.Add(new Entidade.Pessoa()
            {
                nome = txtNome.Text,
                endereco = txtEndereco.Text,
                cidade = txtCidade.Text,
                estado = txtEstado.Text,
                idade = txtIdade.Text
            });

            pnSucesso.Visible = true;
            lbMessage.Text = "Salvo com sucesso";
            
        }

        protected void btnExluir_Click(object sender, EventArgs e)
        {
            pessoas = new List<Entidade.Pessoa>();
            bindGrid();
        }

        protected void gridView_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "Remover")
            {

                int rowIndex = Convert.ToInt32(e.CommandArgument);
                
                pessoas.RemoveAt(rowIndex);

                lbMessage.Text = "Removido";
                bindGrid();
            }
        }
    }
}
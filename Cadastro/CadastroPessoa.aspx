<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CadastroPessoa.aspx.cs" Inherits="Cadastro.CadastroPessoa" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Cadastro de Pessoas</title>
    <link href="../Content/bootstrap.min.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div class="panel panel-info">
                
                <div class="panel-footer">
                    <div class="panel-body">
                        <div class="col-md-12">
                            <asp:Label runat="server" Text="Nome:" />
                            <asp:TextBox runat="server" ID="txtNome" ClientIDMode="Static" CssClass="form-control" MaxLength="10"/>
                            <asp:Label runat="server" Text="Idade:" />
                            <asp:TextBox runat="server" ID="txtIdade" ClientIDMode="Static" CssClass="form-control" MaxLength="10"/>
                            <asp:Label runat="server" Text="Endereço:" />
                            <asp:TextBox runat="server" ID="txtEndereco" ClientIDMode="Static" CssClass="form-control" MaxLength="10"/>
                            <asp:Label runat="server" Text="Cidade:" />
                            <asp:TextBox runat="server" ID="txtCidade" ClientIDMode="Static" CssClass="form-control" MaxLength="10"/>
                            <asp:Label runat="server" Text="Estado:" />
                            <asp:TextBox runat="server" ID="txtEstado" ClientIDMode="Static" CssClass="form-control" MaxLength="10"/>
                        </div>
                    </div>
                </div>

                <asp:Panel runat="server" ID="pnSucesso" Visible="false">
                    <div class="alert alert-success">
                        <asp:Label ID="lbMessage" runat="server"></asp:Label>
                    </div>
                </asp:Panel>
                
                <asp:Panel runat="server" ID="pnErro" Visible="false">
                    <div class="alert alert-warning">
                        <asp:Label ID="lbMessageAlert" runat="server"></asp:Label>
                    </div>
                </asp:Panel>
                

                <asp:Button runat="server" ID="btnAdicionar" Text="Salvar" CssClass="btn btn-success" OnClick="btnAdicionar_Click"/>

                <asp:Button runat="server" ID="btnExluir" Text="Excluir" CssClass="btn btn-warning" OnClick="btnExluir_Click"/>

                <asp:GridView runat="server" ID="gridView" OnRowCommand="gridView_RowCommand" ClientIDMode="Static">
                    <Columns>
                        <asp:TemplateField>
                            <ItemTemplate>
                                <asp:Button ID="RemoveButton" runat="server"
                                            CssClass="btn btn-warning"
                                            CommandName="Remover"
                                            CommandArgument="<%# ((GridViewRow) Container).RowIndex %>"
                                            Text="Excluir" />
                            </ItemTemplate>
                        </asp:TemplateField>

                    </Columns>
                    
                </asp:GridView>

            </div>
        </div>
    </form>
</body>
</html>

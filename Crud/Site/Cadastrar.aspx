<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Cadastrar.aspx.cs" Inherits="Site.Page.Cadastrar" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    
               <!-- Titulo da pagina -->
    <title>Bem-Vindo a pagina de cadastro </title>
    
                    <!-- Incluindo o CSS do Bootstrap -->
    <link type ="text/css"rel="stylesheet" href="Content/bootstrap.css" />

</head>
    
     <!-- jQuery (necessario para os plugins Javascript do Bootstrap) -->
    <script src = " Scripts/jquery-1.9.1.min.js"></script>
          <!-- Incluindo o JavaScript do Bootstrap -->
    <script src ="Scripts/bootstrep.mim.js"></script>
<body>
    <form id="form1" runat="server">
    
        
         <!-- Navbars são componentes meta responsivos que servem como cabeçalhos de navegação  -->

        <div>
            <div class="navbar navbar-default navbar-fixed-top" role="navigation">
                <div class="container">
                    <div class="navbar-header">
                        <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                            <span class="sr-only">Toggle navigation</span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                        </button>
                        <a class="navbar-brand" href="Default.aspx"><span>
                           <a class="navbar-brand " href="Inicio.aspx"> <span> <img alt="logo" src="Imagens/x.png" height="30" /></span>Sistema de Cadastro Web</a>
                </div>

                <div class="navbar-collapse collapse">
                    <ul class="nav navbar-nav navbar-right">
                        <li class="active"><a href="Default.aspx">Home</a></li>
                        <li><a href="Logar.aspx">Logar</a></li>
                        <li><a href="Cadastrar.aspx">Cadastre-se</a></li>

                           
                            
                            <li class="active"><a href="Logar.aspx">Logar</a></li>
                            
                        </ul>
                    </div>
                </div>
            </div>
        </div>
        
        <div>


            <div class="center-page">

                <!-- txt Ususario -->
                <label class="col-xs-11">Usuario</label>
                <div class="col-xs-11">
                    <asp:TextBox ID="tbUsuario" runat="server" CssClass="form-control" placeholder="usuario"></asp:TextBox>
                </div>

            <!-- senha -->

            <label class="col-xs-11">Senha</label>
            <div class="col-xs-11">
                <asp:TextBox ID="tbSenha" runat="server" CssClass="form-control" placeholder="Senha" TextMode="Password"></asp:TextBox>

            </div>

            <!-- confirma -->

            <label class="col-xs-11">Confirma Senha</label>
            <div class="col-xs-11">
                <asp:TextBox ID="tbConfirma" runat="server" CssClass="form-control" placeholder="Confirma Senha" TextMode="Password"></asp:TextBox>
            </div>
            <!-- Nome -->

            <label class="col-xs-11">Nome</label>
            <div class="col-xs-11">
                <asp:TextBox ID="tbNome" runat="server" CssClass="form-control" placeholder="Nome"></asp:TextBox>
            </div>
            <!-- Email -->

            <label class="col-xs-11">E-mail</label>
            <div class="col-xs-11">
                <asp:TextBox ID="tbEmail" runat="server" CssClass="form-control" placeholder="E-mail" TextMode="Email"></asp:TextBox>
            </div>
            <!-- lebel mensagem -->

            <div class="col-xs-11">
                <asp:Button ID="Button1" runat="server" CssClass="btn-success" Text="Gravar" OnClick="Button1_Click" />
                <asp:Label ID="lblMens" runat="server"></asp:Label>
            </div>

                </div>
            

            <!-- Uma grid arrastada do banco database -->

            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:dadosConnectionString1 %>" DeleteCommand="DELETE FROM [Usuarios] WHERE [Id] = @Id" InsertCommand="INSERT INTO [Usuarios] ([Usuario], [Senha], [Email], [Nome]) VALUES (@Usuario, @Senha, @Email, @Nome)" ProviderName="<%$ ConnectionStrings:dadosConnectionString1.ProviderName %>" SelectCommand="SELECT [Id], [Usuario], [Senha], [Email], [Nome] FROM [Usuarios]" UpdateCommand="UPDATE [Usuarios] SET [Usuario] = @Usuario, [Senha] = @Senha, [Email] = @Email, [Nome] = @Nome WHERE [Id] = @Id">
                <DeleteParameters>
                    <asp:Parameter Name="Id" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="Usuario" Type="String" />
                    <asp:Parameter Name="Senha" Type="String" />
                    <asp:Parameter Name="Email" Type="String" />
                    <asp:Parameter Name="Nome" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="Usuario" Type="String" />
                    <asp:Parameter Name="Senha" Type="String" />
                    <asp:Parameter Name="Email" Type="String" />
                    <asp:Parameter Name="Nome" Type="String" />
                    <asp:Parameter Name="Id" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>




        </div>
           
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource1" EmptyDataText="There are no data records to display.">
            <Columns>
                <asp:BoundField DataField="Id" HeaderText="Id" ReadOnly="True" SortExpression="Id" />
                <asp:BoundField DataField="Usuario" HeaderText="Usuario" SortExpression="Usuario" />
                <asp:BoundField DataField="Senha" HeaderText="Senha" SortExpression="Senha" />
                <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                <asp:BoundField DataField="Nome" HeaderText="Nome" SortExpression="Nome" />
            </Columns>
        </asp:GridView>
    </form>
</body>
</html>

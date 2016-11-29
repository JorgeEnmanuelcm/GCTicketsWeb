<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="GCTickets_Web.Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <%--Login--%>
    <link href="/Bootstrap/Login.css" rel="stylesheet" />
    <script src="/Js/Login.js"></script>
    <div class="container">
        <div class="row">
            <div class="col-md-6 col-md-offset-3">
                <div class="panel panel-login">
                    <div class="panel-heading">
                        <div class="row">
                            <div class="col-xs-6">
                                <a class="active" id="login-form-link">Login</a>
                            </div>
                        </div>
                        <hr />
                    </div>
                    <div class="panel-body">
                        <div class="row">
                            <div class="col-lg-12">
                                <form id="login-form" action="/Default.aspx" method="post" role="form" style="display: block;">
                                    <div class="form-group">
                                        <asp:TextBox ID="UsuarioTextBox" runat="server" TabIndex="1" class="form-control" placeholder="Username" value="" ValidationGroup="A" MaxLength="12"></asp:TextBox>
                                         <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Campo requerido!" ValidationGroup="A" ControlToValidate="UsuarioTextBox" ForeColor="Red"></asp:RequiredFieldValidator>
                                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="UsuarioTextBox" ErrorMessage="Nombre de usuario no valido!" ForeColor="Red" ValidationExpression="[a-zA-Z\s]{2,50}" ValidationGroup="A"></asp:RegularExpressionValidator>
                                    </div>
                                    <div class="form-group">
                                        <asp:TextBox ID="ContraseniaTextBox" runat="server" TabIndex="2" class="form-control" placeholder="Password" TextMode="Password" MaxLength="32"></asp:TextBox>
                                       <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Campo requerido!" ValidationGroup="A" ControlToValidate="ContraseniaTextBox" ForeColor="Red"></asp:RequiredFieldValidator>                                      
                                        <%-- <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="ContraseniaTextBox" ErrorMessage="Contrasenia debe tener numeros y letra mayuscula!" ForeColor="Red" ValidationExpression="(?=^.{8,}$)((?=.*\d)|(?=.*\W+))(?![.\n])(?=.*[A-Z])(?=.*[a-z]).*$" ValidationGroup="A"></asp:RegularExpressionValidator>--%>
                                    </div>
                                    <div class="form-group text-center">
                                        <asp:CheckBox ID="RecordarCheckBox" runat="server" TabIndex="3" class="" />
                                        <label for="RecordarCheckBox">Remember Me</label>
                                    </div>
                                    <div class="form-group">
                                        <div class="row">
                                            <div class="col-sm-6 col-sm-offset-3">
                                                <asp:Button ID="LoginButton" runat="server" TabIndex="4" class="form-control btn btn-login" Text="Iniciar Sesion" ValidationGroup="A" OnClick="LoginButton_Click" />
                                                <asp:Button ID="UsuarioButton" runat="server" TabIndex="5" class="form-control btn btn-login" Text="Registrar" OnClick="UsuarioButton_Click"/>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <div class="row">
                                            <div class="col-lg-12">
                                                <div class="text-center">
                                                    <a href="/Registros/UsuariosForm.aspx" tabindex="6" class="forgot-password">Register</a><br />
                                                    <br />
                                                    <a href="/Default.aspx" tabindex="7" class="forgot-password">Forgot Password?</a>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
</asp:Content>

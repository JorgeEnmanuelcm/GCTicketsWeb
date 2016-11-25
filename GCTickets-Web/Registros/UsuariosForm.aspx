<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="UsuariosForm.aspx.cs" Inherits="GCTickets_Web.Registros.UsuariosForm" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />

    <!-- Page Head -->
    <div class="row">
        <div class="text-center">
            <div class="col-md-12">
                <h1 class="page-header">Usuarios </h1>
            </div>
        </div>
    </div>

    <div class="text-center">
        <div class="col-md-12">
            <div data-ng-app="" data-ng-init="firstName=''">
                <h1>HI {{ firstName }}!</h1>
                <div class="col-md-12">
                    <asp:Label ID="NickLabel" runat="server" Font-Bold="True" max="5" Text="Your Nickname here:"></asp:Label>
                </div>
                <input id="Jinput" runat="server" type="text" value="" data-ng-model="firstName" maxlength="32" />
            </div>
        </div>
    </div>
    <br />
    <br />
    <br />

    <%--UsuarioId--%>
    <div class="form-group">
        <div class="col-md-12">
            <asp:Label ID="UsuarioIdLabel" For="UsuarioIdTexBox" runat="server" Font-Bold="True" Text="Usuario Id:"></asp:Label>
        </div>
        <div class="col-md-6 col-xs-8">
            <asp:TextBox ID="UsuarioIdTextBox" runat="server" CssClass="form-control" placeholder="Usuario Id" ValidationGroup="B" MaxLength="4"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ErrorMessage="Campo requerido!" ValidationGroup="B" ControlToValidate="UsuarioIdTextBox" ForeColor="Red"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator9" runat="server" ControlToValidate="UsuarioIdTextBox" ErrorMessage="Solo se aceptan numeros!" ForeColor="Red" ValidationExpression="[0-9]{1,9}(\.[0-9]{0,2})?$" ValidationGroup="B"></asp:RegularExpressionValidator>
        </div>
        <asp:Button ID="BuscarButton" runat="server" CssClass="btn btn-info" Text="Buscar" ValidationGroup="B" OnClick="BuscarButton_Click" />
    </div>
    <br />

    <%--Nombres--%>
    <div class="form-group">
        <div class="col-md-12">
            <asp:Label ID="NombresLabel" For="NombresTexBox" runat="server" Font-Bold="True" Text="Nombres: "></asp:Label>
        </div>
        <div class="col-md-6 col-xs-8">
            <asp:TextBox ID="NombresTextBox" runat="server" type="text" CssClass="form-control" placeholder="Nombres" ValidationGroup="A" MaxLength="18"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Campo requerido!" ValidationGroup="A" ControlToValidate="NombresTextBox" ForeColor="Red"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="NombresTextBox" ErrorMessage="Solo se aceptan letras!" ForeColor="Red" ValidationExpression="^[A-ZÑ]+[a-zñ\s]+[a-zñ]$" ValidationGroup="A"></asp:RegularExpressionValidator>
        </div>
    </div>
    <br />
    <br />
    <br />

    <%--Apellidos--%>
    <div class="form-group">
        <div class="col-md-12">
            <asp:Label ID="ApellidosLabel" For="ApellidosTexBox" runat="server" Font-Bold="True" Text="Apellidos:"></asp:Label>
        </div>
        <div class="col-md-6 col-xs-8">
            <asp:TextBox ID="ApellidosTextBox" runat="server" CssClass="form-control" placeholder="Apellidos" ValidationGroup="A" MaxLength="18"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Campo requerido!" ValidationGroup="A" ControlToValidate="ApellidosTextBox" ForeColor="Red"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="ApellidosTextBox" ErrorMessage="Solo se aceptan letras!" ForeColor="Red" ValidationExpression="^[A-ZÑ]+[a-zñ\s]+[a-zñ]$" ValidationGroup="A"></asp:RegularExpressionValidator>
        </div>
    </div>
    <br />
    <br />
    <br />

    <%--Telefono--%>
    <div class="form-group">
        <div class="col-md-12">
            <asp:Label ID="TelefonoLabel" For="TelefonoTexBox" runat="server" Font-Bold="True" Text="Telefono:"></asp:Label>
        </div>
        <div class="col-md-6 col-xs-8">
            <asp:TextBox ID="TelefonoTextBox" runat="server" CssClass="form-control" placeholder="Telefono" ValidationGroup="A" MaxLength="15"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Campo requerido!" ValidationGroup="A" ControlToValidate="TelefonoTextBox" ForeColor="Red"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="TelefonoTextBox" ErrorMessage="Telefono no valido!" ForeColor="Red" ValidationExpression="^\+?\d{1,3}?[- .]?\(?(?:\d{2,3})\)?[- .]?\d\d\d[- .]?\d\d\d\d$" ValidationGroup="A"></asp:RegularExpressionValidator>
        </div>
    </div>
    <br />
    <br />
    <br />

    <%--Email--%>
    <div class="form-group">
        <div class="col-md-12">
            <asp:Label ID="EmailLabel" For="EmailTexBox" runat="server" Font-Bold="True" Text="Email:"></asp:Label>
        </div>
        <div class="col-md-6 col-xs-8">
            <asp:TextBox ID="EmailTextBox" runat="server" CssClass="form-control" placeholder="Email" ValidationGroup="A" MaxLength="32"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Campo requerido!" ValidationGroup="A" ControlToValidate="EmailTextBox" ForeColor="Red"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ControlToValidate="EmailTextBox" ErrorMessage="Email no valido!" ForeColor="Red" ValidationExpression="^[_a-z0-9-]+(\.[_a-z0-9-]+)*@[a-z0-9-]+(\.[a-z0-9-]+)*(\.[a-z]{2,3})$" ValidationGroup="A"></asp:RegularExpressionValidator>
        </div>
    </div>
    <br />
    <br />
    <br />

    <%--Direccion--%>
    <div class="form-group">
        <div class="col-md-12">
            <asp:Label ID="DireccionLabel" For="DireccionTexBox" runat="server" Font-Bold="True" Text="Direccion:"></asp:Label>
        </div>
        <div class="col-md-6 col-xs-8">
            <asp:TextBox ID="DireccionTextBox" runat="server" CssClass="form-control" placeholder="Direccion" ValidationGroup="A" MaxLength="31"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Campo requerido!" ValidationGroup="A" ControlToValidate="DireccionTextBox" ForeColor="Red"></asp:RequiredFieldValidator>
            <%--<asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" ControlToValidate="DireccionTextBox" ErrorMessage="Solo numeros y letras!" ForeColor="Red" ValidationExpression="^[a-zA-Z\s]{2,50}*$" ValidationGroup="A"></asp:RegularExpressionValidator>--%>
        </div>
    </div>
    <br />
    <br />
    <br />

    <%--NombreUsuario--%>
    <div class="form-group">
        <div class="col-md-12">
            <asp:Label ID="NombreUsuarioLabel" For="NombreUsuarioTexBox" runat="server" Font-Bold="True" Text="Nombre Usuario:"></asp:Label>
        </div>
        <div class="col-md-6 col-xs-8">
            <asp:TextBox ID="NombreUsuarioTextBox" runat="server" CssClass="form-control" placeholder="Nombre Usuario" ValidationGroup="A" MaxLength="12"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ErrorMessage="Campo requerido!" ValidationGroup="A" ControlToValidate="NombreUsuarioTextBox" ForeColor="Red"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator8" runat="server" ControlToValidate="NombreUsuarioTextBox" ErrorMessage="Nombre de usuario no valido!" ForeColor="Red" ValidationExpression="[a-zA-Z\s]{2,50}" ValidationGroup="A"></asp:RegularExpressionValidator>
        </div>
    </div>
    <br />
    <br />
    <br />

    <%--Contraseña--%>
    <div class="form-group">
        <div class="col-md-12">
            <asp:Label ID="ContraseniaLabel" For="ContraseniaTexBox" runat="server" Font-Bold="True" Text="Contraseña:"></asp:Label>
        </div>
        <div class="col-md-6 col-xs-8">
            <asp:TextBox ID="ContraseniaTextBox" TextMode="Password" runat="server" CssClass="form-control" placeholder="Contraseña" ValidationGroup="A" MaxLength="32"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="Campo requerido!" ValidationGroup="A" ControlToValidate="ContraseniaTextBox" ForeColor="Red"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator6" runat="server" ControlToValidate="ContraseniaTextBox" ErrorMessage="Contrasenia debe tener numeros y letra mayuscula!" ForeColor="Red" ValidationExpression="(?=^.{8,}$)((?=.*\d)|(?=.*\W+))(?![.\n])(?=.*[A-Z])(?=.*[a-z]).*$" ValidationGroup="A"></asp:RegularExpressionValidator>
        </div>
    </div>
    <br />
    <br />
    <br />

    <%--ConfirmarContraseña--%>
    <div class="form-group">
        <div class="col-md-12">
            <asp:Label ID="ConfContraseniaLabel" For="ConfContraseniaTexBox" runat="server" Font-Bold="True" Text="Confirmar Contraseña:"></asp:Label>
        </div>
        <div class="col-md-6 col-xs-8">
            <asp:TextBox ID="ConfContraseniaTexBox" TextMode="Password" runat="server" CssClass="form-control" placeholder="Confirmar Contraseña" ValidationGroup="A" MaxLength="32"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage="Campo requerido!" ValidationGroup="A" ControlToValidate="ConfContraseniaTexBox" ForeColor="Red"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator7" runat="server" ControlToValidate="ConfContraseniaTexBox" ErrorMessage="Contrasenia debe tener numeros y letra mayuscula!" ForeColor="Red" ValidationExpression="(?=^.{8,}$)((?=.*\d)|(?=.*\W+))(?![.\n])(?=.*[A-Z])(?=.*[a-z]).*$" ValidationGroup="A"></asp:RegularExpressionValidator>
            <asp:CompareValidator ID="CompareValidatorContrasenia" runat="server" ControlToCompare="ContraseniaTextBox" ControlToValidate="ConfContraseniaTexBox" ErrorMessage="No coinciden!" ForeColor="Red" ValidationGroup="A"></asp:CompareValidator>
        </div>
    </div>
    <br />
    <br />
    <br />

    <%--Buttons--%>
    <div class="panel-footer">
        <div class="text-center">
            <div class="form-group" style="display: inline-block">
                <asp:Button Text="Nuevo" class="btn btn-warning btn-sm" runat="server" ID="NuevoButton" OnClick="NuevoButton_Click" />
                <asp:Button Text="Guardar" class="btn btn-success btn-sm" runat="server" ID="GuardarButton" ValidationGroup="A" OnClick="GuardarButton_Click" />
                <asp:Button Text="Eliminar" class="btn btn-danger btn-sm" runat="server" ID="EliminarButton" OnClick="EliminarButton_Click" />
            </div>
        </div>
    </div>

</asp:Content>

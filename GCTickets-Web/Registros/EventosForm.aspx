<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="EventosForm.aspx.cs" Inherits="GCTickets_Web.Registros.EventosForm" %>

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
                <h1 class="page-header">Eventos </h1>
            </div>
        </div>
    </div>

    <%--Flayer--%>
    <div class="form-group">
        <div class="text-center">
            <asp:Image ID="Imagen" runat="server" CssClass="avatar" Height="200px" Width="200px" ImageUrl="/Flayers/imagen.jpg" />
        </div>
        <br />
        <br />
        <div class="col-md-6 col-xs-8">
            <asp:FileUpload ID="ImagenFileUpload" runat="server" CssClass="file-field input-field" BorderStyle="Groove" ViewStateMode="Enabled" />
        </div>
        <asp:Button ID="ImagenButton" runat="server" CssClass="btn btn-info" Text="Cargar" OnClick="ImagenButton_Click" />
    </div>
    <br />

    <%--EventoId--%>
    <div class="form-group">
        <div class="col-md-12">
            <asp:Label ID="EventoIdLabel" For="EventoIdTexBox" runat="server" Font-Bold="True" Text="Evento Id:"></asp:Label>
        </div>
        <div class="col-md-6 col-xs-8">
            <asp:TextBox ID="EventoIdTextBox" runat="server" CssClass="form-control" placeholder="Evento Id" MaxLength="4" ValidationGroup="C"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ErrorMessage="Campo requerido!" ValidationGroup="C" ControlToValidate="EventoIdTextBox" ForeColor="Red"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" ControlToValidate="EventoIdTextBox" ErrorMessage="Solo se aceptan numeros!" ForeColor="Red" ValidationExpression="[0-9]{1,9}(\.[0-9]{0,2})?$" ValidationGroup="C"></asp:RegularExpressionValidator>

        </div>
        <asp:Button ID="BuscarButton" runat="server" CssClass="btn btn-info" Text="Buscar" ValidationGroup="C" OnClick="BuscarButton_Click" />
    </div>
    <br />

    <%--TipoEventoId--%>
    <div class="form-group">
        <div class="col-md-12">
            <asp:Label ID="TipoEventoLabel" For="TipoEventoIdDropDownList" runat="server" Font-Bold="True" Text="Tipo Evento Id:"></asp:Label>
        </div>
        <div class="col-md-6 col-xs-8">
            <asp:DropDownList ID="TipoEventoIdDropDownList" runat="server" class="btn btn-default dropdown-toggle"></asp:DropDownList>
        </div>
    </div>
    <br />
    <br />
    <br />

    <%--NombreEvento--%>
    <div class="form-group">
        <div class="col-md-12">
            <asp:Label ID="NombreEventoLabel" For="NombreEventoTexBox" runat="server" Font-Bold="True" Text="Nombre Evento: "></asp:Label>
        </div>
        <div class="col-md-6 col-xs-8">
            <asp:TextBox ID="NombreEventoTextBox" runat="server" CssClass="form-control" ValidationGroup="A" MaxLength="32"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Campo requerido!" ValidationGroup="A" ControlToValidate="NombreEventoTextBox" ForeColor="Red"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="NombreEventoTextBox" ErrorMessage="Solo se aceptan letras!" ForeColor="Red" ValidationExpression="^[A-ZÑ]+[a-zñ\s]+[a-zñ]$" ValidationGroup="A"></asp:RegularExpressionValidator>
        </div>
    </div>
    <br />
    <br />
    <br />

    <%--FechaEvento--%>
    <div class="form-group">
        <div class="col-md-12">
            <asp:Label ID="FechaEventoLabel" For="FechaEventoTextBox" runat="server" Font-Bold="True" Text="Fecha Evento: "></asp:Label>
        </div>
        <div class="col-md-6 col-xs-8">
            <asp:TextBox ID="FechaEventoTextBox" runat="server" CssClass="form-control" Type="date" ValidationGroup="A"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Campo requerido!" ValidationGroup="A" ControlToValidate="FechaEventoTextBox" ForeColor="Red"></asp:RequiredFieldValidator>
        </div>
    </div>
    <br />
    <br />
    <br />

    <%--LugarEvento--%>
    <div class="form-group">
        <div class="col-md-12">
            <asp:Label ID="LugarEventoLabel" For="LugarEventoTextBox" runat="server" Font-Bold="True" Text="Lugar Evento: "></asp:Label>
        </div>
        <div class="col-md-6 col-xs-8">
            <asp:TextBox ID="LugarEventoTextBox" runat="server" CssClass="form-control" placeholder="Lugar Evento" ValidationGroup="A" MaxLength="32">
            </asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Campo requerido!" ValidationGroup="A" ControlToValidate="LugarEventoTextBox" ForeColor="Red"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="LugarEventoTextBox" ErrorMessage="Solo se aceptan letras!" ForeColor="Red" ValidationExpression="^[A-ZÑ]+[a-zñ\s]+[a-zñ]$" ValidationGroup="A"></asp:RegularExpressionValidator>
        </div>
    </div>
    <br />
    <br />
    <br />

    <%--DescTicket--%>
    <div class="form-group">
        <div class="col-md-12">
            <asp:Label ID="DescTicketLabel" For="DescTicketTextBox" runat="server" Font-Bold="True" Text="Descripcion Ticket: "></asp:Label>
        </div>
        <div class="col-md-6 col-xs-8">
            <asp:TextBox ID="DescTicketTextBox" runat="server" CssClass="form-control" placeholder="Descripcion Ticket" ValidationGroup="B" MaxLength="16"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Campo requerido!" ValidationGroup="B" ControlToValidate="DescTicketTextBox" ForeColor="Red"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="DescTicketTextBox" ErrorMessage="Solo se aceptan letras!" ForeColor="Red" ValidationExpression="^[A-ZÑ]+[a-zñ\s]+[a-zñ]$" ValidationGroup="B"></asp:RegularExpressionValidator>
        </div>
    </div>
    <br />
    <br />
    <br />


    <%--CantDisponible--%>
    <div class="form-group">
        <div class="col-md-12">
            <asp:Label ID="CantDisponibleLabel" For="CantDisponibleTextBox" runat="server" Font-Bold="True" Text="Cantidad Disponible: "></asp:Label>
        </div>
        <div class="col-md-6 col-xs-8">
            <asp:TextBox ID="CantDisponibleTextBox" runat="server" CssClass="form-control" placeholder="Cantidad Disponible" MaxLength="5" ValidationGroup="B"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Campo requerido!" ValidationGroup="B" ControlToValidate="CantDisponibleTextBox" ForeColor="Red"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator9" runat="server" ControlToValidate="CantDisponibleTextBox" ErrorMessage="Solo se aceptan numeros!" ForeColor="Red" ValidationExpression="[0-9]{1,9}(\.[0-9]{0,2})?$" ValidationGroup="B"></asp:RegularExpressionValidator>
        </div>
    </div>
    <br />
    <br />
    <br />

    <%--PrecioTicket--%>
    <div class="form-group">
        <div class="col-md-12">
            <asp:Label ID="PrecioTicketLabel" For="PrecioTicketTextBox" runat="server" Font-Bold="True" Text="Precio Ticket: "></asp:Label>
        </div>
        <div class="col-md-6 col-xs-8">
            <asp:TextBox ID="PrecioTicketTextBox" runat="server" CssClass="form-control" placeholder="Precio Ticket" MaxLength="5" ValidationGroup="B"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="Campo requerido!" ValidationGroup="B" ControlToValidate="PrecioTicketTextBox" ForeColor="Red"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ControlToValidate="PrecioTicketTextBox" ErrorMessage="Solo se aceptan numeros!" ForeColor="Red" ValidationExpression="[0-9]{1,9}(\.[0-9]{0,2})?$" ValidationGroup="B"></asp:RegularExpressionValidator>
        </div>
    </div>
    <br />
    <br />
    <br />

    <%--BotonAgregar--%>
    <div class="container">
        <asp:Button ID="AgregarButton" runat="server" class="btn btn-info btn-block" Text="Agregar" ValidationGroup="B" OnClick="AgregarButton_Click" />
    </div>
    <br />
    <br />
    <br />

    <%--Gridview--%>
    <div class="form-group">
        <div class="text-center">
            <div class="table table-responsive col-md-12">
                <asp:GridView ID="EventosGridView" runat="server" class="table table-bordered table-hover table-striped table-responsive" AutoGenerateColumns="False">
                    <Columns>
                        <asp:BoundField DataField="DescTicket" HeaderText="Descripcion Ticket" SortExpression="DescTicket"></asp:BoundField>
                        <asp:BoundField DataField="CantDisponible" HeaderText="Cantidad Disponible" SortExpression="CantDisponible"></asp:BoundField>
                        <asp:BoundField DataField="PrecioTicket" HeaderText="Precio Ticket" SortExpression="PrecioTicket"></asp:BoundField>
                    </Columns>
                </asp:GridView>
            </div>
        </div>
    </div>
    <br />
    <br />
    <br />
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

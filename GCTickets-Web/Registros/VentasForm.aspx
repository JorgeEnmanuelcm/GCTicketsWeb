﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="VentasForm.aspx.cs" Inherits="GCTickets_Web.Registros.VentasForm" %>

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
                <h1 class="page-header">Ventas </h1>
            </div>
        </div>
    </div>

    <%--VentaId--%>
    <div class="form-group">
        <div class="col-md-12">
            <asp:Label ID="VentaIdLabel" For="VentaIdTexBox" runat="server" Font-Bold="True" Text="Venta Id:"></asp:Label>
        </div>
        <div class="col-md-6 col-xs-8">
            <asp:TextBox ID="VentaIdTextBox" runat="server" CssClass="form-control" placeholder="Venta Id" MaxLength="4" ValidationGroup="B"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ErrorMessage="Campo requerido!" ValidationGroup="B" ControlToValidate="VentaIdTextBox" ForeColor="Red"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator9" runat="server" ControlToValidate="VentaIdTextBox" ErrorMessage="Solo se aceptan numeros!" ForeColor="Red" ValidationExpression="[0-9]{1,9}(\.[0-9]{0,2})?$" ValidationGroup="B"></asp:RegularExpressionValidator>
        </div>
        <asp:Button ID="BuscarButton" runat="server" CssClass="btn btn-info" Text="Buscar" ValidationGroup="B" OnClick="BuscarButton_Click" />
    </div>
    <br />

    <%--UsuarioId--%>
    <div class="form-group">
        <div class="col-md-12">
            <asp:Label ID="UsuarioIdLabel" For="UsuarioIdTexBox" runat="server" Font-Bold="True" Text="Usuario Id:"></asp:Label>
        </div>
        <div class="col-md-6 col-xs-8">
            <%--<asp:DropDownList ID="UsuarioIdDropDownList" runat="server" class="btn btn-default dropdown-toggle"></asp:DropDownList>--%>
            <asp:TextBox ID="UsuarioTextBox" runat="server" CssClass="form-control" placeholder="Fecha" ReadOnly="True"></asp:TextBox>
        </div>
    </div>
    <br />
    <br />
    <br />

    <%--Fecha--%>
    <div class="form-group">
        <div class="col-md-12">
            <asp:Label ID="FechaLabel" For="FechaTexBox" runat="server" Font-Bold="True" Text="Fecha:"></asp:Label>
        </div>
        <div class="col-md-6 col-xs-8">
            <asp:TextBox ID="FechaTextBox" runat="server" CssClass="form-control" placeholder="Fecha" MaxLength="12" ReadOnly="True"></asp:TextBox>
        </div>
    </div>
    <br />
    <br />
    <br />

    <%--Descripcion--%>
    <div class="form-group">
        <div class="col-md-12">
            <asp:Label ID="Label1" For="DescripcionTexBox" runat="server" Font-Bold="True" Text="Descripcion:"></asp:Label>
        </div>
        <div class="col-md-6 col-xs-8">
            <asp:TextBox ID="DescripcionTextBox" runat="server" CssClass="form-control" placeholder="Descripcion" MaxLength="20" ValidationGroup="C"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Campo requerido!" ValidationGroup="C" ControlToValidate="DescripcionTextBox" ForeColor="Red"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="DescripcionTextBox" ErrorMessage="Solo se aceptan letras!" ForeColor="Red" ValidationExpression="^[A-ZÑ]+[a-zñ\s]+[a-zñ]$" ValidationGroup="C"></asp:RegularExpressionValidator>
        </div>
    </div>
    <br />
    <br />
    <br />

    <%--EventoId--%>
    <div class="form-group">
        <div class="col-md-12">
            <asp:Label ID="EventoIdLabel" For="EventoDropDownList" runat="server" Font-Bold="True" Text="Evento:"></asp:Label>
        </div>
        <div class="col-md-6 col-xs-8">
            <asp:DropDownList ID="EventoDropDownList" runat="server" class="btn btn-default dropdown-toggle"></asp:DropDownList>
        </div>
        <asp:Button ID="TicketButton" runat="server" CssClass="btn btn-info" Text="Get Tickets" OnClick="TicketButton_Click" />
    </div>
    <br />
    <br />
    <br />

    <%--Ticket--%>
    <div class="form-group">
        <div class="col-md-12">
            <asp:Label ID="TicketLabel" For="TicketDropDownList" runat="server" Font-Bold="True" Text="Ticket:"></asp:Label>
        </div>
        <div class="col-md-6 col-xs-8">
            <asp:DropDownList ID="TicketDropDownList" runat="server" class="btn btn-default dropdown-toggle"></asp:DropDownList>
        </div>
    </div>
    <br />
    <br />
    <br />

    <%--Cantidad--%>
    <div class="form-group">
        <div class="col-md-12">
            <asp:Label ID="CantidadLabel" For="CantidadTexBox" runat="server" Font-Bold="True" Text="Cantidad:"></asp:Label>
        </div>
        <div class="col-md-6 col-xs-8">
            <asp:TextBox ID="CantidadTextBox" runat="server" CssClass="form-control" placeholder="Cantidad" MaxLength="7" ValidationGroup="A"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Campo requerido!" ValidationGroup="A" ControlToValidate="CantidadTextBox" ForeColor="Red"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="CantidadTextBox" ErrorMessage="Solo se aceptan numeros!" ForeColor="Red" ValidationExpression="[0-9]{1,9}(\.[0-9]{0,2})?$" ValidationGroup="A"></asp:RegularExpressionValidator>
        </div>
    </div>
    <br />
    <br />
    <br />

    <%--Total--%>
    <div class="form-group">
        <div class="col-md-12">
            <asp:Label ID="TotalLabel" For="TotalTexBox" runat="server" Font-Bold="True" Text="Total:"></asp:Label>
        </div>
        <div class="col-md-6 col-xs-8">
            <asp:TextBox ID="TotalTextBox" runat="server" CssClass="form-control" placeholder="Total" MaxLength="7" ReadOnly="True"></asp:TextBox>
        </div>
    </div>
    <br />
    <br />
    <br />

    <%--BotonAgregar--%>
    <div class="container">
        <asp:Button ID="AgregarButton" runat="server" class="btn btn-info btn-block" Text="Agregar" ValidationGroup="A" OnClick="AgregarButton_Click" />
    </div>
    <br />
    <br />
    <br />

    <%--Gridview--%>
    <div class="form-group">
        <div class="text-center">
            <div class="table table-responsive col-md-12">
                <asp:GridView ID="VentasGridView" runat="server" class="table table-bordered table-hover table-striped table-responsive" AutoGenerateColumns="False">
                    <Columns>
                        <asp:BoundField DataField="EventoId" HeaderText="Evento Id" SortExpression="EventoId"></asp:BoundField>
                        <asp:BoundField DataField="Ticket" HeaderText="Ticket" SortExpression="Ticket"></asp:BoundField>
                        <asp:BoundField DataField="Cantidad" HeaderText="Cantidad" SortExpression="Cantidad"></asp:BoundField>
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
                <asp:Button Text="Guardar" class="btn btn-success btn-sm" runat="server" ID="GuardarButton" ValidationGroup="C" OnClick="GuardarButton_Click" />
                <asp:Button Text="Eliminar" class="btn btn-danger btn-sm" runat="server" ID="EliminarButton" OnClick="EliminarButton_Click" />
            </div>
        </div>
    </div>
</asp:Content>

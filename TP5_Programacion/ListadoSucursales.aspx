<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ListadoSucursales.aspx.cs" Inherits="TP5_Programacion.ListadoSucursales" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">

        .auto-style1 {
            width: 100%;
        }
        .auto-style12 {
            width: 349px;
            height: 23px;
        }
        .auto-style13 {
            width: 386px;
            height: 23px;
        }
        .auto-style14 {
            height: 23px;
        }
        .auto-style15 {
            width: 192px;
        }
        .auto-style16 {
            width: 192px;
            height: 23px;
        }
        .auto-style17 {
            width: 297px;
        }
        .auto-style18 {
            width: 297px;
            height: 23px;
        }
        .auto-style21 {
            width: 70px;
        }
        .auto-style22 {
            height: 23px;
            width: 70px;
        }
        .auto-style23 {
            height: 34px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style12">
                        <asp:HyperLink ID="hlEliminarSucursal" runat="server" NavigateUrl="AgregarSucursal.aspx">Agregar Sucursales</asp:HyperLink>
                    </td>
                    <td class="auto-style13">
                        <asp:HyperLink ID="hlListadoDeSucursales" runat="server" NavigateUrl="ListadoSucursales.aspx">Listado de Sucursales</asp:HyperLink>
                    </td>
                    <td class="auto-style14">
                        <asp:HyperLink ID="hlAgregarSucursal1" runat="server" NavigateUrl="EliminarSucursales.aspx">Eliminar Sucursales</asp:HyperLink>
                    </td>
                </tr>
            </table>
             <br />
            <table class="auto-style1">
                <tr>
                    <td class="auto-style15"><strong>Listado de sucursales</strong></td>
                    <td class="auto-style17">&nbsp;</td>
                    <td class="auto-style21">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style16"></td>
                    <td class="auto-style18"></td>
                    <td class="auto-style22"></td>
                    <td class="auto-style14"></td>
                </tr>
                <tr>
                    <td class="auto-style23" colspan="4">Búsqueda ingrese Id sucursal&nbsp;&nbsp;&nbsp;
                        <asp:TextBox ID="txtIdSucursal" runat="server" Width="291px" Height="16px" ValidationGroup="1"></asp:TextBox>
                    &nbsp;
                        <asp:RegularExpressionValidator ID="revIdSucursal" runat="server" ControlToValidate="txtIdSucursal" ErrorMessage="Debe ingresar un valor numerico" ValidationExpression="^[0-9,$]*$" ValidationGroup="1">*</asp:RegularExpressionValidator>
&nbsp;&nbsp;
                        <asp:RequiredFieldValidator ID="rfvIdSucursal" runat="server" ControlToValidate="txtIdSucursal" ErrorMessage="El campo no puede estar vacio" ValidationGroup="1">*</asp:RequiredFieldValidator>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="btnFiltrar" runat="server" Text="Filtrar" OnClick="btnFiltrar_Click" ValidationGroup="1" />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
                        <asp:Button ID="btnMostrarTodos" runat="server" Text="Mostrar todos" OnClick="btnMostrarTodos_Click" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style15">&nbsp;</td>
                    <td class="auto-style17">&nbsp;</td>
                    <td class="auto-style21">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>
            <asp:GridView ID="gvSucursales" runat="server">
            </asp:GridView>
            <br />
            <asp:ValidationSummary ID="vsValidaciones" runat="server" ValidationGroup="1" />
            <br />
            <br />
        </div>
    </form>
</body>
</html>

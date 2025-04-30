<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EliminarSucursales.aspx.cs" Inherits="TP5_Programacion.EliminarSucursales" %>

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
            width: 156px;
        }
        .auto-style16 {
            width: 261px;
        }
        .auto-style17 {
            width: 61px;
        }
        .auto-style18 {
            width: 156px;
            height: 23px;
        }
        .auto-style19 {
            width: 261px;
            height: 23px;
        }
        .auto-style20 {
            width: 61px;
            height: 23px;
        }
        .auto-style21 {
            width: 58px;
            height: 23px;
        }
        .auto-style22 {
            width: 58px;
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
            <table class="auto-style1">
                <tr>
                    <td colspan="7">&nbsp;</td>
                </tr>
                <tr>
                    <td colspan="7"><strong>Eliminar Sucursal</strong></td>
                </tr>
                <tr>
                    <td class="auto-style18"></td>
                    <td class="auto-style19"></td>
                    <td class="auto-style20"></td>
                    <td class="auto-style21"></td>
                    <td class="auto-style14"></td>
                    <td class="auto-style14"></td>
                    <td class="auto-style14"></td>
                </tr>
                <tr>
                    <td class="auto-style15">
                        <asp:Label ID="lblIngresarSucursal" runat="server" Text="Ingresar ID sucursal"></asp:Label>
                    </td>
                    <td class="auto-style16">
                        <asp:TextBox ID="txtIngresarIdSucursal" runat="server" Width="247px" ValidationGroup="1"></asp:TextBox>
                    </td>
                    <td class="auto-style17">
                        <asp:RequiredFieldValidator ID="rfvIngreseIdSucursal" runat="server" ControlToValidate="txtIngresarIdSucursal" ErrorMessage="Debe ingresar un valor en el TextBox" ValidationGroup="1">*</asp:RequiredFieldValidator>
                    </td>
                    <td class="auto-style22">
                        <asp:RegularExpressionValidator ID="revIngresarIdSucursal" runat="server" ControlToValidate="txtIngresarIdSucursal" ErrorMessage="Dbe ingresar valores numericos" ValidationExpression="^[0-9,$]*$" ValidationGroup="1">*</asp:RegularExpressionValidator>
                    </td>
                    <td>
                        <asp:Button ID="btnEliminar" runat="server" Text="Eliminar" OnClick="btnEliminar_Click" ValidationGroup="1" />
                    </td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style18"></td>
                    <td class="auto-style19"></td>
                    <td class="auto-style20"></td>
                    <td class="auto-style21"></td>
                    <td class="auto-style14"></td>
                    <td class="auto-style14"></td>
                    <td class="auto-style14"></td>
                </tr>
                <tr>
                    <td colspan="2">
                        <asp:Label ID="lblMensaje" runat="server"></asp:Label>
                    </td>
                    <td class="auto-style17">&nbsp;</td>
                    <td class="auto-style22">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style15">&nbsp;</td>
                    <td class="auto-style16">&nbsp;</td>
                    <td class="auto-style17">&nbsp;</td>
                    <td class="auto-style22">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td colspan="7">
                        <asp:ValidationSummary ID="vsValidaciones" runat="server" ValidationGroup="1" />
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>

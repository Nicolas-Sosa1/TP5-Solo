<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AgregarSucursal.aspx.cs" Inherits="TP5_Programacion.AgregarSucursal" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            height: 25px;
        }
        .auto-style3 {
            height: 22px;
        }
        .auto-style5 {
            height: 25px;
            width: 130px;
        }
        .auto-style6 {
            height: 22px;
            width: 130px;
        }
        .auto-style8 {
            width: 130px;
        }
        .auto-style9 {
            height: 25px;
            width: 229px;
        }
        .auto-style10 {
            height: 22px;
            width: 229px;
        }
        .auto-style11 {
            width: 229px;
        }
        .auto-style12 {
            width: 349px;
        }
        .auto-style13 {
            width: 386px;
        }
        .auto-style14 {
            width: 130px;
            height: 23px;
        }
        .auto-style15 {
            width: 229px;
            height: 23px;
        }
        .auto-style16 {
            height: 23px;
        }
        .auto-style17 {
            width: 130px;
            height: 40px;
        }
        .auto-style18 {
            width: 229px;
            height: 40px;
        }
        .auto-style19 {
            height: 40px;
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
                    <td>
                        <asp:HyperLink ID="hlAgregarSucursal1" runat="server" NavigateUrl="EliminarSucursales.aspx">Eliminar Sucursales</asp:HyperLink>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style12">&nbsp;</td>
                    <td class="auto-style13">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>
             <table class="auto-style1">
              <tr>
                    <td class="auto-style5"><strong>Grupo N° 18</strong></td>
                    <td class="auto-style9"></td>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style2"></td>
             </tr>
              <tr>
                    <td class="auto-style6">&nbsp;</td>
                    <td class="auto-style10"></td>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style3"></td>
             </tr>
              <tr>
                    <td class="auto-style8"><strong>Agregar Sucursal</strong></td>
                    <td class="auto-style11">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
             </tr>
              <tr>
                    <td class="auto-style8">&nbsp;</td>
                    <td class="auto-style11">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
             </tr>
              <tr>
                    <td class="auto-style8">Nombre Sucursal:</td>
                    <td class="auto-style11">
                        <asp:TextBox ID="txtNombreSucursal" runat="server" Width="217px" ValidationGroup="1"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="rfvNombreSucursal" runat="server" ControlToValidate="txtNombreSucursal" ErrorMessage="Debe ingresar un nombre de sucursal" ValidationGroup="1">*</asp:RequiredFieldValidator>
                    </td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
             </tr>
              <tr>
                    <td class="auto-style17">Descripción:</td>
                    <td class="auto-style18">
                        <asp:TextBox ID="txtDescripcion" runat="server" TextMode="MultiLine" Width="219px" ValidationGroup="1"></asp:TextBox>
                    </td>
                    <td class="auto-style19">
                        <asp:RequiredFieldValidator ID="rfvDescripcion" runat="server" ControlToValidate="txtDireccion" ErrorMessage="Debe ingresar una descripcion" ValidationGroup="1">*</asp:RequiredFieldValidator>
                    </td>
                    <td class="auto-style19"></td>
                    <td class="auto-style19"></td>
                    <td class="auto-style19"></td>
                    <td class="auto-style19"></td>
                    <td class="auto-style19"></td>
                    <td class="auto-style19"></td>
                    <td class="auto-style19"></td>
             </tr>
              <tr>
                    <td class="auto-style8">Provincia:</td>
                    <td class="auto-style11">
                        <asp:DropDownList ID="ddlProvincia" runat="server" Height="23px" Width="224px" ValidationGroup="1">
                        </asp:DropDownList>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="rfvProvincia" runat="server" ErrorMessage="Debe seleccionar una provincia" InitialValue="0" ValidationGroup="1" ControlToValidate="ddlProvincia">*</asp:RequiredFieldValidator>
                    </td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
             </tr>
              <tr>
                    <td class="auto-style8">Dirección::</td>
                    <td class="auto-style11">
                        <asp:TextBox ID="txtDireccion" runat="server" Width="215px" ValidationGroup="1"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="rfvDireccion" runat="server" ControlToValidate="txtDescripcion" ErrorMessage="Debe ingresar una direccion" ValidationGroup="1">*</asp:RequiredFieldValidator>
                    </td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
             </tr>
              <tr>
                    <td class="auto-style14"></td>
                    <td class="auto-style15"></td>
                    <td class="auto-style16"></td>
                    <td class="auto-style16"></td>
                    <td class="auto-style16"></td>
                    <td class="auto-style16"></td>
                    <td class="auto-style16"></td>
                    <td class="auto-style16"></td>
                    <td class="auto-style16"></td>
                    <td class="auto-style16"></td>
             </tr>
              <tr>
                    <td class="auto-style8">&nbsp;</td>
                    <td class="auto-style11">
                        <asp:Button ID="btnAceptar" runat="server" Text="Aceptar" OnClick="btnAceptar_Click" ValidationGroup="1" />
                    </td>
                    <td>
                        <asp:Label ID="lblMensaje" runat="server"></asp:Label>
                    </td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
             </tr>
              <tr>
                    <td class="auto-style8">&nbsp;</td>
                    <td class="auto-style11">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
             </tr>
              <tr>
                    <td colspan="10">
                        <asp:ValidationSummary ID="vsValidaciones" runat="server" ValidationGroup="1" />
                    </td>
             </tr>
             </table>

        </div>
    </form>
</body>
</html>

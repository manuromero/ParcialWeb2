<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Presentacion.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="col-sm-4">

    </div>

    <div class="grand-parent-container col-sm-4">
        <div class="parent-container">
            <div align="center">
                <h2>LOGIN</h2>
                <div class="inputs">

                    <div class="input-group mb-3">
                        <div class="input-group-prepend">
                            <asp:Label ID="LblUsuario" runat="server" CssClass="input-group-text" Text="Usuario"></asp:Label>
                        </div>
                            <asp:TextBox ID="txtUsuario" type="usuario" runat="server" CssClass="form-control"></asp:TextBox>
                    </div>

                    <div class="input-group mb-3">
                        <div class="input-group-prepend">
                            <label for="password" class="input-group-text">Password</label>
                        </div>
                            <asp:TextBox ID="txtPass" type="password" runat="server" CssClass="form-control"></asp:TextBox>
                    </div>
                </div>

                <div>
                    <asp:Button ID="BtnLogin" runat="server" OnClick="BtnLogin_Click" Text="Login" class="btn btn-primary btn-block" />
                    <span class="help-block"><a href="RegistroUsuario.aspx">I don't have an account yet!</a></span>
                </div>

                <div role="alert">
                    <h2><asp:Label ID="LblError" runat="server" CssClass="alert-danger "></asp:Label></h2>
                </div>
            </div>
        </div>
    </div>
    <div class="col-sm-4">

    </div>
</asp:Content>

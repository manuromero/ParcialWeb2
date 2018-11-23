﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="RegistroUsuario.aspx.cs" Inherits="Presentacion.RegistroUsuario" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
     <div class="col-sm-4">

    </div>

    <div class="grand-parent-container col-sm-4">
        <div class="parent-container">
            <div align="center">
                
                <h2>LOGIN</h2>

                <div class="input-group mb-3">
                    <div class="input-group-prepend">
                        <asp:Label ID="LblUsuario" runat="server" Text="Usuario" CssClass="input-group-text"></asp:Label>
                    </div>
                        <asp:TextBox ID="TxtUsuario" runat="server" CssClass="form-control"></asp:TextBox>
                </div>

                <div class="input-group mb-3">
                    <div class="input-group-prepend">
                        <asp:Label ID="LblNombreUsuario" runat="server" Text="Nombre Usuario" CssClass="input-group-text"></asp:Label>
                    </div>
                        <asp:TextBox ID="TxtNombreUsuario" runat="server" CssClass="form-control"></asp:TextBox>
                </div>

                <div class="input-group mb-3">
                    <div class="input-group-prepend">
                        <asp:Label ID="LblApellido" runat="server" Text="Apellido usuario" CssClass="input-group-text"></asp:Label>
                    </div>
                        <asp:TextBox ID="TxtApellido" runat="server" CssClass="form-control"></asp:TextBox>
                </div>

               

                <div class="input-group mb-3">
                    <div class="input-group-prepend">
                        <asp:Label ID="lblPassword" for="password" runat="server" Text="Password" CssClass="input-group-text"></asp:Label>
                    </div>
                        <asp:TextBox ID="txtPass" type="password" runat="server" CssClass="form-control"></asp:TextBox>
                </div>

                 <div class="input-group mb-3" >
                    <div class="input-group-prepend">
                        <asp:Label ID="lblPassConfir" for="email" runat="server" Text="Password" CssClass="input-group-text alert-info"></asp:Label>
                    </div>                        
                        <asp:TextBox ID="txtPassConfirm" type="password" runat="server" CssClass="form-control"></asp:TextBox>
                 </div>


                <div class="form-group">
                    <asp:Button ID="BtnLogin" runat="server" OnClick="BtnLogin_Click" Text="Crear Usuario" class="btn btn-success" />
                </div>

                <div>
                    <asp:Label ID="LblError" runat="server"></asp:Label>
                </div>

            </div>




        </div>
    </div>

    <div class="col-sm-4">

    </div>
</asp:Content>

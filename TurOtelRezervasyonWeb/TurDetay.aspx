
  <%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="TurDetay.aspx.cs" Inherits="TurOtelRezervasyonWeb.TurDetay" %>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentplaceHolder1" runat="server">
    <style>
        .container {
            max-width: 800px;
            margin: 0 auto;
            padding: 20px;
        }

        .tur-details {
            display: flex;
            align-items: center;
        }

        .tur-image {
            width: 200px;
            height: 150px;
            object-fit: cover;
            margin-right: 20px;
        }

        .tur-info {
            flex-grow: 1;
        }

        .tur-name {
            margin: 0;
        }

        .tur-price {
            font-weight: bold;
            margin-bottom: 10px;
        }

        .tur-dates {
            font-style: italic;
        }

        .tur-description {
            margin-top: 10px;
        }

        .tur-quota {
            margin-top: 10px;
        }
    </style>
   
    <div class="container">
        <div class="tur-details">
            <div class="tur-image">
               <asp:Image ID="DetayFoto" runat="server" Width="320px" Height="300px" ImageUrl='<%# Eval("ImageURL") %>' />

            </div>
            <div class="tur-info">
               <asp:Label ID="TurAdi" CssClass="tur-name" runat="server" Text='<%# Eval("TourName") %>'></asp:Label>

                <div class="tur-dates">
                   <asp:Label ID="Baslangic" runat="server" Text='<%# Eval("StartDate") %>'></asp:Label>
                    -
                   <asp:Label ID="Bitis" runat="server" Text='<%# Eval("EndDate") %>'></asp:Label>
                <p class="tur-description">
                   <asp:Label ID="Aciklama" runat="server" Text='<%# Eval("Description") %>'></asp:Label>

                </p>
            </div>
        </div>
        <div class="tur-fee">
            <h3 class="tur-price">
               <asp:Label ID="Ucret2" runat="server" Text='<%# Eval("Price") %>'></asp:Label>
            </h3>
        </div>
        <div class="tur-quota">
            <strong>Kontenjan:</strong>
            <asp:Label ID="Kontenjan" runat="server" Text='<%# Eval("NumberOfParticipant") %>'></asp:Label>

        </div>
    </div>
        </div>
</asp:Content>
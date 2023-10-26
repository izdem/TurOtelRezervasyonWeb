<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="DetaylarTur.aspx.cs" Inherits="TurOtelRezervasyonWeb.DetaylarTur" EnableEventValidation="false" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentplaceHolder1" runat="server">
     <asp:DataList ID="DataList1" runat="server" Width="1590px" Height="509px" Style="margin-bottom: 89px">
          <ItemTemplate>

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
        <div class="image">
            <asp:Image Width="320px" Height="300px" ID="image1" runat="server" ImageUrl='<%# Eval("ImageURL") %>'></asp:Image>
        </div>
        <div class="details">
            <h2><%# Eval("TourName") %></h2>
            <div class="date">
                <p><%# Eval("StartDate", "{0:dd.MM.yyyy}") %> - <%# Eval("EndDate", "{0:dd.MM.yyyy}") %></p>
            </div>
            <p><%# Eval("Description") %></p>
        </div>
        <div class="fee">
            <label><%# Eval("Price", "{0:C2}") %></label>
            
        <div class="participants">
            <p>Kontenjan:</p>
            <p><%# Eval("NumberOfParticipant") %></p>
        </div>
             <div class="reservation-link">
        <a href="GirisYapSayfasi.aspx?redirect=RezervasyonYap.aspx?tourID=<%# Eval("TourID") %>">Rezervasyon Yap</a>
    </div>
    </div>
</ItemTemplate>
         </asp:DataList>

</asp:Content>

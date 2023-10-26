<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="OtelFiltre.aspx.cs" Inherits="TurOtelRezervasyonWeb.OtelFiltre" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentplaceHolder1" runat="server">
      <style>
            body {
                font-family: Arial, sans-serif;
                margin: 20px;
            }

            h1 {
                text-align: center;
            }

            .search-container {
                display: flex;
                justify-content: center;
                align-items: center;
                margin-bottom: 20px;
            }

            input[type="text"],
            select {
                margin-right: 10px;
            }

            button {
                background-color: #4CAF50;
                color: white;
                border: none;
                padding: 10px 20px;
                cursor: pointer;
            }

            button:hover {
                background-color: #45a049;
            }

            #hotel-list {
                list-style: none;
                padding: 0;
            }

            .hotel-item {
                margin-bottom: 20px;
                border: 1px solid #ccc;
                border-radius: 5px;
                padding: 10px;
            }

            .hotel-name {
                font-weight: bold;
                margin-bottom: 5px;
            }

            .hotel-description {
                font-size: 14px;
            }
        </style>
    <body>
        <h1>Otel</h1>
        <div class="search-container">
             <input type="text" id="countryInput" placeholder="Ülke" runat="server">
            <input type="text" id="cityInput" placeholder="Şehir" runat="server">
           
            <input type="text" id="hotelNameInput" placeholder="Otel Adı" runat="server">
            <select id="starRatingSelect" runat="server">
                <option value="">Yıldız Seçin</option>
                <option value="5">5 Yıldızlı ve Üzeri</option>
                <option value="4">4 Yıldızlı ve Üzeri</option>
                <option value="3">3 Yıldızlı ve Üzeri</option>
                <option value="2">2 Yıldızlı ve Üzeri</option>
                <option value="1">1 Yıldızlı ve Üzeri</option>
            </select>
            <button id="searchButton" runat="server" onclick="SearchButton_Click">Otel Ara</button>
        </div>
        <ul id="hotel-list"></ul>
        <script>
    
        </script>
        
    </body>
</asp:Content>

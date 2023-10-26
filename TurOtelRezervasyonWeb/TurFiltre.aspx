<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="TurFiltre.aspx.cs" Inherits="TurOtelRezervasyonWeb.TurFiltre" %>
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
        <h1>Tur</h1>
        <div class="search-container">
            <input type="text" id="CountryInput" placeholder="Ülke" runat="server">
            <input type="text" id="CityInput" placeholder="Şehir" runat="server">
            
           
           <input type="text" id="minPriceInput" placeholder="Minimum Fiyat" runat="server" />
<input type="text" id="maxPriceInput" placeholder="Maksimum Fiyat" runat="server" />

            <button id="searchButton" runat="server" onclick="Tur_Button_Click">Tur Ara</button>
        </div>
    </body>
</asp:Content>

<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="RezervasyonSayfasi.aspx.cs" Inherits="TurOtelRezervasyonWeb.RezervasyonSayfasi" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentplaceHolder1" runat="server">
    <style>
    body {
        background-color: blue;
    }

    h2 {
        text-align: center;
        color: white;
    }

    form {
        width: 300px;
        margin: 0 auto;
        color: white;
    }

    div {
        margin-bottom: 10px;
    }

    label {
        display: inline-block;
        width: 120px;
        margin-right: 10px;
        color: black; /* Yazı rengini siyah olarak ayarladık */
    }

    input[type="text"],
    input[type="email"],
    input[type="tel"],
    input[type="date"],
    select {
        width: 150px;
        color: black; /* Yazı rengini siyah olarak ayarladık */
    }

    input[type="text"][readonly] {
        background-color: #ddd;
    }

    input[type="submit"] {
        background-color: #4CAF50;
        color: white;
        padding: 8px 16px;
        border: none;
        cursor: pointer;
        width: 100%;
    }

    input[type="submit"]:hover {
        background-color: #45a049;
    }

    form div {
        display: flex;
        align-items: center;
        margin-bottom: 10px;
    }
</style>

    
    <h2>Rezervasyon Detayları</h2>

    <form id="reservationForm" runat="server">
        <div>
            <label for="txtName">Adınız:</label>
            <input type="text" id="txtName" name="txtName" required runat="server" />
        </div>
        <div>
            <label for="txtEmail">E-posta Adresiniz:</label>
            <input type="email" id="txtEmail" name="txtEmail" required runat="server" />
        </div>
        <div>
            <label for="txtPhone">Telefon Numaranız:</label>
            <input type="tel" id="txtPhone" name="txtPhone" required runat="server" />
        </div>
        <div>
            <label for="txtCheckIn">Giriş Tarihi:</label>
            <input type="date" id="txtCheckIn" name="txtCheckIn" required runat="server" />
        </div>
        <div>
            <label for="txtCheckOut">Çıkış Tarihi:</label>
            <input type="date" id="txtCheckOut" name="txtCheckOut" required runat="server" />
        </div>
        <div>
            <label for="ddlNumAdults">Yetişkin Sayısı:</label>
            <select id="ddlNumAdults" name="ddlNumAdults" runat="server">
                <option value="1">1</option>
                <option value="2">2</option>
                <option value="3">3</option>
                <option value="4">4</option>
                <option value="5">5</option>
            </select>
        </div>
        <div>
            <label for="ddlNumChildren">Çocuk Sayısı:</label>
            <select id="ddlNumChildren" name="ddlNumChildren" runat="server">
                <option value="0">0</option>
                <option value="1">1</option>
                <option value="2">2</option>
                <option value="3">3</option>
                <option value="4">4</option>
                <option value="5">5</option>
            </select>
        </div>
        <div>
            <label for="txtTotalPrice">Toplam Fiyat:</label>
            <input type="text" id="txtTotalPrice" name="txtTotalPrice" readonly runat="server" />
        </div>
        <div>
            <asp:Button ID="btnSubmit" runat="server" Text="Rezervasyon Yap" OnClick="btnSubmit_Click" />
        </div>
    </form>
</asp:Content>

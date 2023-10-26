<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.Master" AutoEventWireup="true" CodeBehind="WebForm2.aspx.cs" Inherits="TurOtelRezervasyonWeb.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentplaceHolder1" runat="server">
     <style>
       body{
           background-color:blue;
       }
        h2 {
            text-align: center;
        }

        form {
            width: 300px;
            margin: 0 auto;
        }

        div {
            margin-bottom: 10px;
        }

        label {
            display: inline-block;
            width: 150px;
        }

        input[type="text"],
        select {
            width: 150px;
        }
    </style>
    <head>
        <title>Ödeme Sayfası</title>
        <link rel="stylesheet" type="text/css" href="payment.css">
    </head>
    <body >
        <h2>Ödeme Bilgileri</h2>

        <form id="paymentForm" method="post" runat="server">
            <div>
                <label for="txtCardNumber">Kart Numarası:</label>
                <input type="text" id="txtCardNumber" name="txtCardNumber" required runat="server" />
            </div>
            <div>
                <label for="txtExpirationDate">Son Kullanma Tarihi:</label>
                <input type="text" id="txtExpirationDate" name="txtExpirationDate" required runat="server" />
            </div>
            <div>
                <label for="txtCVV">CVV:</label>
                <input type="text" id="txtCVV" name="txtCVV" required runat="server" />
            </div>
            <div>
                <label for="ddlPaymentMethod">Ödeme Yöntemi:</label>
                <select id="ddlPaymentMethod" name="ddlPaymentMethod" runat="server">
                    <option value="CreditCard">Kredi Kartı</option>
                    <option value="BankTransfer">Banka Transferi</option>
                    <option value="PayPal">PayPal</option>
                </select>
            </div>
            <div>
                <input type="submit" value="Ödemeyi Tamamla" />
            </div>
            <asp:Label ID="lblMessage" runat="server"></asp:Label>

        </form>
    </body>
</asp:Content>

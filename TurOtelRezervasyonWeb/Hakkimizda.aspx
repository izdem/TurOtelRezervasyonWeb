<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Hakkimizda.aspx.cs" Inherits="TurOtelRezervasyonWeb.Hakkimizda" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentplaceHolder1" runat="server">
    
<style>
    .header {
        display: flex;
        justify-content: space-between;
        align-items: center;
        padding: 20px;
        background-color: #f2f2f2;
    }
    .header h1 {
        font-size: 36px;
    }
    .header img {
        width: 500px;
        height: 200px;
    }
    .content {
        max-width: 800px;
        margin: 0 auto;
        padding: 20px;
        line-height: 1.5;
        font-size: 18px;
    }
</style>

      <div class="header">
        <h1>Hakkımızda</h1>
        <img src="https://r.resimlink.com/WIPYnteK-.png" alt="Travellingo">
    </div>
    <div class="content">
        <p>Firmamız, turizm sektöründe müşterilerimize tatil deneyimlerinde unutulmaz anılar sunmak için çalışan bir seyahat acentesidir.</p>
        <p>Ekibimiz, sektörde uzun yıllardır deneyimli ve uzman kişilerden oluşmaktadır. Amacımız, müşterilerimizin beklentilerini aşan hizmetler sunarak, tatil deneyimlerini unutulmaz kılmaktır.</p>
    </div>

</asp:Content>

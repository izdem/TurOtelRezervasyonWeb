<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="KayitOlSayfasi.aspx.cs" Inherits="TurOtelRezervasyonWeb.KayitOlSayfasi" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentplaceHolder1" runat="server">

     <style>
       
    body {
        background-color:darkblue;
        background-size: cover;
        background-position: center;

        
      
    }body img{
         opacity:2;
     }


          
            h1 {
                text-align: center;
            }

            #btnRegister {
                display: block;
                margin: auto;
            }

            .container {
                max-width: 500px;
               margin: auto;
                border: 2px solid #0066cc; /* mavi renkte çerçeve ekleme */
                background-color: #ADD8E6;
                margin:0 auto;
               
                 
            }

            .image-container {
                display: flex;
                align-items: center;
                justify-content: center;
                width: 50%;
                height: 500px;
                padding: 100px;
            }

            img {
                display: block; /* resmin blok öğesi olarak görüntülenmesini sağlar */
                margin: 0 auto; /* resmi yatay olarak ortalar */
                max-width: 100%; /* resmin maksimum genişliğini belirler */
                height: auto; /* resmin yüksekliğini otomatik olarak ayarlar */
            }

            .kucuk-resim {
                display: block;
                margin: 0 auto;
                max-width: 50%; /* istediğiniz maksimum genişliği belirleyin */
                height: auto;
            }

            /* İki div'i yan yana getirmek için */
            .wrapper {
                display: flex;
                flex-wrap: wrap;
            }

            .form-container {
                width: 50%;
                padding: 20px;
            }

           

        </style>
   
<body>
   
   

    <form id="form1" runat="server">
        
        <div  class="container" >
            <h1>Kayıt Ol</h1>
            <div class="form-group">
                <label for="firstName">Ad</label>
                <asp:TextBox ID="txtFirstName" runat="server" CssClass="form-control" required="required"></asp:TextBox>
            </div>
            <div class="form-group">
                <label for="lastName">Soyad</label>
                <asp:TextBox ID="txtLastName" runat="server" CssClass="form-control" required="required"></asp:TextBox>
            </div>
            <div class="form-group">
                <label for="email">E-posta</label>
                <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control" type="email" required="required"></asp:TextBox>
            </div>
            <div class="form-group">
                <label for="password">Şifre</label>
                <asp:TextBox ID="txtPassword" runat="server" CssClass="form-control" type="password" required="required"></asp:TextBox>
            </div>
            <div class="form-group">
                <label for="phoneNumber">Telefon Numarası(isteğe bağlı)</label>
                <asp:TextBox ID="txtPhoneNumber" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
            <asp:Button ID="btnRegister" Style="display:block; margin: auto;}" runat="server" CssClass="btn btn-primary" Text="Kayıt Ol" OnClick="KayitOlButton_Click" />
             <p Style="text-align:center">Zaten üye Misin ? <a href="GirisYapSayfasi.aspx">Giriş Yap</a></p>
        </div>
    </form>
       
</body>


</asp:Content>

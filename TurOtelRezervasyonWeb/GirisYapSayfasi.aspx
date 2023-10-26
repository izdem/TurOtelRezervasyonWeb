<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="GirisYapSayfasi.aspx.cs" Inherits="TurOtelRezervasyonWeb.GirisYapSayfasi" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentplaceHolder1" runat="server">
         <style>
       
    body {
      background-color:darkblue;
        background-size: cover;
        background-position: center;

        
      
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


            .form-container {
                width: 50%;
                padding: 20px;
            }

           

        </style>
<body>
   
   

    <form id="form1" runat="server">
        
        <div  class="container" >
            <h1>Giriş Yap</h1>
           
            <div class="form-group">
                <label for="email">E-posta</label>
                <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control" type="email" required="required"></asp:TextBox>
            </div>
            <div class="form-group">
                <label for="password">Şifre</label>
                <asp:TextBox ID="txtPassword" runat="server" CssClass="form-control" type="password" required="required"></asp:TextBox>
            </div>
           
            <asp:Button ID="btnRegister" runat="server" CssClass="btn btn-primary" Text="Giriş Yap" OnClick="btnRegister_Click" AutoPostBack="False" />

             <p Style="text-align:center">Üye Değil Misin ? <a href="KayitOlSayfasi.aspx">Kayıt Ol</a></p>
             <asp:Label ID="lblMessage" runat="server"></asp:Label>
        </div>
    </form>
       
</body>

</asp:Content>

<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="AnasayfaOtel.aspx.cs" Inherits="TurOtelRezervasyonWeb.AnasayfaOtel"  %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentplaceHolder1" runat="server">
    <form id="form1" runat="server" style="height: 72px; width: 1599px">
       <asp:DataList ID="DataList1" runat="server" Width="1590px" Height="509px" Style="margin-bottom: 89px" OnItemCommand="DataList1_ItemCommand">




            <ItemTemplate>

                <style>
                    .container {
                        display: flex;
                        align-items: center;
                        border: 1px solid #ccc;
                        padding: 1rem;
                        position: relative;
                        font-style: normal;
                    }

                        .container .image {
                            margin-right: 1rem;
                        }

                        .container .details {
                            width: 100%;
                            text-transform: uppercase;
                        }

                            .container .details h2 {
                                margin-top: 0;
                            }

                            .container .details .date {
                                margin-bottom: 0.5rem;
                            }

                                .container .details .date p {
                                    margin: 0;
                                }

                            .container .details p {
                                margin-top: 0;
                            }

                        .container .fee {
                            margin-left: auto;
                            margin-top: auto;
                        }

                            .container .fee::before {
                               
                            }


                            .container .fee label {
                                margin: 0;
                            }

                        .container .participants {
                            position: absolute;
                            top: 0;
                            right: 0;
                        }

                            .container .participants::before {
                                content: "kontenjan:";
                            }

                            .container .participants p {
                                margin: 0;
                            }

                    .turBaslik {
                        color: darkblue; /* yazı rengi */
                        font-size: 50px; /* yazı boyutu */
                        font-weight: bold; /* yazı kalınlığı */
                        text-align: center; /* yazı ortalanması */
                    }

                    .incele-button {
                        background-color: cornflowerblue;
                    }

                    .slider-container {
                        margin-bottom: 30px;
                        width: 100%;
                        height: 500px;
                        position: relative;
                    }

                    .slider {
                        position: fixed;
                        top: 0;
                        left: 0;
                        width: 500%;
                        height: 100%;
                        position: absolute;
                        top: 0;
                        left: 0;
                    }

                        .slider img {
                            width: 20%;
                            height: 100%;
                            float: left;
                        }

                    @keyframes slide {
                        0% {
                            left: 0;
                        }

                        20% {
                            left: 0;
                        }

                        25% {
                            left: -100%;
                        }

                        45% {
                            left: -100%;
                        }

                        50% {
                            left: -200%;
                        }

                        70% {
                            left: -200%;
                        }

                        75% {
                            left: -300%;
                        }

                        95% {
                            left: -300%;
                        }

                        100% {
                            left: -400%;
                        }
                    }
                </style>
                <div class="container">
                    <div class="image">
                        <asp:Image Width="320px" hight="300px" ID="image1" runat="server" ImageUrl='<%# Eval("ImageURL") %>'></asp:Image>

                    </div>
                    <div class="details">
                        <asp:Label ID="Label6" runat="server" Text='<%# Eval("TourName") %>'></asp:Label>

                        <div class="date">
                             <p><%# Eval("StartDate", "{0:dd.MM.yyyy}") %> - <%# Eval("EndDate", "{0:dd.MM.yyyy}") %></p>
                        </div>
                        <asp:Label ID="Label3" runat="server" textMode="multiLine" readOnly="true" Text='<%# Eval("Description") %>'></asp:Label>
                    </div>
                    <div class="fee">

                         <label><%# Eval("Price", "{0:C2}") %></label>
                        <asp:Button ID="btnDetails" runat="server" Text="Detaylar" CommandName="ShowDetails" CommandArgument='<%# Eval("TourID") %>' />

                    </div>
                    <div class="participants">

                        <asp:Label ID="Label1" runat="server" Text='<%# Eval("NumberOfParticipant") %>'></asp:Label>
                    </div>
                </div>
            </ItemTemplate>


        </asp:DataList>
    </form>
</asp:Content>

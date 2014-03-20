<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="WebApplication1._Default" %>

<asp:Content runat="server" ID="FeaturedContent" ContentPlaceHolderID="FeaturedContent">
    <section class="featured">
        <div class="content-wrapper">
            <hgroup class="title">
                <h1><%: Title %>.</h1>
                <h2>Modify this template to jump-start your ASP.NET application.</h2>
            </hgroup>
            <p>
                To learn more about ASP.NET, visit <a href="http://asp.net" title="ASP.NET Website">http://asp.net</a>.
                The page features <mark>videos, tutorials, and samples</mark> to help you get the most from ASP.NET.
                If you have any questions about ASP.NET visit
                <a href="http://forums.asp.net/18.aspx" title="ASP.NET Forum">our forums</a>.
            </p>
            
        </div>
    </section>
</asp:Content>
<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <form action="https://api.privatbank.ua/p24api/ishop" method="POST">
                <input type="text" name="amt" value="сумма"/>      
                <input type="text" name="ccy" value="валюта (UAH / USD / EUR)" />      
                <input type="hidden" name="merchant" value="ID мерчанта" />      
                <input type="hidden" name="order" value="уникальный код операции" />      
                <input type="hidden" name="details" value="назначение платежа" />      
                <input type="hidden" name="ext_details" value="дополнительные данные (код товара, и т.п.) /можно оставить пустым/" />      
                <input type="hidden" name="pay_way" value="privat24" />      
                <input type="hidden" name="return_url" value="страница, принимающая клиента после оплаты" />      
                <input type="hidden" name="server_url" value="страница, принимающая ответ API о результате платежа" />      
                <input type="submit" value="Оплатить" /> 
            </form>

</asp:Content>

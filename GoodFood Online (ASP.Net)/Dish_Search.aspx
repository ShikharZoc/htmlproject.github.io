<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Dish_Search.aspx.cs" Inherits="WebApplication1.Dish_Search" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="jumbotron">
        <fieldset>
            <legend>
                <asp:Label ID="Label8" runat="server" Text="Dishes Name:"></asp:Label>
            </legend>
        </fieldset>
        <div class="form-group">
            <asp:DropDownList ID="dishDDL" CssClass="form-control"  Height="50px" Width="40%" runat="server" DataSourceID="SqlDataSource1" DataTextField="DISHNAME" DataValueField="DISHCODE">
                <asp:ListItem Value="0" Text="Choose Your Division">Choose Your Division</asp:ListItem>
            </asp:DropDownList><br />
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT &quot;DISHCODE&quot;, &quot;DISHNAME&quot; FROM &quot;DISH&quot;"></asp:SqlDataSource>
            <asp:Button ID="Button1" class="btn btn-primary" runat="server" Text="Search" Width="102px" OnClick="Button1_Click" />
        </div>
    </div>

    <div class="jumbotron">
        <fieldset>
            <legend>
                <asp:Label ID="Label1" runat="server" Text="Search Result:"></asp:Label>
            </legend>
        </fieldset>
        <div>
            <asp:GridView ID="GridView1" CssClass="table table-striped" runat="server" EmptyDataText="No Record Found." Width="100%" style="color: #111211">
            </asp:GridView>
        </div>
    </div>
</asp:Content>

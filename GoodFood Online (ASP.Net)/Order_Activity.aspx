<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Order_Activity.aspx.cs" Inherits="WebApplication1.Order_Activity" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

        <div class="jumbotron">
        <fieldset>
            <legend>
                <asp:Label ID="Label8" runat="server" Text="Order Activity Details:"></asp:Label>
            </legend>
        </fieldset>
        <div class="form-group">
            <asp:Label ID="lblRestaurantName" runat="server" Text="Customer Name" ForeColor="Black"></asp:Label>
            <asp:DropDownList ID="customerDDL" CssClass="form-control"  Height="50px" Width="40%" runat="server" DataSourceID="SqlDataSource4" DataTextField="CUSTOMER_NAME" DataValueField="CUSTOMER_ID">
                <asp:ListItem Value="0" Text="Choose Your Division">Choose Your Division</asp:ListItem>
            </asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT &quot;CUSTOMER_ID&quot;, &quot;CUSTOMER_NAME&quot; FROM &quot;CUSTOMER_DETAILS&quot;"></asp:SqlDataSource>
        </div>

        <div class="form-group">
            <asp:Label ID="Label2" runat="server" Text="Year" ForeColor="Black"></asp:Label>
            <asp:DropDownList ID="yearDDL" CssClass="form-control"  Height="50px" Width="30%" runat="server" DataSourceID="SqlDataSource1" DataTextField="EXTRACT(YEARFROMDATETIME)" DataValueField="EXTRACT(YEARFROMDATETIME)">
                <asp:ListItem Value="0" Text="Choose Your Division">Choose Your Division</asp:ListItem>
            </asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="select distinct extract (year from datetime) from orderregister"></asp:SqlDataSource>
        </div>

        <div class="form-group">
            <asp:Label ID="Label3" runat="server" Text="Month" ForeColor="Black"></asp:Label>
            <asp:DropDownList ID="monthDDL" CssClass="form-control"  Height="50px" Width="30%" runat="server" DataSourceID="SqlDataSource2" DataTextField="EXTRACT(MONTHFROMDATETIME)" DataValueField="EXTRACT(MONTHFROMDATETIME)">
                <asp:ListItem Value="0" Text="Choose Your Division">Choose Your Division</asp:ListItem>
            </asp:DropDownList><br />
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT DISTINCT EXTRACT(MONTH FROM DATETIME) FROM orderregister"></asp:SqlDataSource>
            <asp:Button ID="Button2" class="btn btn-primary" runat="server" Text="Search" Width="102px" OnClick="Button1_Click" />
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

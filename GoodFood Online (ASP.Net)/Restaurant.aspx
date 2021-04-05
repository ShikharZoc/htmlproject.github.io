<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Restaurant.aspx.cs" Inherits="WebApplication1.Restaurant" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
        <div class="jumbotron">

            <asp:Label ID="Label1" runat="server" Text="Restaurant" Style="text-align:center"></asp:Label>
            <br>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM SHIKHAR.RESTAURANT WHERE (RESTAURANT_ID = :PARAM1)" InsertCommand="INSERT INTO SHIKHAR.RESTAURANT(RESTAURANT_NAME, RESTAURANT_ID, ADDRESS, CONTACT) VALUES (:PARAM1, :PARAM2, :PARAM3, :PARAM4)" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT RESTAURANT_NAME, RESTAURANT_ID, ADDRESS, CONTACT FROM SHIKHAR.RESTAURANT" UpdateCommand="UPDATE SHIKHAR.RESTAURANT SET RESTAURANT_NAME = :PARAM1, ADDRESS = :PARAM2, CONTACT = :PARAM3 WHERE (RESTAURANT_ID = :PARAM4)">
        <DeleteParameters>
            <asp:Parameter Name="RESTAURANT_ID" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="RESTAURANT_NAME" Type="String" />
            <asp:Parameter Name="RESTAURANT_ID" Type="String" />
            <asp:Parameter Name="ADDRESS" Type="String" />
            <asp:Parameter Name="CONTACT" Type="Decimal" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="RESTAURANT_NAME" Type="String" />
            <asp:Parameter Name="ADDRESS" Type="String" />
            <asp:Parameter Name="CONTACT" Type="Decimal" />
            <asp:Parameter Name="RESTAURANT_ID" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="RESTAURANT_ID" DataSourceID="SqlDataSource1" BorderColor="Black" CssClass="table table-condensed table-hover">
    <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" CssClass="headerClass" />
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ButtonType="Button" />
            <asp:BoundField DataField="RESTAURANT_NAME" HeaderText="RESTAURANT_NAME" SortExpression="RESTAURANT_NAME" />
            <asp:BoundField DataField="RESTAURANT_ID" HeaderText="RESTAURANT_ID" ReadOnly="True" SortExpression="RESTAURANT_ID" />
            <asp:BoundField DataField="ADDRESS" HeaderText="ADDRESS" SortExpression="ADDRESS" />
            <asp:BoundField DataField="CONTACT" HeaderText="CONTACT" SortExpression="CONTACT" />
        </Columns>
    </asp:GridView>
    </div>
    <div class="jumbotron">
     <asp:Label ID="Label2" runat="server" Text="Add" Style="text-align:center"></asp:Label>
    <asp:FormView ID="FormView1" runat="server" DataKeyNames="RESTAURANT_ID" DataSourceID="SqlDataSource1" >
        <EditItemTemplate>
            RESTAURANT_NAME:
            <asp:TextBox ID="RESTAURANT_NAMETextBox" runat="server" Text='<%# Bind("RESTAURANT_NAME") %>' />
            <br />
            RESTAURANT_ID:
            <asp:Label ID="RESTAURANT_IDLabel1" runat="server" Text='<%# Eval("RESTAURANT_ID") %>'  />
            <br />
            ADDRESS:
            <asp:TextBox ID="ADDRESSTextBox" runat="server" Text='<%# Bind("ADDRESS") %>' />
            <br />
            CONTACT:
            <asp:TextBox ID="CONTACTTextBox" runat="server" Text='<%# Bind("CONTACT") %>' />
            <br />
            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
            &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </EditItemTemplate>
        <InsertItemTemplate>
            RESTAURANT_NAME:
            <asp:TextBox ID="RESTAURANT_NAMETextBox" runat="server" Text='<%# Bind("RESTAURANT_NAME") %>' />
            <br />
            RESTAURANT_ID:
            <asp:TextBox ID="RESTAURANT_IDTextBox" runat="server" Text='<%# Bind("RESTAURANT_ID") %>' />
            <br />
            ADDRESS:
            <asp:TextBox ID="ADDRESSTextBox" runat="server" Text='<%# Bind("ADDRESS") %>' />
            <br />
            CONTACT:
            <asp:TextBox ID="CONTACTTextBox" runat="server" Text='<%# Bind("CONTACT") %>' />
            <br />
            <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
            &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </InsertItemTemplate >
        <ItemTemplate >
            RESTAURANT_NAME:
            <asp:Label ID="RESTAURANT_NAMELabel" runat="server" Text='<%# Bind("RESTAURANT_NAME") %>' />
            <br />
            RESTAURANT_ID:
            <asp:Label ID="RESTAURANT_IDLabel" runat="server" Text='<%# Eval("RESTAURANT_ID") %>' />
            <br />
            ADDRESS:
            <asp:Label ID="ADDRESSLabel" runat="server" Text='<%# Bind("ADDRESS") %>' />
            <br />
            CONTACT:
            <asp:Label ID="CONTACTLabel" runat="server" Text='<%# Bind("CONTACT") %>' />
            <br />
          <asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="Add New Restaurant" class="btn btn-success" />
        </ItemTemplate>
    </asp:FormView>
    </div>




</asp:Content>

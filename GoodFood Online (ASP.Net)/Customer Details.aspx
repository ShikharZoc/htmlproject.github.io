<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Customer Details.aspx.cs" Inherits="WebApplication1.Customer_Details" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
         <div class="jumbotron">

    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="CUSTOMER_ID" DataSourceID="SqlDataSource1" BorderColor="Black" CssClass="table table-condensed table-hover">
        <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" CssClass="headerClass" />
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ButtonType="Button" />
            <asp:BoundField DataField="CUSTOMER_ID" HeaderText="CUSTOMER_ID" SortExpression="CUSTOMER_ID" ReadOnly="True" />
            <asp:BoundField DataField="CUSTOMER_NAME" HeaderText="CUSTOMER_NAME" SortExpression="CUSTOMER_NAME" />
            <asp:BoundField DataField="CUSTOMER_ADDRESS" HeaderText="CUSTOMER_ADDRESS" SortExpression="CUSTOMER_ADDRESS" />
            <asp:BoundField DataField="CUSTOMER_EMAIL" HeaderText="CUSTOMER_EMAIL" SortExpression="CUSTOMER_EMAIL" />
            <asp:BoundField DataField="CUSTOMER_PHONE" HeaderText="CUSTOMER_PHONE" SortExpression="CUSTOMER_PHONE" />
        </Columns>
    </asp:GridView>

    </div>
    <div class="jumbotron">
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM SHIKHAR.CUSTOMER_DETAILS WHERE (CUSTOMER_ID = :PARAM1)" InsertCommand="INSERT INTO SHIKHAR.CUSTOMER_DETAILS(CUSTOMER_ID, CUSTOMER_NAME, CUSTOMER_ADDRESS, CUSTOMER_EMAIL, CUSTOMER_PHONE) VALUES (:PARAM1, :PARAM2, :PARAM3, :PARAM4, :PARAM5)" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT CUSTOMER_ID, CUSTOMER_NAME, CUSTOMER_ADDRESS, CUSTOMER_EMAIL, CUSTOMER_PHONE FROM SHIKHAR.CUSTOMER_DETAILS" UpdateCommand="UPDATE SHIKHAR.CUSTOMER_DETAILS SET CUSTOMER_NAME = :PARAM1, CUSTOMER_ADDRESS = :PARAM2, CUSTOMER_EMAIL = :PARAM3, CUSTOMER_PHONE = :PARAM4 WHERE (CUSTOMER_ID = :PARAM5)">
                        <DeleteParameters>
                            <asp:Parameter Name="CUSTOMER_ID" Type="String" />
                        </DeleteParameters>
                        <InsertParameters>
                            <asp:Parameter Name="CUSTOMER_ID" Type="String" />
                            <asp:Parameter Name="CUSTOMER_NAME" Type="String" />
                            <asp:Parameter Name="CUSTOMER_ADDRESS" Type="String" />
                            <asp:Parameter Name="CUSTOMER_EMAIL" Type="String" />
                            <asp:Parameter Name="CUSTOMER_PHONE" Type="Decimal" />
                        </InsertParameters>
                        <UpdateParameters>
                            <asp:Parameter Name="CUSTOMER_NAME" Type="String" />
                            <asp:Parameter Name="CUSTOMER_ADDRESS" Type="String" />
                            <asp:Parameter Name="CUSTOMER_EMAIL" Type="String" />
                            <asp:Parameter Name="CUSTOMER_PHONE" Type="Decimal" />
                            <asp:Parameter Name="CUSTOMER_ID" Type="String" />
                        </UpdateParameters>
                    </asp:SqlDataSource>
    <asp:FormView ID="FormView1" runat="server" DataKeyNames="CUSTOMER_ID" DataSourceID="SqlDataSource1" >
        <EditItemTemplate>
            CUSTOMER_ID:
            <asp:Label ID="CUSTOMER_IDLabel1" runat="server" Text='<%# Eval("CUSTOMER_ID") %>'  />
            <br />
            CUSTOMER_NAME:
            <asp:TextBox ID="CUSTOMER_NAMETextBox" runat="server" Text='<%# Bind("CUSTOMER_NAME") %>' />
            <br />
            CUSTOMER_ADDRESS:
            <asp:TextBox ID="CUSTOMER_ADDRESSTextBox" runat="server" Text='<%# Bind("CUSTOMER_ADDRESS") %>' />
            <br />
            CUSTOMER_EMAIL:
            <asp:TextBox ID="CUSTOMER_EMAILTextBox" runat="server" Text='<%# Bind("CUSTOMER_EMAIL") %>' />
            <br />
            CUSTOMER_PHONE:
            <asp:TextBox ID="CUSTOMER_PHONETextBox" runat="server" Text='<%# Bind("CUSTOMER_PHONE") %>' />
            <br />
            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
            &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </EditItemTemplate>
        <InsertItemTemplate>
            CUSTOMER_ID:
            <asp:TextBox ID="CUSTOMER_IDTextBox" runat="server" Text='<%# Bind("CUSTOMER_ID") %>' />
            <br />
            CUSTOMER_NAME:
            <asp:TextBox ID="CUSTOMER_NAMETextBox" runat="server" Text='<%# Bind("CUSTOMER_NAME") %>' />
            <br />
            CUSTOMER_ADDRESS:
            <asp:TextBox ID="CUSTOMER_ADDRESSTextBox" runat="server" Text='<%# Bind("CUSTOMER_ADDRESS") %>' />
            <br />
            CUSTOMER_EMAIL:
            <asp:TextBox ID="CUSTOMER_EMAILTextBox" runat="server" Text='<%# Bind("CUSTOMER_EMAIL") %>' />
            <br />
            CUSTOMER_PHONE:
            <asp:TextBox ID="CUSTOMER_PHONETextBox" runat="server" Text='<%# Bind("CUSTOMER_PHONE") %>' />
            <br />
            <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
            &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </InsertItemTemplate >
        <ItemTemplate >
            CUSTOMER_ID:
            <asp:Label ID="CUSTOMER_IDLabel" runat="server" Text='<%# Eval("CUSTOMER_ID") %>' />
            <br />
            CUSTOMER_NAME:
            <asp:Label ID="CUSTOMER_NAMELabel" runat="server" Text='<%# Bind("CUSTOMER_NAME") %>' />
            <br />
            CUSTOMER_ADDRESS:
            <asp:Label ID="CUSTOMER_ADDRESSLabel" runat="server" Text='<%# Bind("CUSTOMER_ADDRESS") %>' />
            <br />
            CUSTOMER_EMAIL:
            <asp:Label ID="CUSTOMER_EMAILLabel" runat="server" Text='<%# Bind("CUSTOMER_EMAIL") %>' />
            <br />
            CUSTOMER_PHONE:&nbsp;<asp:Label ID="CUSTOMER_PHONELabel" runat="server" Text='<%# Bind("CUSTOMER_PHONE") %>' />
            <br />
           <asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="Add New Customer"  class="btn btn-success"/>
        </ItemTemplate>
    </asp:FormView>
    </div>



</asp:Content>

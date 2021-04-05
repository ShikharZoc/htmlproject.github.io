<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Delivery Address.aspx.cs" Inherits="WebApplication1.Delivery_Address" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
        <div class="jumbotron">

                    <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" DataKeyNames="DELADDRESSID" DataSourceID="SqlDataSource1" BorderColor="Black" CssClass="table table-bordered table-condensed table-responsive table-hover " OnSelectedIndexChanged="GridView3_SelectedIndexChanged">
                         <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" CssClass="headerClass" />
                        <Columns>    
                            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ButtonType="Button" />
                            <asp:BoundField DataField="DELADDRESSID" HeaderText="DELADDRESSID" ReadOnly="True" SortExpression="DELADDRESSID" />
                            <asp:BoundField DataField="LATITUDE" HeaderText="LATITUDE" SortExpression="LATITUDE" />
                            <asp:BoundField DataField="LONGITUDE" HeaderText="LONGITUDE" SortExpression="LONGITUDE" />
                            <asp:BoundField DataField="LOCATION" HeaderText="LOCATION" SortExpression="LOCATION" />
                        </Columns>
                    </asp:GridView>
    </div>
    <div class="jumbotron">
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="
DELETE FROM SHIKHAR.DELIVERYADDRESS WHERE (DELADDRESSID = :PARAM1)" InsertCommand="INSERT INTO SHIKHAR.DELIVERYADDRESS(DELADDRESSID, LATITUDE, LONGITUDE, LOCATION) VALUES (:PARAM1, :PARAM2, :PARAM3, :PARAM4)" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT * FROM &quot;DELIVERYADDRESS&quot;" UpdateCommand="UPDATE SHIKHAR.DELIVERYADDRESS SET LATITUDE = :PARAM1, LONGITUDE = :PARAM2, LOCATION = :PARAM3 WHERE (DELADDRESSID = :PARAM4)">
                        <DeleteParameters>
                            <asp:Parameter Name="DELADDRESSID" Type="String" />
                        </DeleteParameters>
                        <InsertParameters>
                            <asp:Parameter Name="DELADDRESSID" Type="String" />
                            <asp:Parameter Name="LATITUDE" Type="Decimal" />
                            <asp:Parameter Name="LONGITUDE" Type="Decimal" />
                            <asp:Parameter Name="LOCATION" Type="String" />
                        </InsertParameters>
                        <UpdateParameters>
                            <asp:Parameter Name="LATITUDE" Type="Decimal" />
                            <asp:Parameter Name="LONGITUDE" Type="Decimal" />
                            <asp:Parameter Name="LOCATION" Type="String" />
                            <asp:Parameter Name="DELADDRESSID" Type="String" />
                        </UpdateParameters>
                    </asp:SqlDataSource>

            <asp:FormView ID="FormView1" runat="server" DataKeyNames="DELADDRESSID" DataSourceID="SqlDataSource1" BorderColor="Black" CssClass="table table-condensed table-hover">
                <EditItemTemplate>
                    DELADDRESSID:
                    <asp:Label ID="DELADDRESSIDLabel1" runat="server" Text='<%# Eval("DELADDRESSID") %>' />
                    <br />
                    LATITUDE:
                    <asp:TextBox ID="LATITUDETextBox" runat="server" Text='<%# Bind("LATITUDE") %>' />
                    <br />
                    LONGITUDE:
                    <asp:TextBox ID="LONGITUDETextBox" runat="server" Text='<%# Bind("LONGITUDE") %>' />
                    <br />
                    LOCATION:
                    <asp:TextBox ID="LOCATIONTextBox" runat="server" Text='<%# Bind("LOCATION") %>' />
                    <br />
                    <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                    &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                </EditItemTemplate>
                <InsertItemTemplate>
                    DELADDRESSID:
                    <asp:TextBox ID="DELADDRESSIDTextBox" runat="server" Text='<%# Bind("DELADDRESSID") %>' />
                    <br />
                    LATITUDE:
                    <asp:TextBox ID="LATITUDETextBox" runat="server" Text='<%# Bind("LATITUDE") %>' />
                    <br />
                    LONGITUDE:
                    <asp:TextBox ID="LONGITUDETextBox" runat="server" Text='<%# Bind("LONGITUDE") %>' />
                    <br />
                    LOCATION:
                    <asp:TextBox ID="LOCATIONTextBox" runat="server" Text='<%# Bind("LOCATION") %>' />
                    <br />
                    <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                    &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                </InsertItemTemplate>
                <ItemTemplate>
                    DELADDRESSID:
                    <asp:Label ID="DELADDRESSIDLabel" runat="server" Text='<%# Eval("DELADDRESSID") %>' />
                    <br />
                    LATITUDE:
                    <asp:Label ID="LATITUDELabel" runat="server" Text='<%# Bind("LATITUDE") %>' />
                    <br />
                    LONGITUDE:
                    <asp:Label ID="LONGITUDELabel" runat="server" Text='<%# Bind("LONGITUDE") %>' />
                    <br />
                    LOCATION:
                    <asp:Label ID="LOCATIONLabel" runat="server" Text='<%# Bind("LOCATION") %>' />
                    <br />
                    <asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New Delivery Addess" class="btn btn-success"/>
                </ItemTemplate>
            </asp:FormView>
    </div>
</asp:Content>

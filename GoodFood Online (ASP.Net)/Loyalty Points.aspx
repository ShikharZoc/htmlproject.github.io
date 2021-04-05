<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Loyalty Points.aspx.cs" Inherits="WebApplication1.Loyalty_Points" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="jumbotron">


                    <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataKeyNames="LOYALTYID" DataSourceID="SqlDataSource1" BorderColor="Black" CssClass="table table-condensed table-hover">
                    <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" CssClass="headerClass" />   
                        <Columns>
                            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ButtonType="Button" />
                            <asp:BoundField DataField="LOYALTYID" HeaderText="LOYALTYID" ReadOnly="True" SortExpression="LOYALTYID" />
                            <asp:BoundField DataField="LOYSLTYNAME" HeaderText="LOYSLTYNAME" SortExpression="LOYSLTYNAME" />
                            <asp:BoundField DataField="LOYALTYPOINT" HeaderText="LOYALTYPOINT" SortExpression="LOYALTYPOINT" />
                            <asp:BoundField DataField="STARTDATE" HeaderText="STARTDATE" SortExpression="STARTDATE" />
                            <asp:BoundField DataField="EXPIRYDATE" HeaderText="EXPIRYDATE" SortExpression="EXPIRYDATE" />
                        </Columns>
                    </asp:GridView>


    </div>
    <div class="jumbotron">
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM SHIKHAR.LOYALTY_POINT WHERE (LOYALTYID = :PARAM1)" InsertCommand="INSERT INTO SHIKHAR.LOYALTY_POINT(LOYALTYID, LOYSLTYNAME, LOYALTYPOINT, STARTDATE, EXPIRYDATE) VALUES (:PARAM1, :PARAM2, :PARAM3, :PARAM4, :PARAM5)" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT * FROM &quot;LOYALTY_POINT&quot;" UpdateCommand="UPDATE SHIKHAR.LOYALTY_POINT SET LOYSLTYNAME = :PARAM1, LOYALTYPOINT = :PARAM2, STARTDATE = :PARAM3, EXPIRYDATE = :PARAM4 WHERE (LOYALTYID = :PARAM5)">
                        <DeleteParameters>
                            <asp:Parameter Name="LOYALTYID" Type="String" />
                        </DeleteParameters>
                        <InsertParameters>
                            <asp:Parameter Name="LOYALTYID" Type="String" />
                            <asp:Parameter Name="LOYSLTYNAME" Type="String" />
                            <asp:Parameter Name="LOYALTYPOINT" Type="Decimal" />
                            <asp:Parameter Name="STARTDATE" Type="DateTime" />
                            <asp:Parameter Name="EXPIRYDATE" Type="DateTime" />
                        </InsertParameters>
                        <UpdateParameters>
                            <asp:Parameter Name="LOYSLTYNAME" Type="String" />
                            <asp:Parameter Name="LOYALTYPOINT" Type="Decimal" />
                            <asp:Parameter Name="STARTDATE" Type="DateTime" />
                            <asp:Parameter Name="EXPIRYDATE" Type="DateTime" />
                            <asp:Parameter Name="LOYALTYID" Type="String" />
                        </UpdateParameters>
                    </asp:SqlDataSource>
                    <asp:FormView ID="FormView1" runat="server" DataKeyNames="LOYALTYID" DataSourceID="SqlDataSource1">
                        <EditItemTemplate>
                            LOYALTYID:
                            <asp:Label ID="LOYALTYIDLabel1" runat="server" Text='<%# Eval("LOYALTYID") %>' />
                            <br />
                            LOYSLTYNAME:
                            <asp:TextBox ID="LOYSLTYNAMETextBox" runat="server" Text='<%# Bind("LOYSLTYNAME") %>' />
                            <br />
                            LOYALTYPOINT:
                            <asp:TextBox ID="LOYALTYPOINTTextBox" runat="server" Text='<%# Bind("LOYALTYPOINT") %>' />
                            <br />
                            STARTDATE:
                            <asp:TextBox ID="STARTDATETextBox" runat="server" Text='<%# Bind("STARTDATE") %>' />
                            <br />
                            EXPIRYDATE:
                            <asp:TextBox ID="EXPIRYDATETextBox" runat="server" Text='<%# Bind("EXPIRYDATE") %>' />
                            <br />
                            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                            &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                        </EditItemTemplate>
                        <InsertItemTemplate>
                            LOYALTYID:
                            <asp:TextBox ID="LOYALTYIDTextBox" runat="server" Text='<%# Bind("LOYALTYID") %>' />
                            <br />
                            LOYSLTYNAME:
                            <asp:TextBox ID="LOYSLTYNAMETextBox" runat="server" Text='<%# Bind("LOYSLTYNAME") %>' />
                            <br />
                            LOYALTYPOINT:
                            <asp:TextBox ID="LOYALTYPOINTTextBox" runat="server" Text='<%# Bind("LOYALTYPOINT") %>' />
                            <br />
                            STARTDATE:
                            <asp:TextBox ID="STARTDATETextBox" runat="server" Text='<%# Bind("STARTDATE") %>' />
                            <br />
                            EXPIRYDATE:
                            <asp:TextBox ID="EXPIRYDATETextBox" runat="server" Text='<%# Bind("EXPIRYDATE") %>' />
                            <br />
                            <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                            &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                        </InsertItemTemplate>
                        <ItemTemplate>
                            LOYALTYID:
                            <asp:Label ID="LOYALTYIDLabel" runat="server" Text='<%# Eval("LOYALTYID") %>' />
                            <br />
                            LOYSLTYNAME:
                            <asp:Label ID="LOYSLTYNAMELabel" runat="server" Text='<%# Bind("LOYSLTYNAME") %>' />
                            <br />
                            LOYALTYPOINT:
                            <asp:Label ID="LOYALTYPOINTLabel" runat="server" Text='<%# Bind("LOYALTYPOINT") %>' />
                            <br />
                            STARTDATE:
                            <asp:Label ID="STARTDATELabel" runat="server" Text='<%# Bind("STARTDATE") %>' />
                            <br />
                            EXPIRYDATE:
                            <asp:Label ID="EXPIRYDATELabel" runat="server" Text='<%# Bind("EXPIRYDATE") %>' />
                            <br />
                            &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="Add Loyalty Point" class="btn btn-success"/>
                        </ItemTemplate>
                    </asp:FormView>
    </div>
</asp:Content>

<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Dish Details.aspx.cs" Inherits="WebApplication1.Dish_Details" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="jumbotron">

                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="DISHCODE" DataSourceID="SqlDataSource1" BorderColor="Black" CssClass="table table-condensed table-hover" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
                        <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" CssClass="headerClass" />
                        <Columns>
                            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ButtonType="Button" />
                            <asp:BoundField DataField="DISHCODE" HeaderText="DISHCODE" ReadOnly="True" SortExpression="DISHCODE" />
                            <asp:BoundField DataField="DISHNAME" HeaderText="DISHNAME" SortExpression="DISHNAME" />
                            <asp:BoundField DataField="LOCALNAME" HeaderText="LOCALNAME" SortExpression="LOCALNAME" />
                        </Columns>
                    </asp:GridView>

    </div>
    <div class="jumbotron">
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM SHIKHAR.DISH WHERE (DISHCODE = :PARAM1)" InsertCommand="INSERT INTO SHIKHAR.DISH(DISHCODE, DISHNAME, LOCALNAME) VALUES (:PARAM1, :PARAM2, :PARAM3)" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT * FROM &quot;DISH&quot;" UpdateCommand="UPDATE SHIKHAR.DISH SET DISHNAME = :PARAM1, LOCALNAME = :PARAM2 WHERE (DISHCODE = :PARAM3)">
                        <DeleteParameters>
                            <asp:Parameter Name="DISHCODE" Type="String" />
                        </DeleteParameters>
                        <InsertParameters>
                            <asp:Parameter Name="DISHCODE" Type="String" />
                            <asp:Parameter Name="DISHNAME" Type="String" />
                            <asp:Parameter Name="LOCALNAME" Type="String" />
                        </InsertParameters>
                        <UpdateParameters>
                            <asp:Parameter Name="DISHNAME" Type="String" />
                            <asp:Parameter Name="LOCALNAME" Type="String" />
                            <asp:Parameter Name="DISHCODE" Type="String" />
                        </UpdateParameters>
                    </asp:SqlDataSource>
                    <asp:FormView ID="FormView1" runat="server" DataKeyNames="DISHCODE" DataSourceID="SqlDataSource1" >
                        <EditItemTemplate >
                            DISHCODE:
                            <asp:Label ID="DISHCODELabel1" runat="server" Text='<%# Eval("DISHCODE") %>' />
                            <br />
                            DISHNAME:
                            <asp:TextBox ID="DISHNAMETextBox" runat="server" Text='<%# Bind("DISHNAME") %>' />
                            <br />
                            LOCALNAME:
                            <asp:TextBox ID="LOCALNAMETextBox" runat="server" Text='<%# Bind("LOCALNAME") %>' />
                            <br />
                            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                            &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                        </EditItemTemplate>
                        <InsertItemTemplate>
                            DISHCODE:
                            <asp:TextBox ID="DISHCODETextBox" runat="server" Text='<%# Bind("DISHCODE") %>' />
                            <br />
                            DISHNAME:
                            <asp:TextBox ID="DISHNAMETextBox" runat="server" Text='<%# Bind("DISHNAME") %>' />
                            <br />
                            LOCALNAME:
                            <asp:TextBox ID="LOCALNAMETextBox" runat="server" Text='<%# Bind("LOCALNAME") %>' />
                            <br />
                            <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                            &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                        </InsertItemTemplate>
                        <ItemTemplate>
                            DISHCODE:
                            <asp:Label ID="DISHCODELabel" runat="server" Text='<%# Eval("DISHCODE") %>' />
                            <br />
                            DISHNAME:
                            <asp:Label ID="DISHNAMELabel" runat="server" Text='<%# Bind("DISHNAME") %>' />
                            <br />
                            LOCALNAME:
                            <asp:Label ID="LOCALNAMELabel" runat="server" Text='<%# Bind("LOCALNAME") %>' />
                            <br />
                            <asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="Add New Dish" class="btn btn-success"/>
                        </ItemTemplate>
                    </asp:FormView>
    </div>
</asp:Content>

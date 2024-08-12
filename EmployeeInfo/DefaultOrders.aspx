<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Site1.Master" CodeBehind="DefaultOrders.aspx.cs" Inherits="EmployeeInfo.DefaultOrders" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

        <br />
        <br />
        <h1 class="display-3" style="font-family: Constantia; color: #FF8F56;">
            <center>
                <b><u style="text-decoration-color: #2D5C7F">Orders Database
                </u></b>
            </center>
        </h1>
        <br />
        <div class="row">
            <div class="col-md-2"></div>
            <div class="col-md-7 mx-auto">
                <asp:GridView ID="gridOrders" runat="server" AutoGenerateColumns="false" DataKeyNames="empid" OnRowCommand="gridOrders_RowCommand" OnRowDataBound="gridOrders_RowDataBound" ShowFooter="true"
                    AllowSorting="True" EmptyDataText="No records found" CssClass="rowHover" RowStyle-CssClass="rowHover"
                    CellPadding="5" ForeColor="#333333" Width="100%" GridLines="None" HeaderStyle-HorizontalAlign="Center">
                    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                    <Columns>
                        <asp:BoundField DataField="orderid" HeaderText="Order ID" ItemStyle-HorizontalAlign="Center"></asp:BoundField>
                        <asp:BoundField DataField="custname" HeaderText="Customer Name" ItemStyle-HorizontalAlign="Center"></asp:BoundField>
                        <asp:BoundField DataField="orderdate" HeaderText="Order Date" ItemStyle-HorizontalAlign="Center"></asp:BoundField>
                        <asp:BoundField DataField="product" HeaderText="Product Name" ItemStyle-HorizontalAlign="Center"></asp:BoundField>
                        <asp:BoundField DataField="quantity" HeaderText="Quantity" ItemStyle-HorizontalAlign="Center"></asp:BoundField>
                        <asp:BoundField DataField="empname" HeaderText="Employee Name" ItemStyle-HorizontalAlign="Center"></asp:BoundField>
                        <asp:BoundField DataField="orderstat" HeaderText="Order Status" ItemStyle-HorizontalAlign="Center"></asp:BoundField>
                        <asp:TemplateField ShowHeader="False">
                            <ItemTemplate>
                                <asp:Button ID="btnEditOrders" runat="server" CausesValidation="false" CommandName="Details" class="btn btn-sm btn-primary"
                                    Text="EDIT" CommandArgument='<%# Eval("orderid") %>' ForeColor="#213555" BorderColor="#1A132F" BackColor="White" />
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                    <EditRowStyle BackColor="#999999" />
                    <FooterStyle BackColor="#001F52" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#001F52" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#001F52" ForeColor="#E6F7F7" HorizontalAlign="Center" />
                    <RowStyle CssClass="rowHover" BackColor="#FFC97B" ForeColor="Black"></RowStyle>
                    <SelectedRowStyle BackColor="#B4D4FF" Font-Bold="True" ForeColor="#333333" />
                    <EmptyDataRowStyle Width="550px" ForeColor="Red" Font-Bold="true" HorizontalAlign="Center" />
                </asp:GridView>
            </div>
            <div class="col-md-3 mx-auto">
                <asp:Button runat="server" class="btn btn-sm btn-primary" Text="Add Order" Width="150px" ID="btnAddOrder" OnClick="btnAddOrder_Click" BackColor="#1A132F" />
           </div>
                </div>
</asp:Content>
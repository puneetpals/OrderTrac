<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Site1.Master" EnableEventValidation="false" CodeBehind="CustomerOrders.aspx.cs" Inherits="EmployeeInfo.CustomerOrders" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

     <br />
        <br />
        <h1 class="display-3" style="font-family: Constantia; color: #272343;">
            <center>
                <b><u style="text-decoration-color: #A0E4CB">Customer Orders
                </u></b>
            </center>
        </h1>
        <br />
        <div class="row">
            <div class="col-md-2"></div>
            <div class="col-md-8">
                <asp:GridView ID="gridCustOrders" runat="server" AutoGenerateColumns="false" DataKeyNames="custid" ShowFooter="true"
                    AllowSorting="True" EmptyDataText="No records found" CssClass="rowHover" RowStyle-CssClass="rowHover"
                    CellPadding="5" ForeColor="#333333" Width="100%" GridLines="None" HeaderStyle-HorizontalAlign="Center">
                    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                    <Columns>
                        <asp:BoundField DataField="custid" HeaderText="Customer ID" ItemStyle-HorizontalAlign="Center"></asp:BoundField>
                        <asp:BoundField DataField="custname" HeaderText="Customer Name" ItemStyle-HorizontalAlign="Center"></asp:BoundField>
                        <asp:BoundField DataField="orderid" HeaderText="Order ID" ItemStyle-HorizontalAlign="Center"></asp:BoundField>
                        <asp:BoundField DataField="product" HeaderText="Product" ItemStyle-HorizontalAlign="Center"></asp:BoundField>
                        <asp:BoundField DataField="quantity" HeaderText="Quantity" ItemStyle-HorizontalAlign="Center"></asp:BoundField>
                        <asp:BoundField DataField="orderstat" HeaderText="Order Status" ItemStyle-HorizontalAlign="Center"></asp:BoundField>
                    </Columns>
                    <EditRowStyle BackColor="#999999" />
                    <FooterStyle BackColor="#1A132F" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#1A132F" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#1A132F" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle CssClass="rowHover" BackColor="#A0E4CB" ForeColor="Black"></RowStyle>
                    <SelectedRowStyle BackColor="#B4D4FF" Font-Bold="True" ForeColor="#333333" />
                    <EmptyDataRowStyle Width="550px" ForeColor="Red" Font-Bold="true" HorizontalAlign="Center" />
                </asp:GridView>
                <div class="col-md-2">

                </div>
            </div>
            </div>
    
</asp:Content>   
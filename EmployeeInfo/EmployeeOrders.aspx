<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Site1.Master" EnableEventValidation="false" CodeBehind="EmployeeOrders.aspx.cs" Inherits="EmployeeInfo.EmployeeOrders" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

     <br />
        <br />
        <h1 class="display-3" style="font-family: Constantia; color: blue;">
            <center>
                <b><u style="text-decoration-color: #213555">Employee Orders
                </u></b>
            </center>
        </h1>
        <br />
        <div class="row">
            <div class="col-md-2"></div>
            <div class="col-md-8">
                <asp:GridView ID="gridEmpOrders" runat="server" AutoGenerateColumns="false" DataKeyNames="empid" OnRowCommand="gridEmpOrders_RowCommand" OnRowDataBound="gridEmpOrders_RowDataBound" ShowFooter="true"
                    AllowSorting="True" EmptyDataText="No records found" CssClass="rowHover" RowStyle-CssClass="rowHover"
                    CellPadding="5" ForeColor="#333333" Width="100%" GridLines="None" HeaderStyle-HorizontalAlign="Center">
                    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                    <Columns>
                        <asp:BoundField DataField="empid" HeaderText="Employee ID" ItemStyle-HorizontalAlign="Center"></asp:BoundField>
                        <asp:BoundField DataField="empname" HeaderText="Employee Name" ItemStyle-HorizontalAlign="Center"></asp:BoundField>
                        <asp:BoundField DataField="custname" HeaderText="Customer Name" ItemStyle-HorizontalAlign="Center"></asp:BoundField>
                        <asp:BoundField DataField="product" HeaderText="Product" ItemStyle-HorizontalAlign="Center"></asp:BoundField>
                        <asp:BoundField DataField="quantity" HeaderText="Quantity" ItemStyle-HorizontalAlign="Center"></asp:BoundField>
                        <asp:BoundField DataField="orderstat" HeaderText="Order Status" ItemStyle-HorizontalAlign="Center"></asp:BoundField>
                    </Columns>
                    <EditRowStyle BackColor="#999999" />
                    <FooterStyle BackColor="#1A132F" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#1A132F" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#1A132F" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle CssClass="rowHover" BackColor="#B4D4FF" ForeColor="Black"></RowStyle>
                    <SelectedRowStyle BackColor="#B4D4FF" Font-Bold="True" ForeColor="#333333" />
                    <EmptyDataRowStyle Width="550px" ForeColor="Red" Font-Bold="true" HorizontalAlign="Center" />
                </asp:GridView>
                <div class="col-md-2">

                </div>
            </div>
            </div>
    
</asp:Content>   
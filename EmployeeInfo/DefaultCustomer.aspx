<%@ Page Language="C#" AutoEventWireup="true"  MasterPageFile="~/Site1.Master"  EnableEventValidation="false" CodeBehind="DefaultCustomer.aspx.cs" Inherits="EmployeeInfo.CustomerList" %>


<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

        <h1 class="display-3" style="font-family: Constantia; color: #272343;">
            <center>
                <b><u style="text-decoration-color: #A0E4CB">CUSTOMER DATABASE
                </u></b>
            </center>
        </h1>
        <br />
        <div class="row">
            <div class="col-md-2"></div>
            <div class="col-md-7 mx-auto">
                <asp:GridView ID="gridCustomer" runat="server" AutoGenerateColumns="false" DataKeyNames="custid" ShowFooter="true" OnRowCommand="gridCustomer_RowCommand" OnRowDataBound="gridCustomer_RowDataBound"
                    AllowSorting="True" EmptyDataText="No records found" CssClass="rowHover" RowStyle-CssClass="rowHover"
                    AllowPaging="True" CellPadding="4" ForeColor="#333333" Width="100%" GridLines="None" HeaderStyle-HorizontalAlign="Center">
                    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                    <Columns>
                        <asp:BoundField DataField="custid" HeaderText="Customer ID" ItemStyle-HorizontalAlign="Center"></asp:BoundField>
                        <asp:BoundField DataField="name" HeaderText="Customer Name" ItemStyle-HorizontalAlign="Center"></asp:BoundField>
                        <asp:BoundField DataField="phone" HeaderText="Phone No" ItemStyle-HorizontalAlign="Center"></asp:BoundField>
                        <asp:BoundField DataField="address" HeaderText="Address" ItemStyle-HorizontalAlign="Center"></asp:BoundField>
                        <asp:BoundField DataField="age" HeaderText="Age" ItemStyle-HorizontalAlign="Center"></asp:BoundField>
                        <asp:BoundField DataField="email" HeaderText="E-Mail Id" ItemStyle-HorizontalAlign="Center"></asp:BoundField>
                        <asp:TemplateField ShowHeader="False">
                            <ItemTemplate>
                                <asp:Button ID="btnEditCust" runat="server" CausesValidation="false" CommandName="Details" class="btn btn-sm btn-primary"
                                    Text="EDIT" CommandArgument='<%# Eval("custid") %>' ForeColor="#213555" BorderColor="#1A132F" BackColor="White" />
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                    <EditRowStyle BackColor="#999999" />
                    <FooterStyle BackColor="#1A132F" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#1A132F" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#1A132F" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle CssClass="rowHover" BackColor="#A0E4CB" ForeColor="Black"></RowStyle>
                    <SelectedRowStyle BackColor="#B4D4FF" Font-Bold="True" ForeColor="#333333" />

                    <EmptyDataRowStyle Width="550px" ForeColor="Red" Font-Bold="true" HorizontalAlign="Center" />
                </asp:GridView>

            </div>
            <div class="col-md-3 mx-auto">
                <asp:Button runat="server" class="btn btn-sm btn-primary" Text="Add Customer" Width="150px" ID="btnAddCust" OnClick="btnAdd_Click" BackColor="#1A132F" />
            </div>
        </div>
 
</asp:Content>
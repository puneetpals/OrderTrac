<%@ Page Language="C#" AutoEventWireup="true"  MasterPageFile="~/Site1.Master" EnableEventValidation="false" CodeBehind="DefaultEmployee.aspx.cs" Inherits="EmployeeInfo.EmployeeList" %>


<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

     <br />
        <br />
        <h1 class="display-3" style="font-family: Constantia; color: blue;">
            <center>
                <b><u style="text-decoration-color: #213555">Employee Database
                </u></b>
            </center>
        </h1>
        <br />
        <div class="row">
            <div class="col-md-2"></div>
            <div class="col-md-7 mx-auto">
                <asp:GridView ID="gridEmployee" runat="server" AutoGenerateColumns="false" DataKeyNames="empid" OnRowCommand="gridEmployee_RowCommand" OnRowDataBound="gridEmployee_RowDataBound" ShowFooter="true"
                    AllowSorting="True" EmptyDataText="No records found" CssClass="rowHover" RowStyle-CssClass="rowHover"
                    CellPadding="5" ForeColor="#333333" Width="100%" GridLines="None" HeaderStyle-HorizontalAlign="Center">
                    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                    <Columns>
                        <asp:BoundField DataField="empid" HeaderText="Employee ID" ItemStyle-HorizontalAlign="Center"></asp:BoundField>
                        <asp:BoundField DataField="name" HeaderText="Employee Name" ItemStyle-HorizontalAlign="Center"></asp:BoundField>
                        <asp:BoundField DataField="phone" HeaderText="Phone No" ItemStyle-HorizontalAlign="Center"></asp:BoundField>
                        <asp:BoundField DataField="address" HeaderText="Address" ItemStyle-HorizontalAlign="Center"></asp:BoundField>
                        <asp:BoundField DataField="age" HeaderText="Age" ItemStyle-HorizontalAlign="Center"></asp:BoundField>
                        <asp:BoundField DataField="email" HeaderText="E-Mail Id" ItemStyle-HorizontalAlign="Center"></asp:BoundField>
                        <asp:TemplateField ShowHeader="False">
                            <ItemTemplate>
                                <asp:Button ID="btnEdit" runat="server" CausesValidation="false" CommandName="Details" class="btn btn-sm btn-primary"
                                    Text="EDIT" CommandArgument='<%# Eval("empid") %>' ForeColor="#213555" BorderColor="#1A132F" BackColor="White" />
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                    <EditRowStyle BackColor="#999999" />
                    <FooterStyle BackColor="#1A132F" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#1A132F" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#1A132F" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle CssClass="rowHover" BackColor="#B4D4FF" ForeColor="Black"></RowStyle>
                    <SelectedRowStyle BackColor="#B4D4FF" Font-Bold="True" ForeColor="#333333" />
                    <EmptyDataRowStyle Width="550px" ForeColor="Red" Font-Bold="true" HorizontalAlign="Center" />
                </asp:GridView>
            </div>
            <div class="col-md-3 mx-auto">
                <asp:Button runat="server" class="btn btn-sm btn-primary" Text="Add Employee" Width="150px" ID="btnAdd" OnClick="btnAdd_Click" BackColor="#1A132F" />
            </div>
</asp:Content>   
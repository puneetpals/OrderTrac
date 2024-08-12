<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Site1.Master" CodeBehind="AddOrders.aspx.cs" Inherits="EmployeeInfo.AddOrders" %>


<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

    <div style="background-color: #FFFFFF">
        <br />
        <center>


            <h1 class="display-8" style="color: #272343; font-family: Constantia">
                <u style="text-decoration-color: #F07B3F">YOU CAN ADD ORDERS HERE</u>
            </h1>
        </center>

        <br />

        <div class="container">
            <div class="row">
                <div class="col-md-6 mx-auto">
                    <div class="card">
                        <div class="border border-black" style="border-color: #001F52">
                            <div class="card-body" style="background-color: #FFC97B">
    
                                <div class="row">
                                    <div class="col" style="color: #001F52">
                                        <center>
                                            <b style="font-size: 20px; font-family: Constantia">
                                         ENTER DETAILS</>
                                            </b>
                                        </center>
                                    </div>
                                </div>
                                <hr />
                                <br />

                                <div class="row">

                                    <div class="col-md-2">
                                    </div>

                                    <div class="col-md-3">
                                        <label for="txtOrderID" style="font-weight: bold">Order ID:</label>
                                    </div>

                                    <div class="col-md-3">
                                        <asp:TextBox ID="txtOrderID" runat="server" ReadOnly="true" Width="200"></asp:TextBox>
                                    </div>

                                    <div class="col-md-4">
                                        <asp:RequiredFieldValidator runat="server" InitialValue="" ErrorMessage="Enter your Order ID" ID="RequiredFieldValidatorOrderId"
                                            ControlToValidate="txtOrderID" ValidationGroup="o1" ForeColor="#CC0000" Font-Size="Small" Font-Italic="True" Font-Bold="True"></asp:RequiredFieldValidator>
                                    </div>
                                </div>
                                <br />
                                <div class="row ">
                                    <div class="col-md-2">
                                    </div>

                                    <div class="col-md-3">
                                        <label for="ddlCustomer" style="font-weight: bold">Customer Name:</label>
                                    </div>

                                    <div class="col-md-3">
                                        <asp:DropDownList ID="ddlCustomer" runat="server" Width="200">
                                        </asp:DropDownList>
                                    </div>

                                    <div class="col-md-4">
                                        <asp:RequiredFieldValidator runat="server" InitialValue="-1" ErrorMessage="Select Customer Name" ControlToValidate="ddlCustomer"
                                            ID="RequiredFieldValidatorCustName" ValidationGroup="o1" ForeColor="#CC0000" Font-Bold="True" Font-Size="Small" Font-Italic="True"></asp:RequiredFieldValidator>
                                    </div>
                                </div>

                                <br />
                                <div class="row">
                                    <div class="col-md-2">
                                    </div>

                                    <div class="col-md-3">
                                        <label for="ddlProducts" style="font-weight: bold">Choose Product:</label>
                                    </div>

                                    <div class="col-md-3">
                                        <asp:DropDownList ID="ddlProducts" runat="server" Width="200">
                                        </asp:DropDownList>
                                    </div>

                                    <div class="col-md-4">
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidatorddlProducts" InitialValue="-1" runat="server" ErrorMessage="Choose a Product"
                                            ControlToValidate="ddlProducts" ValidationGroup="o1" ForeColor="#CC0000" Font-Bold="True" Font-Size="Small" Font-Italic="True"></asp:RequiredFieldValidator>
                                    </div>
                                </div>
                                <br />
                                <div class="row">
                                    <div class="col-md-2">
                                    </div>

                                    <div class="col-md-3">
                                        <label for="txtQuantity" style="font-weight: bold">Quantity:</label>
                                    </div>

                                    <div class="col-md-3">
                                        <asp:TextBox ID="txtQuantity" runat="server" TextMode="Number" Width="200" />
                                    </div>

                                    <div class="col-md-4">
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidatortxtQuantity" InitialValue="" runat="server"
                                            ErrorMessage="Enter Quantity of Products" ControlToValidate="txtQuantity" ValidationGroup="o1"
                                            ForeColor="#CC0000" Font-Size="Small" Font-Bold="True" Font-Italic="True"></asp:RequiredFieldValidator>
                                    </div>
                                </div>
                                <br />
                                <div class="row ">
                                    <div class="col-md-2">
                                    </div>

                                    <div class="col-md-3">
                                        <label for="ddlEmployee" style="font-weight: bold">Employee Name:</label>
                                    </div>

                                    <div class="col-md-3">
                                        <asp:DropDownList ID="ddlEmployee" runat="server" Width="200">
                                        </asp:DropDownList>
                                    </div>

                                    <div class="col-md-4">
                                        <asp:RequiredFieldValidator runat="server" InitialValue="-1" ErrorMessage="Select Employee Name" ControlToValidate="ddlEmployee"
                                            ID="RequiredFieldValidatorddlEmployee" ValidationGroup="o1" ForeColor="#CC0000" Font-Bold="True" Font-Size="Small" Font-Italic="True"></asp:RequiredFieldValidator>
                                    </div>
                                </div>
                                <br />
                                <div class="row">
                                    <div class="col-md-2">
                                    </div>

                                    <div class="col-md-3">
                                        <label for="ddlOrderStat" style="font-weight: bold">Order Status:</label>
                                    </div>

                                    <div class="col-md-3">

                                        <asp:DropDownList ID="ddlOrderStat" runat="server" Width="200">

                                            <asp:ListItem Value="-1">--Select Order Status--</asp:ListItem>
                                            <asp:ListItem Value="0">Pending</asp:ListItem>
                                            <asp:ListItem Value="1">Done</asp:ListItem>

                                        </asp:DropDownList>
                                    </div>

                                    <div class="col-md-4">
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidatordllOrderStat" InitialValue="-1" runat="server" ErrorMessage="Enter your Order Status"
                                            ControlToValidate="ddlOrderStat" ValidationGroup="o1" Font-Bold="True" ForeColor="#CC0000" Font-Size="Small" Font-Italic="True"></asp:RequiredFieldValidator>
                                    </div>
                                </div>
                                <br />
                                <br />
                                <div class="row">
                                    <div class="col">
                                        <center>
                                            <asp:Button runat="server" ButtonId="BtnAddOrders" Text="ADD" OnClick="BtnOrders_Click" ValidationGroup="o1" class="btn btn-sm btn-primary" BorderColor="#001F52" BackColor="#FFFFFF" ForeColor="#213555" />
                                        </center>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col">
                                        <center>
                                            <asp:Label ID="lblMsgOrders" runat="server" Text="" Font-Bold="True" Font-Italic="True" Font-Size="Medium" ForeColor="#CC0000"></asp:Label>
                                        </center>
                                    </div>
                                </div>
                                <br />
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
    </div>

</asp:Content>

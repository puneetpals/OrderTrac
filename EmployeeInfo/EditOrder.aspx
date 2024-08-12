<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Site1.Master" CodeBehind="EditOrder.aspx.cs" Inherits="EmployeeInfo.EditOrder" %>


<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

    <div style="background-color: #FFFFFF">
        <br />
        <center>


            <br />
            <h1 class="display-8" style="color: #272343; font-family: Constantia">
                <u style="text-decoration-color: #F07B3F">YOU CAN EDIT ORDER DETAILS HERE</u>
            </h1>
        </center>
        <br />
        <br />

        <div class="container">
            <div class="row">
                <div class="col-md-6 mx-auto">
                    <div class="card">
                        <div class="border border-black" style="border-color: #001F52">
                            <div class="card-body" style="background-color: #FFC97B">
                                <div class="row">
                                    <div class="col-md-6 mx-auto" style="color: #001F52">
                                        <center>
                                            <b style="font-size: 20px; font-family: Constantia">
                                                <u style="text-decoration-color: #001F52">EDIT DETAILS</u>
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
                                            ControlToValidate="txtOrderID" ValidationGroup="o2" ForeColor="#CC0000" Font-Size="Small" Font-Italic="True" Font-Bold="True"></asp:RequiredFieldValidator>
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
                                        </asp:DropDownList>
                                    </div>

                                    <div class="col-md-4">
                                    </div>
                                </div>
                                <br />
                                <br />
                                <div class="row">
                                    <div class="col">
                                        <center>
                                            <asp:Button runat="server" ButtonId="BtnEditOrder" Text="EDIT" OnClick="btnEditOrder_Click" ValidationGroup="o2" class="btn btn-sm btn-primary" BorderColor="#001F52" BackColor="#FFFFFF" ForeColor="#213555" />
                                        </center>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col">
                                        <center>
                                            <asp:Label ID="lblMsgEditOrder" runat="server" Text="" Font-Bold="True" Font-Italic="True" Font-Size="Medium" ForeColor="#CC0000"></asp:Label>
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

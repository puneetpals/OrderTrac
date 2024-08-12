<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Site1.Master" CodeBehind="EditCustomer.aspx.cs" Inherits="EmployeeInfo.EditCustomer" %>


<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">


    <div style="background-color: #FFFFFF">
        <br />
        <center>
            <h2 class="display-5" style="color: #001F52; font-family: Constantia">
                <u style="text-decoration-color: #A0E4CB">EDIT YOUR CUSTOMER DETAILS</u>
            </h2>
        </center>
        <br />



        <div class="container">
            <div class="row">
                <div class="col-md-6 mx-auto">
                    <div class="card">
                        <div class="border border-black" style="border-color: #272343">

                            <div class="card-body" style="background-color: #A0E4CB">

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


                                <div class="row">

                                    <div class="col-md-2">
                                    </div>

                                    <div class="col-md-3">
                                        <label for="txtCustId" style="font-weight: bold">Employee ID:</label>
                                    </div>

                                    <div class="col-md-4">
                                        <asp:TextBox ID="txtCustId" ReadOnly="true" runat="server" Text="" Width="165" TextMode="Number" />
                                    </div>

                                    <div class="col-md-3">

                                        <asp:RequiredFieldValidator runat="server" InitialValue="" ErrorMessage="Enter your employee ID" ID="RequiredFieldValidatorCust"
                                            ControlToValidate="txtCustId" ValidationGroup="c2" ForeColor="#CC0000" Font-Size="Small" Font-Italic="True"></asp:RequiredFieldValidator>
                                    </div>

                                </div>

                                <br />
                                <div class="row ">
                                    <div class="col-md-2">
                                    </div>

                                    <div class="col-md-3">
                                        <label for="txtCustName" style="font-weight: bold">Employee Name:</label>
                                    </div>

                                    <div class="col-md-4">
                                        <asp:TextBox ID="txtCustName" runat="server" TextMode="SingleLine" Width="165" />
                                    </div>

                                    <div class="col-md-3">
                                    </div>
                                </div>
                                <br />
                                <div class="row">

                                    <div class="col-md-2">
                                    </div>

                                    <div class="col-md-3">
                                        <label for="txtCustPhone" style="font-weight: bold">Phone No:</label>
                                    </div>

                                    <div class="col-md-4">
                                        <asp:TextBox ID="txtCustPhone" runat="server" TextMode="Phone" Width="165" />
                                    </div>

                                    <div class="col-md-3">


                                        <asp:RegularExpressionValidator ID="RegularExpressionValidatorTxtCustPhone" runat="server"
                                            ErrorMessage="Enter valid Phone No" ValidationExpression="^(\+\d{1,2}\s)?\(?\d{3}\)?[\s.-]?\d{3}[\s.-]?\d{4}$"
                                            ControlToValidate="txtCustPhone" ValidationGroup="c2" ForeColor="#CC0000" Font-Size="Small" Font-Italic="True"></asp:RegularExpressionValidator>
                                    </div>
                                </div>
                                <br />
                                <div class="row">
                                    <div class="col-md-2">
                                    </div>

                                    <div class="col-md-3">
                                        <label for="txtCustEmail" style="font-weight: bold">Email Id:</label>
                                    </div>

                                    <div class="col-md-4">
                                        <asp:TextBox ID="txtCustEmail" runat="server" TextMode="Email" Width="165" />
                                    </div>

                                    <div class="col-md-3">
                                    </div>
                                </div>
                                <br />
                                <div class="row">
                                    <div class="col-md-2">
                                    </div>

                                    <div class="col-md-3">
                                        <label for="txtCustAddress" style="font-weight: bold">Address:</label>
                                    </div>

                                    <div class="col-md-4">
                                        <asp:TextBox ID="txtCustAddress" runat="server" TextMode="MultiLine" Width="165" />
                                    </div>

                                    <div class="col-md-3">
                                    </div>
                                </div>
                                <br />
                                <div class="row">
                                    <div class="col-md-2">
                                    </div>

                                    <div class="col-md-3">
                                        <label for="txtCustAge" style="font-weight: bold">Age:</label>
                                    </div>

                                    <div class="col-md-4">
                                        <asp:TextBox ID="txtCustAge" runat="server" TextMode="Number" Width="165" />
                                    </div>

                                    <div class="col-md-3">


                                        <asp:RangeValidator runat="server" ErrorMessage="Age must be between 18-60" MaximumValue="60" MinimumValue="18" ID="RangeValidatorTxtAge"
                                            Type="Integer" ControlToValidate="txtCustAge" ValidationGroup="c2" ForeColor="#CC0000" Font-Size="Small" Font-Italic="True"></asp:RangeValidator>
                                    </div>
                                </div>
                                <br />
                                <div class="row">
                                    <div class="col-md-2">
                                    </div>

                                    <div class="col-md-3">
                                        <label for="txtCustStatus" style="font-weight: bold">Status:</label>
                                    </div>

                                    <div class="col-md-4">
                                        <asp:TextBox ID="txtCustStatus" runat="server" TextMode="SingleLine" Width="165" />
                                    </div>

                                    <div class="col-md-3">
                                    </div>
                                </div>
                                <br />
                                <div class="row">
                                    <div class="col">
                                        <center>
                                            <asp:Button runat="server" ID="btnEdit" Text="EDIT" OnClick="btnEditCust_Click" class="btn btn-sm btn-primary" ValidationGroup="c2" BorderColor="#272343" BackColor="White" ForeColor="#213555" />
                                        </center>
                                    </div>

                                    <div class="row">
                                        <div class="col-md-5 mx-auto">
                                            <asp:Label ID="lblMsgCust1" runat="server" Text="" Font-Bold="True" Font-Italic="True" Font-Size="Medium" ForeColor="#CC0000"></asp:Label>
                                        </div>
                                    </div>
                                    <br />
                                </div>
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

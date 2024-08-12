<%@ Page Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="EditEmployee.aspx.cs" Inherits="EmployeeInfo.EditEmployee" %>


<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <div>
        <br />
        <br />
        <center>
            <h2 class="display-5" style="color: #86B6F6; font-family: Constantia">
                <u style="text-decoration-color: #001F52">EDIT YOUR EMPLOYEE DETAILS </u>
            </h2>
        </center>
        <br />



        <div class="container">
            <div class="row">
                <div class="col-md-6 mx-auto">
                    <div class="card">
                        <div class="border border-black" style="border-color: #213555">

                            <div class="card-body" style="background-color: #86B6F6">

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
                                        <label for="TxtId" style="font-weight: bold">Employee ID:</label>
                                    </div>

                                    <div class="col-md-4">
                                        <asp:TextBox ID="TxtId" ReadOnly="true" runat="server" Text="" TextMode="Number" Width="165" />
                                    </div>

                                    <div class="col-md-3">

                                        <asp:RequiredFieldValidator runat="server" InitialValue="" ErrorMessage="Enter your employee ID" ID="RequiredFieldValidator1"
                                            ControlToValidate="TxtId" ValidationGroup="p2" ForeColor="#CC0000" Font-Size="Small" Font-Italic="True"></asp:RequiredFieldValidator>
                                    </div>

                                </div>

                                <br />
                                <div class="row ">
                                    <div class="col-md-2">
                                    </div>

                                    <div class="col-md-3">
                                        <label for="TxtName" style="font-weight: bold">Employee Name:</label>
                                    </div>

                                    <div class="col-md-4">
                                        <asp:TextBox ID="TxtName" runat="server" TextMode="SingleLine" Width="165" />
                                    </div>

                                    <div class="col-md-3">
                                    </div>
                                </div>
                                <br />
                                <div class="row">

                                    <div class="col-md-2">
                                    </div>

                                    <div class="col-md-3">
                                        <label for="TxtPhone" style="font-weight: bold">Phone No:</label>
                                    </div>

                                    <div class="col-md-4">
                                        <asp:TextBox ID="TxtPhone" runat="server" TextMode="Phone" Width="165" />
                                    </div>

                                    <div class="col-md-3">


                                        <asp:RegularExpressionValidator ID="RegularExpressionValidatorTxtPhone" runat="server"
                                            ErrorMessage="Enter valid Phone No" ValidationExpression="^(\+\d{1,2}\s)?\(?\d{3}\)?[\s.-]?\d{3}[\s.-]?\d{4}$"
                                            ControlToValidate="TxtPhone" ValidationGroup="p2" ForeColor="#CC0000" Font-Size="Small" Font-Italic="True"></asp:RegularExpressionValidator>
                                    </div>
                                </div>
                                <br />
                                <div class="row">
                                    <div class="col-md-2">
                                    </div>

                                    <div class="col-md-3">
                                        <label for="TxtEmail" style="font-weight: bold">Email Id:</label>
                                    </div>

                                    <div class="col-md-4">
                                        <asp:TextBox ID="TxtEmail" runat="server" TextMode="Email" Width="165" />
                                    </div>

                                    <div class="col-md-3">
                                    </div>
                                </div>
                                <br />
                                <div class="row">
                                    <div class="col-md-2">
                                    </div>

                                    <div class="col-md-3">
                                        <label for="TxtAddress" style="font-weight: bold">Address:</label>
                                    </div>

                                    <div class="col-md-4">
                                        <asp:TextBox ID="TxtAddress" runat="server" TextMode="MultiLine" Width="165" />
                                    </div>

                                    <div class="col-md-3">
                                    </div>
                                </div>
                                <br />
                                <div class="row">
                                    <div class="col-md-2">
                                    </div>

                                    <div class="col-md-3">
                                        <label for="TxtAge" style="font-weight: bold">Age:</label>
                                    </div>

                                    <div class="col-md-4">
                                        <asp:TextBox ID="TxtAge" runat="server" TextMode="Number" Width="165" />
                                    </div>

                                    <div class="col-md-3">


                                        <asp:RangeValidator runat="server" ErrorMessage="Age must be b/w 18-60" MaximumValue="60" MinimumValue="18" ID="RangeValidatorTxtAge"
                                            Type="Integer" ControlToValidate="TxtAge" ValidationGroup="p2" ForeColor="#CC0000" Font-Size="Small" Font-Italic="True"></asp:RangeValidator>
                                    </div>
                                </div>
                                <br />
                                <div class="row">
                                    <div class="col-md-2">
                                    </div>

                                    <div class="col-md-3">
                                        <label for="TxtStat" style="font-weight: bold">Status:</label>
                                    </div>

                                    <div class="col-md-4">
                                        <asp:TextBox ID="TxtStat" runat="server" TextMode="SingleLine" Width="165" />
                                    </div>

                                    <div class="col-md-3">
                                    </div>
                                </div>
                                <br />
                                <div class="row">
                                    <div class="col">
                                        <center>
                                            <asp:Button runat="server" ID="btnEdit" Text="EDIT" OnClick="btnEdit_Click" class="btn btn-sm btn-primary" ValidationGroup="p2" BorderColor="#213555" BackColor="White" ForeColor="#213555" />
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

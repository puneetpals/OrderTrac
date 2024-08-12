<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Site1.Master" CodeBehind="AddEmployee.aspx.cs" Inherits="EmployeeInfo.AddEmployee" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">


    <div style="background-color: #FFFFFF">
        <br />
        <center>

            <h1 class="display-5" style="color: #86B6F6; font-family: Constantia">
                <u style="text-decoration-color: #001F52">ADD YOUR EMPLOYEE HERE</u>
            </h1>
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
                                                <u style="text-decoration-color: #001F52">ADD DETAILS</u>
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
                                        <asp:TextBox ID="TxtId" runat="server" Text="" TextMode="Number" Width="165" />
                                    </div>

                                    <div class="col-md-3">
                                        <asp:RequiredFieldValidator runat="server" InitialValue="" ErrorMessage="Enter your employee ID" ID="RequiredFieldValidatorTxtId"
                                            ControlToValidate="TxtId" ValidationGroup="p1" ForeColor="#CC0000" Font-Size="Small" Font-Italic="True" Font-Bold="True"></asp:RequiredFieldValidator>
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
                                        <asp:TextBox ID="TxtName" runat="server" Width="165" TextMode="SingleLine" />
                                    </div>

                                    <div class="col-md-3">
                                        <asp:RequiredFieldValidator runat="server" InitialValue="" ErrorMessage="Enter your Name" ControlToValidate="TxtName"
                                            ID="RequiredFieldValidatorTxtName" ValidationGroup="p1" ForeColor="#CC0000" Font-Bold="True" Font-Size="Small" Font-Italic="True"></asp:RequiredFieldValidator>
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
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidatorTxtPhone" InitialValue="" runat="server" ControlToValidate="TxtPhone"
                                            ValidationGroup="p1" ErrorMessage="Enter your Phone No" ForeColor="#CC0000" Font-Bold="True" Font-Size="Small" Font-Italic="True" Display="Dynamic"></asp:RequiredFieldValidator>

                                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server"
                                            ErrorMessage="Enter valid Phone No" ValidationExpression="^(\+\d{1,2}\s)?\(?\d{3}\)?[\s.-]?\d{3}[\s.-]?\d{4}$"
                                            ControlToValidate="TxtPhone" ValidationGroup="p1" ForeColor="#CC0000" Font-Bold="True" Font-Size="Small" Font-Italic="True" Display="Dynamic"></asp:RegularExpressionValidator>
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
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidatorTxtEmail" InitialValue="" runat="server" ErrorMessage="Enter your E-Mail ID"
                                            ControlToValidate="TxtEmail" ValidationGroup="p1" ForeColor="#CC0000" Font-Bold="True" Font-Size="Small" Font-Italic="True"></asp:RequiredFieldValidator>
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
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidatorTxtAddress" InitialValue="" runat="server"
                                            ErrorMessage="Enter your Address" ControlToValidate="TxtAddress" ValidationGroup="p1"
                                            ForeColor="#CC0000" Font-Size="Small" Font-Bold="True" Font-Italic="True"></asp:RequiredFieldValidator>
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
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidatorTxtAge" runat="server" ErrorMessage="Enter Your Age"
                                            ControlToValidate="TxtAge" InitialValue="" ValidationGroup="p1" ForeColor="#CC0000" Font-Bold="True" Font-Size="Small" Font-Italic="True" Display="Dynamic"></asp:RequiredFieldValidator>

                                        <asp:RangeValidator runat="server" ErrorMessage="Age must be b/w 18-60" MaximumValue="60" MinimumValue="18" ID="RangeValidator1"
                                            Type="Integer" ControlToValidate="TxtAge" ValidationGroup="p1" ForeColor="#CC0000" Font-Bold="True" Font-Size="Small" Font-Italic="True" Display="Dynamic"></asp:RangeValidator>
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
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidatorTxtStat" InitialValue="" runat="server" ErrorMessage="Enter your Status"
                                            ControlToValidate="TxtStat" ValidationGroup="p1" Font-Bold="True" ForeColor="#CC0000" Font-Size="Small" Font-Italic="True"></asp:RequiredFieldValidator>
                                    </div>
                                </div>
                                <br />
                                <div class="row">
                                    <div class="col">
                                        <center>
                                            <asp:Button runat="server" ButtonId="BtnAdd" Text="ADD" OnClick="btnAdd_Click" ValidationGroup="p1" class="btn btn-sm btn-primary" BorderColor="#213555" BackColor="White" ForeColor="#213555" />
                                        </center>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col">
                                        <center>
                                            <asp:Label ID="lblMsg" runat="server" Text="" Font-Bold="True" Font-Italic="True" Font-Size="Medium" ForeColor="#CC0000"></asp:Label>
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

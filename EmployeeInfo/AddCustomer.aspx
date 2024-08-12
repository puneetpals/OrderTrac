<%@ Page Language="C#" AutoEventWireup="true"  MasterPageFile="~/Site1.Master"  CodeBehind="AddCustomer.aspx.cs" Inherits="EmployeeInfo.AddCustomer" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">


<!DOCTYPE html>
    <div style="background-color: #FFFFFF">
        <br />
        <center>
                             
            <h1 class="display-5" style="color: #A0E4CB;font-family:Constantia">
                <u style="text-decoration-color:#272343">ADD YOUR CUSTOMER HERE</u>
            </h1>
        </center>

        <br />
       
            <div class="container">
                <div class="row">
                    <div class="col-md-6 mx-auto">
                        <div class="card">
                          <div class="border border-black" style="border-color:#272343">
                            <div class="card-body" style="background-color: #A0E4CB">
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
                                        <label for="txtCustID" style="font-weight:bold" >Customer ID:</label>
                                    </div>

                                    <div class="col-md-4">
                                       <asp:TextBox ID="txtCustID" runat="server" Width="165" ></asp:TextBox>                                    </div>

                                    <div class="col-md-3">
                                        <asp:RequiredFieldValidator runat="server" InitialValue="" ErrorMessage="Enter your employee ID" ID="RequiredFieldValidatorCustId"
                                            ControlToValidate="txtCustID" ValidationGroup="c1" ForeColor="#CC0000" Font-Size="Small" Font-Italic="True" Font-Bold="True"></asp:RequiredFieldValidator>
                                    </div>

                                </div>

                                <br />
                                <div class="row ">
                                    <div class="col-md-2">
                                    </div>

                                    <div class="col-md-3">
                                        <label for="txtCustName" style="font-weight:bold">Customer Name:</label>
                                    </div>

                                    <div class="col-md-4">
                                        <asp:TextBox ID="txtCustName" runat="server" TextMode="SingleLine" Width="165" />
                                    </div>

                                    <div class="col-md-3">
                                        <asp:RequiredFieldValidator runat="server" InitialValue="" ErrorMessage="Enter your Name" ControlToValidate="txtCustName"
                                            ID="RequiredFieldValidatorCustName" ValidationGroup="c1" ForeColor="#CC0000" Font-Bold="True" Font-Size="Small" Font-Italic="True"></asp:RequiredFieldValidator>
                                    </div>
                                </div>
                                <br />
                                <div class="row">

                                    <div class="col-md-2">
                                    </div>

                                    <div class="col-md-3">
                                        <label for="txtCustPhone" style="font-weight:bold">Phone No:</label>
                                    </div>

                                    <div class="col-md-4">
                                        <asp:TextBox ID="txtCustPhone" runat="server" TextMode="Phone" Width="165" />
                                    </div>

                                    <div class="col-md-3">
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidatorCustPhone" InitialValue="" runat="server" ControlToValidate="txtCustPhone"
                                            ValidationGroup="c1" ErrorMessage="Enter your Phone No" ForeColor="#CC0000" Font-Bold="True" Font-Size="Small" Font-Italic="True" Display="Dynamic"></asp:RequiredFieldValidator>

                                        <asp:RegularExpressionValidator ID="RegularExpressionValidatorCustPhone" runat="server"
                                            ErrorMessage="Enter valid Phone No" ValidationExpression="^(\+\d{1,2}\s)?\(?\d{3}\)?[\s.-]?\d{3}[\s.-]?\d{4}$"
                                            ControlToValidate="txtCustPhone" ValidationGroup="c1" ForeColor="#CC0000" Font-Bold="True" Font-Size="Small" Font-Italic="True" Display="Dynamic"></asp:RegularExpressionValidator>
                                    </div>
                                </div>
                                <br />
                                <div class="row">
                                    <div class="col-md-2">
                                    </div>

                                    <div class="col-md-3">
                                        <label for="txtCustEmail"style="font-weight:bold">Email Id:</label>
                                    </div>

                                    <div class="col-md-4">
                                        <asp:TextBox ID="txtCustEmail" runat="server" TextMode="Email" Width="165" />
                                    </div>

                                    <div class="col-md-3">
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidatorCustEmail" InitialValue="" runat="server" ErrorMessage="Enter your E-Mail ID"
                                            ControlToValidate="txtCustEmail" ValidationGroup="c1" ForeColor="#CC0000" Font-Bold="True" Font-Size="Small" Font-Italic="True"></asp:RequiredFieldValidator>
                                    </div>
                                </div>
                                <br />
                                <div class="row">
                                    <div class="col-md-2">
                                    </div>

                                    <div class="col-md-3">
                                        <label for="txtCustAddress" style="font-weight:bold">Address:</label>
                                    </div>

                                    <div class="col-md-4">
                                        <asp:TextBox ID="txtCustAddress" runat="server" TextMode="MultiLine" Width="165" />
                                    </div>

                                    <div class="col-md-3">
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidatorCustAddress" InitialValue="" runat="server"
                                            ErrorMessage="Enter your Address" ControlToValidate="txtCustAddress" ValidationGroup="c1"
                                            ForeColor="#CC0000" Font-Size="Small" Font-Bold="True" Font-Italic="True"></asp:RequiredFieldValidator>
                                    </div>
                                </div>
                                <br />
                                <div class="row">
                                    <div class="col-md-2">
                                    </div>

                                    <div class="col-md-3">
                                        <label for="txtCustAge" style="font-weight:bold">Age:</label>
                                    </div>

                                    <div class="col-md-4">
                                        <asp:TextBox ID="txtCustAge" runat="server" TextMode="Number" Width="165" />
                                    </div>

                                    <div class="col-md-3">
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidatorCustAge" runat="server" ErrorMessage="Enter Your Age"
                                            ControlToValidate="txtCustAge" InitialValue="" ValidationGroup="c1" ForeColor="#CC0000" Font-Bold="True" Font-Size="Small" Font-Italic="True" Display="Dynamic"></asp:RequiredFieldValidator>

                                        <asp:RangeValidator runat="server" ErrorMessage="Age must be between 18-60" MaximumValue="60" MinimumValue="18" ID="RangeValidatorCustAge"
                                            Type="Integer" ControlToValidate="txtCustAge" ValidationGroup="c1" ForeColor="#CC0000" Font-Bold="True" Font-Size="Small" Font-Italic="True" Display="Dynamic"></asp:RangeValidator>
                                    </div>
                                </div>
                                <br />
                                <div class="row">
                                    <div class="col-md-2">
                                    </div>

                                    <div class="col-md-3">
                                        <label for="txtCustStatus" style="font-weight:bold">Status:</label>
                                    </div>

                                    <div class="col-md-4">
                                        <asp:TextBox ID="txtCustStatus" runat="server" TextMode="SingleLine" Width="165" />
                                    </div>

                                    <div class="col-md-3">
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidatorCustStat" InitialValue="" runat="server" ErrorMessage="Enter your Status"
                                            ControlToValidate="txtCustStatus" ValidationGroup="c1" Font-Bold="True" ForeColor="#CC0000" Font-Size="Small" Font-Italic="True"></asp:RequiredFieldValidator>
                                    </div>
                                </div>
                                <br />
                                <div class="row">
                                    <div class="col">
                                        <center>
                                        <asp:Button runat="server" ButtonId="BtnAddCust" Text="ADD" onClick="btn_AddClickCustomer" ValidationGroup="c1" class="btn btn-sm btn-primary" BorderColor="#272343" BackColor="#FFFFFF" ForeColor="#213555" />
                                   </center>
                                            </div>
                                </div>
                                <div class="row">
                                    <div class="col">
                                        <center>
                                        <asp:Label ID="lblMsgCust" runat="server" Text="" Font-Bold="True" Font-Italic="True" Font-Size="Medium" ForeColor="#CC0000"></asp:Label>
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
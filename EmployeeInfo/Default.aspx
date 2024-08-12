<%@ Page Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="EmployeeInfo.Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <br />
    <h1 class="display-4" style="font-family: Constantia; color: #394867;">
        <center>
            <b>
                <u style="text-decoration-color: #526D82">ORDERTRAC DATABASE SYSTEM
                </u>
            </b>
        </center>
    </h1>
    <br />
    <h2 class="display-6" style="font-family: Constantia; color: #394867;">
        <center>
            <b>
                <u style="text-decoration-color: #526D82">EMPLOYEE,CUSTOMER AND ORDERS DATABASE</u>
            </b>
        </center>
    </h2>
    <br />
    <br />
    <div class="row">
        <div class="col-md-3 "></div>
        <div class="col-sm-2">
            <div class="card">

                <div class="card-header" style="background-color: #1A132F">
                    <h5 class="card-title" style="text-align: center; color: white">EMPLOYEE DATABASE
                    </h5>
                </div>
                <div class="card-body" style="text-align: center; background-color: #86B6F6">

                    <p class="card-text;lead">
                        Here you can perform operations on Employee Database
                    </p>
                    <asp:Button ID="BtnDefaultEmployee" runat="server" class="btn btn-sm btn-primary" Text="Employee Database"
                        Width="150px" OnClick="BtnDefaultEmployee_Click" />
                    <hr />
                    <h5 class="card-title">Total Employee Count</h5>
                    <p class="card-text"></p>
                    <span class="badge rounded-pill bg-primary">
                        <h6>Count:
                            <asp:Label ID="lblEmpCount" runat="server" Style="text-align: center"></h6>
                        </asp:Label></span>
                    <p class="card-text"></p>
                </div>
            </div>

        </div>
        <div class="col-sm-2">
            <div class="card">
                <div class="card-header" style="background-color: #1A132F">
                    <h5 class="card-title" style="text-align: center; color: white">CUSTOMER DATABASE
                    </h5>
                </div>
                <div class="card-body" style="text-align: center; background-color: #A0E4CB">


                    <p class="card-text">Here you can perform operations on Customer Database</p>
                    <asp:Button ID="BtnDefaultCustomer" runat="server" class="btn btn-sm btn-primary"
                        Text="Customer Database" Width="150px" OnClick="BtnDefaultCustomer_Click" />
                    <hr />
                    <h5 class="card-title">Total Customer Count</h5>
                    <p class="card-text"></p>
                    <span class="badge rounded-pill bg-primary">
                        <h6>Count:
                        <asp:Label ID="lblCustCount" runat="server" Style="text-align: center"></h6>
                        </asp:Label>
                    </span>
                    <p class="card-text"></p>
                </div>
            </div>
        </div>
        <div class="col-sm-2">
            <div class="card">

                <div class="card-header" style="background-color: #1A132F">
                    <h5 class="card-title" style="text-align: center; color: white">ORDERS DATABASE
                    </h5>
                </div>
                <div class="card-body" style="text-align: center; background-color: #FFC97B">
                    <p class="card-text">Here you can perform operations on Orders Database</p>
                    <asp:Button ID="Button1" runat="server" class="btn btn-sm btn-primary"
                        Text="Orders Database" Width="150px" OnClick="BtnDefaultOrders_Click" />
                    <hr />
                    <h5 class="card-title">Total Orders Count</h5>
                    <p class="card-text"></p>
                    <span class="badge rounded-pill bg-primary">
                        <h6>Count:
                        <asp:Label ID="lblOrdersCount" runat="server" Style="text-align: center"></h6>
                        </asp:Label>
                    </span>
                    <p class="card-text"></p>
                </div>
            </div>
        </div>
    </div>
    <br />
    <div class="row align-items-center">
        <div class="col-md-4"></div>


        <div class="col-md-2 ">
            <div class="card">
                <div class="card-header" style="text-align: center; color: white;background-color: #1A132F">
                    <B>EMPLOYEE ORDERS</B>
                </div>
                <div class="card-body" style="text-align: center; background-color: #86B6F6" >
                    <center>
                        Click here for Employee-Wise Orders 
                        <hr />
                        <asp:Button ID="Btn_EmployeeOrders" runat="server" class="btn btn-sm btn-primary" Text="Click Here" OnClick="Btn_EmployeeOrdersClick" />
                    </center>
                </div>
            </div>
        </div>
        <div class="col-md-2 ">
            <div class="card">
                <div class="card-header" style="text-align: center; color: white;background-color: #1A132F">
                  <b>CUSTOMER ORDERS</b> 
                </div>
                <div class="card-body" style="text-align: center; background-color: #A0E4CB">
                    <center>
                        Click here for Customer-Wise Orders
                        <hr />
                        <asp:Button ID="Btn_CustomerOrders" runat="server" class="btn btn-sm btn-primary" Text="Click Here" OnClick="Btn_CustomerOrdersClick" />
                </div>
            </div>
        </div>

        <div class="col-md-4"></div>
    </div>

</asp:Content>

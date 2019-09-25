<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ProfilePage.aspx.cs" Inherits="MySchoolManagementProject.Pages.ProfilePage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<head>
  <title>Dashboard-Profile</title>
  <!-- Bootstrap core CSS -->
  <link href="../Dashboard/lib/bootstrap/css/bootstrap.min.css" rel="stylesheet" />
  <!--external css-->
    <link href="../Dashboard/lib/font-awesome/css/font-awesome.css" rel="stylesheet" />
    <link href="../Dashboard/css/zabuto_calendar.css" rel="stylesheet" />
    <script src="../Dashboard/lib/gritter/js/jquery.gritter.js"></script>
  <!-- Custom styles for this template -->
    <link href="../Dashboard/css/style.css" rel="stylesheet" />
    <link href="../Dashboard/css/style-responsive.css" rel="stylesheet" />
    <script src="../Dashboard/lib/chart-master/Chart.js"></script>

  <!-- =======================================================
    Template Name: Dashio
    Template URL: https://templatemag.com/dashio-bootstrap-admin-template/
    Author: TemplateMag.com
    License: https://templatemag.com/license/
  ======================================================= -->
<style>
        table{
            border:solid 1px;
        }
        td{
        padding-left: 5px;
        text-align:center;
        }
        .modal-sm{
            font-weight:bolder;
        }
        tr{
            width:100%;
            border-bottom:solid 1px;
        }
        th{
            text-align:center;
            font-weight:bold;
            background-color:darkorchid;
            color:aqua;
        }

            #Show table{
        align-self:center;
        margin: 2px auto auto auto;
        }

        #Show table td{
            min-width: 50px;
            border: solid 1px;
            padding-right: 5px;
        }

        #Show table tr{
        }

        #Show table th{
            border:solid 1px;
        }
    </style>
</head>

<body>
  <section id="container">
    <!-- **********************************************************************************************************************************************************
        TOP BAR CONTENT & NOTIFICATIONS
        *********************************************************************************************************************************************************** -->
    <!--header start-->
    <header class="header black-bg">
      <div class="sidebar-toggle-box">
        <div class="fa fa-bars tooltips" data-placement="right" data-original-title="Toggle Navigation"></div>
      </div>
      <!--logo start-->
      <a href="Dashboard.aspx" class="logo"><b>DASH<span>BOARD</span></b></a>
      <!--logo end-->
      
      <div class="top-menu">
        <ul class="nav pull-right top-menu">
          <li><a class="logout" href="../Default.aspx">Logout</a></li>
        </ul>
      </div>
    </header>
    <!--header end-->
    <!-- **********************************************************************************************************************************************************
        MAIN SIDEBAR MENU
        *********************************************************************************************************************************************************** -->
    <!--sidebar start-->
    <aside>
      <div id="sidebar" class="nav-collapse ">
        <!-- sidebar menu start-->
        <ul class="sidebar-menu" id="nav-accordion">
          <li class="mt">
            <a class="active" href="Dashboard.aspx">
              <i class="fa fa-dashboard"></i>
              <span>Dashboard</span>
              </a>
          </li>
          
          <li class="sub-menu">
            <a href="javascript:;">
              <i class="fa fa-tasks"></i>
              <span>Forms</span>
              </a>
            <ul class="sub">
              <li><a href="form_component.html">Form Components</a></li>
              <li><a href="advanced_form_components.html">Advanced Components</a></li>
              <li><a href="form_validation.html">Form Validation</a></li>
              <li><a href="contactform.html">Contact Form</a></li>
            </ul>
          </li>
          <li class="sub-menu">
            <a href="javascript:;">
              <i class="fa fa-th"></i>
              <span>Data Tables</span>
              </a>
            <ul class="sub">
              <li><a href="basic_table.html">Basic Table</a></li>
              <li><a href="responsive_table.html">Responsive Table</a></li>
              <li><a href="advanced_table.html">Advanced Table</a></li>
            </ul>
          </li>
          
          <li class="sub-menu">
            <a href="javascript:;">
              <i class=" fa fa-bar-chart-o"></i>
              <span>Student</span>
              </a>
            <ul class="sub">
              <li><a href="AddStudent.aspx" >Add Student</a></li>
              <li><a href="chartjs.html">Chartjs</a></li>
              <li><a href="flot_chart.html">Flot Charts</a></li>
              <li><a href="xchart.html">xChart</a></li>
            </ul>
          </li>
        </ul>
        <!-- sidebar menu end-->
      </div>
    </aside>
    <!--sidebar end-->
    <!-- **********************************************************************************************************************************************************
        MAIN CONTENT
        *********************************************************************************************************************************************************** -->
    <!--main content start-->
    <section id="main-content">
      <section class="wrapper">
        <div style="height:100px; ">

        </div>

        <form runat="server" style="align-items:center; margin: 2px auto auto auto">

            <div id="Show" style="align-items:center; height: 100%; min-width:900px; padding-bottom: 5px;">
            <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
            </div>

            <div style="margin:auto auto auto auto; text-align:center; height: 170px; width: 170px;">
                <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False">
                    <Columns>
                        <asp:TemplateField HeaderText="Image">
                            <ItemTemplate>
                                <asp:Image ID="Image1" runat="server" Height="200px" Width="200px"
                                    ImageUrl='<%# "data:Image/png;base64,"
                                    + Convert.ToBase64String((byte[])Eval("Picture")) %>' />
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                </asp:GridView>
            </div>
            <br />
            <br />
            <br />
            <div style="margin:auto auto auto auto; text-align:center">

                <br />
                <br />

                <asp:TextBox ID="TextBox1" runat="server" ReadOnly="True" ForeColor="Black" Font-Bold="true" Width="125px" Height="30px" Font-Size="15px"> Student ID : </asp:TextBox>
                <asp:TextBox ID="txtStudentID" runat="server" Width="300px" Height="30px" ReadOnly="true" Font-Size="15px"></asp:TextBox><br />
                <asp:TextBox ID="TextBox2" runat="server" ReadOnly="True" ForeColor="Black" Font-Bold="true" Width="125px" Height="30px" Font-Size="15px"> Name : </asp:TextBox>
                <asp:TextBox ID="txtName" runat="server" Width="300px" Height="30px" ReadOnly="true" Font-Size="15px"></asp:TextBox><br />
                <asp:TextBox ID="TextBox4" runat="server" ReadOnly="True" ForeColor="Black" Font-Bold="true" Width="125px" Height="30px" Font-Size="15px"> Username : </asp:TextBox>
                <asp:TextBox ID="txtEmail" runat="server" Width="300px" Height="30px" ReadOnly="true" Font-Size="15px"></asp:TextBox><br />
                <asp:TextBox ID="TextBox6" runat="server" ReadOnly="True" ForeColor="Black" Font-Bold="true" Width="125px" Height="30px" Font-Size="15px"> Roll No : </asp:TextBox>
                <asp:TextBox ID="txtRollNo" runat="server" Width="300px" Height="30px" ReadOnly="true" Font-Size="15px"></asp:TextBox><br />
                <asp:TextBox ID="TextBox8" runat="server" ReadOnly="True" ForeColor="Black" Font-Bold="true" Width="125px" Height="30px" Font-Size="15px"> Father Name : </asp:TextBox>
                <asp:TextBox ID="txtFatherName" runat="server" Width="300px" Height="30px" ReadOnly="true" Font-Size="15px"></asp:TextBox><br />
                <asp:TextBox ID="TextBox10" runat="server" ReadOnly="True" ForeColor="Black" Font-Bold="true" Width="125px" Height="30px" Font-Size="15px"> Mother Name : </asp:TextBox>
                <asp:TextBox ID="txtMotherName" runat="server" Width="300px" Height="30px" ReadOnly="true" Font-Size="15px"></asp:TextBox><br />
                <asp:TextBox ID="TextBox12" runat="server" ReadOnly="True" ForeColor="Black" Font-Bold="true" Width="125px" Height="30px" Font-Size="15px"> Gender : </asp:TextBox>
                <asp:TextBox ID="txtGender" runat="server" Width="300px" Height="30px" ReadOnly="true" Font-Size="15px"></asp:TextBox><br />
                <asp:TextBox ID="TextBox14" runat="server" ReadOnly="True" ForeColor="Black" Font-Bold="true" Width="125px" Height="30px" Font-Size="15px"> Date of Birth : </asp:TextBox>
                <asp:TextBox ID="txtDateOfBirth" runat="server" Width="300px" Height="30px" ReadOnly="true" Font-Size="15px"></asp:TextBox><br />
                <asp:TextBox ID="TextBox16" runat="server" ReadOnly="True" ForeColor="Black" Font-Bold="true" Width="125px" Height="30px" Font-Size="15px"> Date of Admit : </asp:TextBox>
                <asp:TextBox ID="txtDateOfAdmit" runat="server" Width="300px" Height="30px" ReadOnly="true" Font-Size="15px"></asp:TextBox><br />
                <asp:TextBox ID="TextBox18" runat="server" ReadOnly="True" ForeColor="Black" Font-Bold="true" Width="125px" Height="30px" Font-Size="15px"> Class : </asp:TextBox>
                <asp:TextBox ID="txtClass" runat="server" Width="300px" Height="30px" ReadOnly="true" Font-Size="15px"></asp:TextBox><br />
                <asp:TextBox ID="TextBox20" runat="server" ReadOnly="True" ForeColor="Black" Font-Bold="true" Width="125px" Height="30px" Font-Size="15px"> Address : </asp:TextBox>
                <asp:TextBox ID="txtAddress" runat="server" Width="300px" Height="30px" ReadOnly="true" Font-Size="15px"></asp:TextBox><br />
            </div>

            <br />
            <br />
            <br />
            <br />
            <br />
            <a href="#" onclick="View_Click()">Edit Profile</a>
            <hr />


            <div style="margin:auto auto auto auto; text-align:center; display:none" id="myDIV">
            <h1 style="align-content:center">Edit Your Profile </h1>
                <hr />
                <asp:TextBox ID="TextBox3" runat="server" ReadOnly="True" ForeColor="Black" Font-Bold="true" Width="125px" Height="30px" Font-Size="15px"> Student ID : </asp:TextBox>
                <asp:TextBox ID="txtStuIdEdit" runat="server" Width="300px" Height="30px" Font-Size="15px" ReadOnly="true"></asp:TextBox><br />
                <asp:TextBox ID="TextBox7" runat="server" ReadOnly="True" ForeColor="Black" Font-Bold="true" Width="125px" Height="30px" Font-Size="15px"> Name : </asp:TextBox>
                <asp:TextBox ID="txtNameEdit" runat="server" Width="300px" Height="30px"  Font-Size="15px"></asp:TextBox><br />
                <asp:TextBox ID="TextBox19" runat="server" ReadOnly="True" ForeColor="Black" Font-Bold="true" Width="125px" Height="30px" Font-Size="15px"> Father Name : </asp:TextBox>
                <asp:TextBox ID="txtFatehrNameEdit" runat="server" Width="300px" Height="30px" Font-Size="15px"></asp:TextBox><br />
                <asp:TextBox ID="TextBox22" runat="server" ReadOnly="True" ForeColor="Black" Font-Bold="true" Width="125px" Height="30px" Font-Size="15px"> Mother Name : </asp:TextBox>
                <asp:TextBox ID="txtMotherNameEdit" runat="server" Width="300px" Height="30px" Font-Size="15px"></asp:TextBox><br />
                <asp:TextBox ID="TextBox32" runat="server" ReadOnly="True" ForeColor="Black" Font-Bold="true" Width="125px" Height="30px" Font-Size="15px"> Address : </asp:TextBox>
                <asp:TextBox ID="txtAddressEdit" runat="server" Width="300px" Height="30px" Font-Size="15px"></asp:TextBox><br />
                <br /><br />
                <asp:Button ID="View" Text="Display Data" OnClick="View_Click" runat="server" />
                <asp:Button ID="btnUpdate" runat="server" Text="Update" OnClick="btnUpdate_Click" />
            </div>
        </form>
      </section>
    </section>
    <!--main content end-->
    <!--footer start-->
    <footer class="site-footer">
      <div class="text-center">
        <p>
          &copy; Copyrights <strong>Dashio</strong>. All Rights Reserved
        </p>
        <div class="credits">
          <!--
            You are NOT allowed to delete the credit link to TemplateMag with free version.
            You can delete the credit link only if you bought the pro version.
            Buy the pro version with working PHP/AJAX contact form: https://templatemag.com/dashio-bootstrap-admin-template/
            Licensing information: https://templatemag.com/license/
          -->
          Created with Dashio template by <a href="https://templatemag.com/">TemplateMag</a>
        </div>
        <a href="index.html#" class="go-top">
          <i class="fa fa-angle-up"></i>
          </a>
      </div>
    </footer>
    <!--footer end-->
  </section>
  <!-- js placed at the end of the document so the pages load faster -->
  <script src="../Dashboard/lib/jquery/jquery.min.js"></script>

  <script src="../Dashboard/lib/bootstrap/js/bootstrap.min.js"></script>
  <script class="include" type="text/javascript" src="../Dashboard/lib/jquery.dcjqaccordion.2.7.js"></script>
  <script src="../Dashboard/lib/jquery.scrollTo.min.js"></script>
  <script src="../Dashboard/lib/jquery.nicescroll.js" type="text/javascript"></script>
  <script src="../Dashboard/lib/jquery.sparkline.js"></script>
  <!--common script for all pages-->
  <script src="../Dashboard/lib/common-scripts.js"></script>
  <script type="text/javascript" src="../Dashboard/lib/gritter/js/jquery.gritter.js"></script>
  <script type="text/javascript" src="../Dashboard/lib/gritter-conf.js"></script>
  <!--script for this page-->
  <script src="../Dashboard/lib/sparkline-chart.js"></script>
  <script src="../Dashboard/lib/zabuto_calendar.js"></script>

  <script type="application/javascript">
    $(document).ready(function() {
      $("#date-popover").popover({
        html: true,
        trigger: "manual"
      });
      $("#date-popover").hide();
      $("#date-popover").click(function(e) {
        $(this).hide();
      });

      $("#my-calendar").zabuto_calendar({
        action: function() {
          return myDateFunction(this.id, false);
        },
        action_nav: function() {
          return myNavFunction(this.id);
        },
        ajax: {
          url: "show_data.php?action=1",
          modal: true
        },
        legend: [{
            type: "text",
            label: "Special event",
            badge: "00"
          },
          {
            type: "block",
            label: "Regular event",
          }
        ]
      });
    });

    function myNavFunction(id) {
      $("#date-popover").hide();
      var nav = $("#" + id).data("navigation");
      var to = $("#" + id).data("to");
      console.log('nav ' + nav + ' to: ' + to.month + '/' + to.year);
      }


    function View_Click(){
      var x = document.getElementById("myDIV");
      if (x.style.display === "none") {
        x.style.display = "block";
      } else {
        x.style.display = "none";
      }
    }
  </script>
</body>
</html>

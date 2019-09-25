<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddStudent.aspx.cs" Inherits="MySchoolManagementProject.Pages.AddStudent" %>

<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta name="description" content="">
  <meta name="author" content="Dashboard">
  <meta name="keyword" content="Dashboard, Bootstrap, Admin, Template, Theme, Responsive, Fluid, Retina">
  <title>Dashboard-Add Student</title>

  <!-- Favicons -->
  <link href="../Dashboard/img/favicon.png" rel="icon">
  <link href="../Dashboard/img/apple-touch-icon.png" rel="apple-touch-icon">

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
            <a href="EditStudentInfo.aspx" runat="server" style="font-size:15px; text-decoration:underline; font-weight:bold">Edit Student Info</a>
        </div>

        <form runat="server" style="align-items:center; margin: 2px auto auto auto">
        <div style="align-items:center; height: 100%; width: 501px; margin:inherit; border:solid 3px purple; border-radius: 5px; padding-bottom: 5px;">

            <table class="nav-justified" style="padding-left:5px; border-radius: 2px">
                <tr style="border: none; background-color:blueviolet">
                    <td class="text-center" colspan="2" style="text-decoration: none; text-align:center; color:aqua; font-size: x-large"><strong><em><span>Add Student Information</span></em></strong></td>
                </tr>

                <tr>
                    <td class="modal-sm" style="width: 150px; font-size: medium">Student Name </td>
                    <td style="width: 190px;">
                        <asp:TextBox ID="txtStudentName" runat="server" Width="100%"></asp:TextBox>
                    </td>
                </tr>

               <tr>
                    <td class="modal-sm" style="width: 150px; font-size: medium">Username </td>
                    <td style="width: 190px;">
                        <asp:TextBox ID="txtEmail" runat="server" Width="100%"></asp:TextBox>
                    </td>
                </tr>

               <tr>
                    <td class="modal-sm" style="width: 150px; font-size: medium">Roll Number </td>
                    <td style="width: 190px">
                        <asp:TextBox ID="txtRollNo" runat="server" Width="100%"></asp:TextBox>
                    </td>
                </tr>

                <tr>
                    <td class="modal-sm" style="width: 150px; font-size: medium">Father Name </td>
                    <td style="width: 190px">
                        <asp:TextBox ID="txtFatherName" runat="server" Width="100%"></asp:TextBox>
                    </td>
                </tr>

                <tr>
                    <td class="modal-sm" style="width: 150px; font-size: medium">Mother Name </td>
                    <td style="width: 190px">
                        <asp:TextBox ID="txtMotherName" runat="server" Width="100%"></asp:TextBox>
                    </td>
                </tr>

                <tr>
                    <td class="modal-sm" style="width: 150px; font-size: medium">Gender</td>
                    <td style="width: 190px">
                        <asp:DropDownList ID="ddlGender" runat="server" Height="26px" Width="100%">
                            <asp:ListItem>Male</asp:ListItem>
                            <asp:ListItem>Female</asp:ListItem>
                            <asp:ListItem>Others</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>


                <tr>
                    <td class="modal-sm" style="width: 150px; font-size: medium">Date of Birth </td>
                    <td style="width: 190px">
                        <asp:TextBox ID="txtDateOfBirth" runat="server" Width="100%" TextMode="Date" Height="26px"></asp:TextBox>
                    </td>
                </tr>

               <tr>
                    <td class="modal-sm" style="width: 150px; font-size: medium"> Class </td>
                    <td style="width: 190px">
                        <asp:DropDownList ID="ddlClass" runat="server" Height="26px" Width="100%" DataSourceID="SqlDataSourceClass" DataTextField="ClassName" DataValueField="ClassID">
                    
                        </asp:DropDownList>            
                        <asp:SqlDataSource ID="SqlDataSourceClass" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="SELECT * FROM [Class]"></asp:SqlDataSource>
                    </td>
                </tr>



                <tr>
                    <td class="modal-sm" style="width: 150px; font-size: medium">Address </td>
                    <td style="width: 190px">
                        <asp:TextBox ID="txtAddress" runat="server" Width="100%"></asp:TextBox>
                    </td>
                </tr>
        
                <tr>
                    <td class="modal-sm" style="width: 150px; font-size: medium">Student Picture </td>
                    <td class="modal-sm" style="width: 190px">
                        <asp:FileUpload ID="FileUploadPicture" runat="server" Width="100%" />
                    </td>
                </tr>
                <tr>
                    <td></td>
                    <td style="align-items:flex-end">

                    </td>
                </tr>
            </table>
            <div style="height:20px">

                <asp:Label ID="lblMessage" runat="server" ForeColor="Red"></asp:Label>

            </div>

            <div style="margin-left:250px">
                <span style="align-items:center; color:black; font-weight:bolder"><asp:Button ID="btnReset" runat="server" Text="Reset" Width="112px" BackColor="OrangeRed" OnClick="btnReset_Click"/></span>
                <span style="align-items:center; color:black; font-weight:bolder"><asp:Button ID="btnSave" runat="server" Text="Save" Width="112px" BackColor="ForestGreen" OnClick="btnSave_Click"/></span>
            </div>
        </div>

        <div style=" text-align:center ">
            <br /><hr />
            <label style="font-size:30px">Inserted Student Information</label>
            <hr />
        </div>

            <div>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False">
                <Columns>
                    <asp:BoundField DataField="StudentID" HeaderText="StudentID" />
                    <asp:BoundField DataField="StuName" HeaderText="Name" />
                    <asp:BoundField DataField="StuEmail" HeaderText="Email" />
                    <asp:BoundField DataField="RollNo" HeaderText="RollNo" />
                    <asp:BoundField DataField="FatherName" HeaderText="FatherName" />
                    <asp:BoundField DataField="MotherName" HeaderText="MotherName" />
                    <asp:BoundField DataField="Gender" HeaderText="Gender" />
                    <asp:BoundField DataField="DateOfBirth" HeaderText="DateOfBirth" />
                    <asp:BoundField DataField="DateOfAdmission" HeaderText="DateOfAdmission" />
                    <asp:BoundField DataField="ClassID" HeaderText="ClassID" />
                    <asp:BoundField DataField="Address" HeaderText="Address" />
                    <asp:TemplateField HeaderText="Image">
                        <ItemTemplate>
                            <asp:Image ID="Image1" runat="server" Height="100px" Width="100px"
                                ImageUrl='<%# "data:Image/png;base64,"
                                + Convert.ToBase64String((byte[])Eval("Picture")) %>' />
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
            </asp:GridView>
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
  </script>
</body>

</html>


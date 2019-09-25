<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="StudentControl.ascx.cs" Inherits="MySchoolManagementProject.UserControls.StudentControl" %>

<style>
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
    table{
        border: solid 1px;
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


<div style="height:100px; ">

</div>
<form runat="server">
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


<div id="Show" style="align-items:center; height: 100%; min-width:900px; padding-bottom: 5px;">

    <asp:Label ID="Label1" runat="server" Text=""></asp:Label>

</div>
</form>





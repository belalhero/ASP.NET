<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="NoticeDisplay.aspx.cs" Inherits="MySchoolManagementProject.Pages.NoticeDisplay" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div>
        <h3>Notice Board</h3>
        <hr />
    </div>
    <div style="align-content:center; margin-left: 200px">
        <div style="align-items:center; height: 100%; width: 100%; margin: 2px auto auto auto;  padding-bottom: 5px;">
            <br /><br />
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CssClass="grid">
                <Columns>
                    <asp:BoundField DataField="PostDate" HeaderText="Posted On" />
                    <asp:BoundField DataField="NoticeTitle" HeaderText="Title" />
                    <asp:TemplateField HeaderText="Notice">
                        <ItemTemplate>
                            <asp:Image ID="Image1" runat="server" Height="800px" Width="500px"
                                ImageUrl='<%# "data:Image/png;base64,"
                                + Convert.ToBase64String((byte[])Eval("NoticeImage")) %>' />
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
            </asp:GridView>
        </div>
    </div>
</asp:Content>

﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AccessGroupsEdit.aspx.cs" Inherits="Aplikacja_1._0._2.AccessGroupsEdit" EnableEventValidation="false" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <br>
    <br>
    <div style="margin-left:auto; margin-right:auto; width:90%;">
        <div class="row">
                <div class="col-md-9" style="text-align:center">
                    <div style="margin-left:auto; margin-right:auto; width:100%; color:white; background-color:#373636cd">
        <table style="width: 100%; text-align:center">
            <tr style="padding: 20px 20px 20px 20px;">
                <td><asp:Label ID="Label1" runat="server" Text="System: "/></td>
                <td><asp:Label ID="Label2" runat="server" Text="Authentication Group Name: " /></td>
                <td><asp:Label ID="Label3" runat="server" Text="Group Name: " /></td>
                <td><asp:Label ID="Label4" runat="server" Text="Descriotion: " /></td>
                <td><asp:Label ID="Label5" runat="server" Text="System Group Name: " /></td>
                <td><asp:Label ID="Label6" runat="server" Text="Plant: " /></td>
                <td><asp:Button ID="Button1" runat="server" Text="Search" ForeColor="Black" OnClick="Button1_Click" /></td>
            </tr>
            <tr>
                <td><asp:DropDownList ID="DropDownList1" runat="server" ForeColor="Black" /></td>
                <td><asp:DropDownList ID="DropDownList2" runat="server" ForeColor="Black" /></td>
                <td><asp:TextBox ID="TextBox1" runat="server" ForeColor="Black" /></td>
                <td><asp:TextBox ID="TextBox2" runat="server" ForeColor="Black" /></td>
                <td><asp:TextBox ID="TextBox3" runat="server" ForeColor="Black" /></td>
                <td><asp:DropDownList ID="DropDownList3" runat="server" ForeColor="Black" /></td>
                <td>
                <input id="Button2" type="button" value="Clear" style="color:black" onclick="btClear()" /></td>
            </tr>
        </table>
    </div>

                    <br>

    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
            <div style="margin-left:auto; margin-right:auto; width:100%;">
            <asp:GridView runat="server" ID="GridView2" Width="100%" HeaderStyle-BackColor="#003399" HeaderStyle-BorderColor="#003300" HeaderStyle-ForeColor="White" CssClass="table table-condensed table-hover" AllowPaging="True" PageSize="20" OnPageIndexChanging="GridView2_OnPageIndexChanging" OnRowDataBound="GridView2_RowDataBound" OnSelectedIndexChanged="GridView2_SelectedIndexChanged" >
            <PagerStyle CssClass="pagination-ys" BackColor="#003399" BorderColor="White" ForeColor="Black" />
            </asp:GridView>
            </div>
        </ContentTemplate>
        <Triggers>
            <asp:AsyncPostBackTrigger ControlID="Button1" EventName ="click" />
            <asp:AsyncPostBackTrigger ControlID="GridView2" EventName="PageIndexChanged" />
            <asp:AsyncPostBackTrigger ControlID="Button3" EventName ="click" />
            <asp:AsyncPostBackTrigger ControlID="Button4" EventName ="click" />
        </Triggers>
    </asp:UpdatePanel>


 

                </div>
                <div class="col-md-3" style="text-align:center; background-color:rgb(128, 128, 128, 0.7); color:white">
                    <asp:UpdatePanel ID="UpdatePanel2" runat="server">
                    <ContentTemplate>   
                    <table style="width: 100%;">
                        <asp:HiddenField ID="HiddenGroupID" runat="server" />
                    <tr>
                        <td><asp:Label ID="Label7" runat="server" Text="System: " /></td><td><asp:DropDownList ID="DropDownList4" runat="server" ForeColor="Black" /></td>
                    </tr>
                    <tr>
                        <td><asp:Label ID="Label8" runat="server" Text="Group Name: " /></td><td><asp:TextBox ID="TextBox4" runat="server" ForeColor="Black" /></td>
                    </tr>
                    <tr>
                        <td><asp:Label ID="Label9" runat="server" Text="Descriotion: " /></td><td><asp:TextBox ID="TextBox5" runat="server" ForeColor="Black" /></td>
                    </tr>
                    <tr>
                        <td><asp:Label ID="Label10" runat="server" Text="System Group Name: " /></td><td><asp:TextBox ID="TextBox6" runat="server" ForeColor="Black" /></td>
                    </tr>
                    <tr>
                        <td><asp:Label ID="Label11" runat="server" Text="Active: " /></td><td><asp:CheckBox ID="CheckBox1" runat="server" Checked="True" /></td>
                    </tr>
                    </table>
                    </ContentTemplate>
                    <Triggers>
                    <asp:AsyncPostBackTrigger ControlID="Button3" EventName ="click" />
                    <asp:AsyncPostBackTrigger ControlID="Button4" EventName ="click" />
                    <asp:AsyncPostBackTrigger ControlID="GridView2" EventName="PageIndexChanged" />
                        <asp:AsyncPostBackTrigger ControlID="GridView2" EventName="RowDataBound" />
                        <asp:AsyncPostBackTrigger ControlID="GridView2" EventName="SelectedIndexChanged" />
                    </Triggers>
                    </asp:UpdatePanel>

                    <asp:Button ID="Button3" runat="server" Text="Add Access Group" ForeColor="Black" OnClientClick="return confirm('Are you sure you want to add?')" OnClick="Button3_Click" />
                    <asp:Button ID="Button4" runat="server" Text="Save changes" ForeColor="Black" OnClientClick="return confirm('Are you sure you want to edit?')" OnClick="Button4_Click" />
                </div>
        </div>
   </div>


    <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>
    <script type="text/javascript">
        function btClear() {
            var System = document.getElementById('<%= DropDownList1.ClientID %>');
            var AuthecticationGrName = document.getElementById('<%= DropDownList2.ClientID %>');
            var GroupName = document.getElementById('<%= TextBox1.ClientID %>');
            var Description = document.getElementById('<%= TextBox2.ClientID %>');
            var SystemGroupName = document.getElementById('<%= TextBox3.ClientID %>');
            var Plant = document.getElementById('<%= DropDownList3.ClientID %>');
            System.value = "";
            AuthecticationGrName.value = "";
            Plant.value = "";
            GroupName.value = "";
            Description.value = "";
            SystemGroupName.value = "";
        }

        function showAlert(text) {
            alert(text);
        }


    </script> 


</asp:Content>
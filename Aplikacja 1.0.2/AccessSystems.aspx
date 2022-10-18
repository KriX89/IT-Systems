﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AccessSystems.aspx.cs" Inherits="Aplikacja_1._0._2.AccessSystems" EnableEventValidation="false" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <br>
    <br>
    <div style="margin-left:auto; margin-right:auto; width:60%;">
        <div class="row">
               <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                <ContentTemplate>
                <div class="col-md-8" style="text-align:center">


                    <asp:GridView runat="server" ID="GridView2" HeaderStyle-BackColor="#003399" HeaderStyle-BorderColor="#003300" HeaderStyle-ForeColor="White" CssClass="table table-condensed table-hover" OnRowDataBound="GridView2_RowDataBound" OnSelectedIndexChanged="GridView2_SelectedIndexChanged" >
                    </asp:GridView>


 

                    </div>
                    <div class="col-md-4" style="text-align:center; background-color:rgb(128, 128, 128, 0.7); color:white">
                    <asp:HiddenField id="HiddenTextBox" runat="server" />
                    <table style="width: 100%;">
                    <tr>
                        <td><asp:Label ID="Label1" runat="server" Text="NetID: " /></td><td><asp:TextBox ID="TextBox1" runat="server" ForeColor="Black" /></td>
                    </tr>
                    <tr>
                        <td><asp:Label ID="Label2" runat="server" Text="System: " /></td><td><asp:DropDownList ID="DropDownList1" runat="server" ForeColor="Black"/></td>
                    </tr>
                    <tr>
                        <td><asp:Label ID="Label3" runat="server" Text="Access level: " /></td><td><asp:DropDownList ID="DropDownList2" runat="server" ForeColor="Black"/></td>
                    </tr>
                    </table>

                    <asp:Button ID="Button1" runat="server" Text="Add Access" ForeColor="Black" OnClientClick="return confirm('Are you sure you want to add?')" OnClick="Button1_Click" />
                    <asp:Button ID="Button2" runat="server" Text="Save changes" ForeColor="Black" OnClientClick="return confirm('Are you sure you want to edit?')" OnClick="Button2_Click" />
                    </div>
                                </ContentTemplate>
                    <Triggers>
                    <asp:AsyncPostBackTrigger ControlID="Button1" EventName ="click" />
                    <asp:AsyncPostBackTrigger ControlID="Button2" EventName ="click" />
                    <asp:AsyncPostBackTrigger ControlID="GridView2" EventName="RowDataBound" />
                    <asp:AsyncPostBackTrigger ControlID="GridView2" EventName="SelectedIndexChanged" />
                    </Triggers>
                    </asp:UpdatePanel>
        </div>
   </div>



    <script type="text/javascript">

        function showAlert(text) {
            alert(text);
        }


    </script> 
</asp:Content>

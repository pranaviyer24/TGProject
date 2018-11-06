<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="AcceptRequests.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="Data Source=(localdb)\mssqllocaldb;Initial Catalog=TGdatabase;Integrated Security=True" DeleteCommandType="StoredProcedure" ProviderName="System.Data.SqlClient" SelectCommand="SELECT RequestId,StudentName,StudentId,FacultyName,FacultyId from Request"></asp:SqlDataSource>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateSelectButton="True" DataSourceID="SqlDataSource1" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
    </asp:GridView>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="AcceptButton" runat="server" OnClick="AcceptSelected" Text="Accept Selected" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="DeclineButton" runat="server" OnClick= "DeclineSelected" Text="Decline Selected" />
&nbsp; 
</asp:Content>


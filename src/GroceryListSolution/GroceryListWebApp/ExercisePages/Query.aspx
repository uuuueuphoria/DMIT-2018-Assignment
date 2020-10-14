<%@ Page Title="Grocery List Query Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Query.aspx.cs" Inherits="GroceryListWebApp.ExercisePages.Query" %>

<%@ Register Src="~/UserControls/MessageUserControl.ascx" TagPrefix="uc1" TagName="MessageUserControl" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h1>Query: ODS</h1>
    <br />
    <div class="row">
        <uc1:messageusercontrol runat="server" id="MessageUserControl" />
    </div>
    <div class="row">
        <asp:Label ID="Label1" runat="server" Text="Select a Category"></asp:Label> &nbsp; &nbsp;
    <asp:DropDownList ID="CategoryList" runat="server" DataSourceID="CategoryListODS" DataTextField="Description" DataValueField="CategoryID" AppendDataBoundItems="true"><asp:ListItem Value="0" Text="Select a category"></asp:ListItem></asp:DropDownList> &nbsp;&nbsp;
    <asp:LinkButton ID="LinkButton1" runat="server">Fetch</asp:LinkButton>

    </div>
    <br />
    <div class="row">
        <asp:Label ID="MessageLabel" runat="server"></asp:Label>
    </div>
    <br /><br />
    <div class="row">
        <asp:GridView ID="CategoryProductList" runat="server" CssClass="table" GridLines="Horizontal" BorderStyle="None" AutoGenerateColumns="false" AllowPaging="True" DataSourceID="ProductListODS">

            <Columns>
                <asp:BoundField DataField="ProductID" HeaderText="ID" SortExpression="ProductID"></asp:BoundField>
                <asp:BoundField DataField="Description" HeaderText="Description" SortExpression="Description"></asp:BoundField>
                <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" DataFormatString="{0:0.00}" ></asp:BoundField>
                <asp:BoundField DataField="Discount" HeaderText="Disc" SortExpression="Discount" DataFormatString="{0:0.00}"></asp:BoundField>
                <asp:BoundField DataField="UnitSize" HeaderText="Unit Size" SortExpression="UnitSize"></asp:BoundField>
                <asp:BoundField DataField="CategoryID" HeaderText="CategoryID" SortExpression="CategoryID" Visible="False" ></asp:BoundField>
                <asp:CheckBoxField DataField="Taxable" HeaderText="Taxable" SortExpression="Taxable" >
                    <ItemStyle HorizontalAlign="Center">
                    </ItemStyle>
                </asp:CheckBoxField>
            </Columns>
        </asp:GridView>
    </div>
    <asp:ObjectDataSource ID="ProductListODS" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="Product_FindbyCategory" TypeName="GroceryListSystem.BLL.ProductController" >
        <SelectParameters>
            <asp:ControlParameter ControlID="CategoryList" PropertyName="SelectedValue" DefaultValue="0" Name="categoryId" Type="Int32"></asp:ControlParameter>

        </SelectParameters>
    </asp:ObjectDataSource>
    <asp:ObjectDataSource ID="CategoryListODS" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="Category_List" TypeName="GroceryListSystem.BLL.CategoryController" OnSelected="SelectCheckForException">

    </asp:ObjectDataSource>
</asp:Content>

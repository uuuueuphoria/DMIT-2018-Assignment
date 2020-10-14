<%@ Page Title="Grocery List CRUD Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="CRUD.aspx.cs" Inherits="GroceryListWebApp.ExercisePages.CRUD" %>

<%@ Register Src="~/UserControls/MessageUserControl.ascx" TagPrefix="uc1" TagName="MessageUserControl" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h1>CRUD: ODS</h1>
    <br />
    <div class="row">
        <uc1:MessageUserControl runat="server" ID="MessageUserControl" />
    </div>
    <br />
    <br />
    <div class="row">
       <%-- <div class="offset-1">--%>
            <asp:ListView ID="ProductList" runat="server" DataSourceID="ProductCRUDODS" InsertItemPosition="LastItem" DataKeyNames="ProductID">
                <AlternatingItemTemplate>
                    <tr style="background-color: #FFFFFF; color: #284775;">
                        <td>
                            <asp:Button runat="server" CommandName="Delete" Text="Delete" ID="DeleteButton" OnClientClick="return confirm('Are you sure you wish to remove')"/>
                            <asp:Button runat="server" CommandName="Edit" Text="Edit" ID="EditButton" />
                        </td>
                        <td>
                            <asp:Label Text='<%# Eval("ProductID") %>' runat="server" ID="ProductIDLabel" width="30px"/></td>
                        <td>
                            <asp:Label Text='<%# Eval("Description") %>' runat="server" ID="DescriptionLabel" /></td>
                        <td>
                            <asp:Label Text='<%# Eval("Price", "{0:0.00}") %>' runat="server"  ID="PriceLabel" width="70px" /></td>
                        <td>
                            <asp:Label Text='<%# Eval("Discount", "{0:0.00}") %>' runat="server"  ID="DiscountLabel" width="70px"/></td>
                        <td>
                            <asp:Label Text='<%# Eval("UnitSize") %>' runat="server" ID="UnitSizeLabel" /></td>
                        <td>
                            <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="CategoryODS" DataTextField="Description" DataValueField="CategoryID" Enabled="false" selectedValue='<%# Eval("CategoryID") %>'></asp:DropDownList>
                            <%--<asp:Label Text='<%# Eval("CategoryID") %>' runat="server" ID="CategoryIDLabel" />--%>

                        </td>
                        <td>
                            <asp:CheckBox Checked='<%# Eval("Taxable") %>' runat="server" ID="TaxableCheckBox" Enabled="false" /></td>
                    </tr>
                </AlternatingItemTemplate>
                <EditItemTemplate>
                    <tr style="background-color: #999999;">
                        <td>
                            <asp:Button runat="server" CommandName="Update" Text="Update" ID="UpdateButton" />
                            <asp:Button runat="server" CommandName="Cancel" Text="Cancel" ID="CancelButton" />
                        </td>
                        <td>
                            <asp:TextBox Text='<%# Bind("ProductID") %>' runat="server" ID="ProductIDTextBox" width="30px"/></td>
                        <td>
                            <asp:TextBox Text='<%# Bind("Description") %>' runat="server" ID="DescriptionTextBox" /></td>
                        <td>
                            <asp:TextBox Text='<%# Bind("Price", "{0:0.00}") %>' runat="server" ID="PriceTextBox" width="70px"/></td>
                        <td>
                            <asp:TextBox Text='<%# Bind("Discount", "{0:0.00}") %>' runat="server"  ID="DiscountTextBox" width="70px"/></td>
                        <td>
                            <asp:TextBox Text='<%# Bind("UnitSize") %>' runat="server" ID="UnitSizeTextBox" /></td>
                        <td>
                            <%--<asp:TextBox Text='<%# Bind("CategoryID") %>' runat="server" ID="CategoryIDTextBox" />--%>
                             <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="CategoryODS" DataTextField="Description" DataValueField="CategoryID" selectedValue='<%# Bind("CategoryID") %>'></asp:DropDownList>
                        </td>
                        <td>
                            <asp:CheckBox Checked='<%# Bind("Taxable") %>' runat="server" ID="TaxableCheckBox" /></td>
                    </tr>
                </EditItemTemplate>
                <EmptyDataTemplate>
                    <table runat="server" style="background-color: #FFFFFF; border-collapse: collapse; border-color: #999999; border-style: none; border-width: 1px;">
                        <tr>
                            <td>No data was returned.</td>
                        </tr>
                    </table>
                </EmptyDataTemplate>
                <InsertItemTemplate>
                    <tr style="">
                        <td>
                            <asp:Button runat="server" CommandName="Insert" Text="Insert" ID="InsertButton" />
                            <asp:Button runat="server" CommandName="Cancel" Text="Clear" ID="CancelButton" />
                        </td>
                        <td>
                            <asp:TextBox Text='<%# Bind("ProductID") %>' runat="server" ID="ProductIDTextBox" width="30px"/></td>
                        <td>
                            <asp:TextBox Text='<%# Bind("Description") %>' runat="server" ID="DescriptionTextBox" /></td>
                        <td>
                            <asp:TextBox Text='<%# Bind("Price") %>' runat="server" ID="PriceTextBox" width="70px"/></td>
                        <td>
                            <asp:TextBox Text='<%# Bind("Discount") %>' runat="server" ID="DiscountTextBox" width="70px"/></td>
                        <td>
                            <asp:TextBox Text='<%# Bind("UnitSize") %>' runat="server" ID="UnitSizeTextBox" /></td>
                        <td>
                            <%--<asp:TextBox Text='<%# Bind("CategoryID") %>' runat="server" ID="CategoryIDTextBox" />--%>
                             <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="CategoryODS" DataTextField="Description" DataValueField="CategoryID" selectedValue='<%# Bind("CategoryID") %>'></asp:DropDownList>
                        </td>
                        <td>
                            <asp:CheckBox Checked='<%# Bind("Taxable") %>' runat="server" ID="TaxableCheckBox" /></td>
                    </tr>
                </InsertItemTemplate>
                <ItemTemplate>
                    <tr style="background-color: #E0FFFF; color: #333333;">
                        <td>
                            <asp:Button runat="server" CommandName="Delete" Text="Delete" ID="DeleteButton" OnClientClick="return confirm('Are you sure you wish to remove')"/>
                            <asp:Button runat="server" CommandName="Edit" Text="Edit" ID="EditButton" />
                        </td>
                        <td>
                            <asp:Label Text='<%# Eval("ProductID") %>' runat="server" ID="ProductIDLabel" width="30px"/></td>
                        <td>
                            <asp:Label Text='<%# Eval("Description") %>' runat="server" ID="DescriptionLabel" /></td>
                        <td>
                            <asp:Label Text='<%# Eval("Price", "{0:0.00}") %>' runat="server" ID="PriceLabel" width="70px"/></td>
                        <td>
                            <asp:Label Text='<%# Eval("Discount", "{0:0.00}") %>' runat="server" ID="DiscountLabel" width="70px"/></td>
                        <td>
                            <asp:Label Text='<%# Eval("UnitSize") %>' runat="server" ID="UnitSizeLabel" /></td>
                        <td>
                            <%--<asp:Label Text='<%# Eval("CategoryID") %>' runat="server" ID="CategoryIDLabel" />--%>
                             <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="CategoryODS" DataTextField="Description" DataValueField="CategoryID" Enabled="false" selectedValue='<%# Eval("CategoryID") %>'></asp:DropDownList>
                        </td>
                        <td>
                            <asp:CheckBox Checked='<%# Eval("Taxable") %>' runat="server" ID="TaxableCheckBox" Enabled="false" /></td>
                    </tr>
                </ItemTemplate>
                <LayoutTemplate>
                    <table runat="server">
                        <tr runat="server">
                            <td runat="server">
                                <table runat="server" id="itemPlaceholderContainer" style="background-color: #FFFFFF; border-collapse: collapse; border-color: #999999; border-style: none; border-width: 1px; font-family: Verdana, Arial, Helvetica, sans-serif;" border="1">
                                    <tr runat="server" style="background-color: #E0FFFF; color: #333333;">
                                        <th runat="server"></th>
                                        <th runat="server">ID</th>
                                        <th runat="server">Description</th>
                                        <th runat="server">Price</th>
                                        <th runat="server">Discount</th>
                                        <th runat="server">UnitSize</th>
                                        <th runat="server">Category</th>
                                        <th runat="server">Taxable</th>
                                    </tr>
                                    <tr runat="server" id="itemPlaceholder"></tr>
                                </table>
                            </td>
                        </tr>
                        <tr runat="server">
                            <td runat="server" style="text-align: center; background-color: #5D7B9D; font-family: Verdana, Arial, Helvetica, sans-serif; color: #FFFFFF">
                                <asp:DataPager runat="server" ID="DataPager1">
                                    <Fields>
                                        <asp:NextPreviousPagerField ButtonType="Button" ShowFirstPageButton="True" ShowNextPageButton="False" ShowPreviousPageButton="False"></asp:NextPreviousPagerField>
                                        <asp:NumericPagerField></asp:NumericPagerField>
                                        <asp:NextPreviousPagerField ButtonType="Button" ShowLastPageButton="True" ShowNextPageButton="False" ShowPreviousPageButton="False"></asp:NextPreviousPagerField>
                                    </Fields>
                                </asp:DataPager>
                            </td>
                        </tr>
                    </table>
                </LayoutTemplate>
                <SelectedItemTemplate>
                    <tr style="background-color: #E2DED6; font-weight: bold; color: #333333;">
                        <td>
                            <asp:Button runat="server" CommandName="Delete" Text="Delete" ID="DeleteButton" OnClientClick="return confirm('Are you sure you wish to remove')"/>
                            <asp:Button runat="server" CommandName="Edit" Text="Edit" ID="EditButton" />
                        </td>
                        <td>
                            <asp:Label Text='<%# Eval("ProductID") %>' runat="server" ID="ProductIDLabel" /></td>
                        <td>
                            <asp:Label Text='<%# Eval("Description") %>' runat="server" ID="DescriptionLabel" /></td>
                        <td>
                            <asp:Label Text='<%# Eval("Price") %>' runat="server" ID="PriceLabel" /></td>
                        <td>
                            <asp:Label Text='<%# Eval("Discount") %>' runat="server" ID="DiscountLabel" /></td>
                        <td>
                            <asp:Label Text='<%# Eval("UnitSize") %>' runat="server" ID="UnitSizeLabel" /></td>
                        <td>
                            <asp:Label Text='<%# Eval("CategoryID") %>' runat="server" ID="CategoryIDLabel" /></td>
                        <td>
                            <asp:CheckBox Checked='<%# Eval("Taxable") %>' runat="server" ID="TaxableCheckBox" Enabled="false" /></td>
                    </tr>
                </SelectedItemTemplate>
            </asp:ListView>
        </div>
    <%--</div>--%>
    <asp:ObjectDataSource ID="ProductCRUDODS" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="Product_List" TypeName="GroceryListSystem.BLL.ProductController" DataObjectTypeName="GroceryListSystem.ViewModels.ProductList" DeleteMethod="Product_Delete" InsertMethod="Product_Add" UpdateMethod="Product_Update" OnDeleted="DeleteCheckForException" OnInserted="InsertCheckForException" OnSelected="SelectCheckForException" OnUpdated="UpdateCheckForException">
    </asp:ObjectDataSource>
    <asp:ObjectDataSource ID="CategoryODS" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="Category_List" TypeName="GroceryListSystem.BLL.CategoryController" OnSelected="SelectCheckForException">

    </asp:ObjectDataSource>
</asp:Content>

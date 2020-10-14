using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

#region additional namespaces
using GroceryListSystem.BLL;
using GroceryListSystem.ViewModels;
#endregion
namespace GroceryListWebApp.ExercisePages
{
    public partial class Query : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
                
            MessageLabel.Text = "";
        if (Page.IsPostBack)
        {
                if (CategoryList.SelectedIndex == 0)
                {
                    MessageLabel.Text = "Select a category to view";
                }
            }
    }

        //protected void BindCategoryList()
        //{
        //    CategoryController sysmgr = new CategoryController();
        //    List<SelectionList> info = sysmgr.DisplayCategory_List();
        //    CategoryList.DataSource = info;
        //    CategoryList.DataTextField = nameof(SelectionList.DisplayText);
        //    CategoryList.DataValueField = nameof(SelectionList.ValueId);
        //    CategoryList.DataBind();

        //    ListItem prompt = new ListItem();
        //    prompt.Value = "0";
        //    prompt.Text = "Select a category";
        //    CategoryList.Items.Insert(0, prompt);
        //}

        #region error handling
        protected void SelectCheckForException(object sender,
                                       ObjectDataSourceStatusEventArgs e)
        {
            MessageUserControl.HandleDataBoundException(e);
        }

        #endregion
    }
}
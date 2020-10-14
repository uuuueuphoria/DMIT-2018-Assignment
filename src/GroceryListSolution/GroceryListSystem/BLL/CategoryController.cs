using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
#region additional namespaces
using GroceryListSystem.DAL;
using GroceryListSystem.Entities;
using System.ComponentModel;
using GroceryListSystem.ViewModels;
using System.IO.Pipes;
#endregion
namespace GroceryListSystem.BLL
{
    [DataObject]
    public class CategoryController
    {

        [DataObjectMethod(DataObjectMethodType.Select, false)]
        public List<CategoryList> Category_List()
        {
            using (var context = new GroceryListContext())
            {
                var results = from x in context.Categories
                              select new CategoryList
                              {
                                  CategoryID = x.CategoryID,
                                  Description = x.Description
                              };
                return results.OrderBy(x=>x.Description).ToList();
            }
        }
        //public List<SelectionList> DisplayCategory_List()
        //{
        //    using (var context = new GroceryListContext())
        //    {
        //        var results = from x in context.Categories
        //                      select new SelectionList
        //                      {
        //                          ValueId = x.CategoryID,
        //                          DisplayText = x.Description
        //                      };
        //        return results.OrderBy(x => x.DisplayText).ToList();
        //    }
        //}
        public CategoryDescription Category_GetByPK(int categoryId)
        {
            using (var context = new GroceryListContext())
            {
                var results = (from x in context.Categories
                               where x.CategoryID == categoryId
                               select new CategoryDescription
                               {
                                   Description = x.Description
                               }).FirstOrDefault();
                return results;
            }
        }
    }
}

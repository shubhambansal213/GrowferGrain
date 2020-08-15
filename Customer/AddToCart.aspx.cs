using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;


public partial class Customer_AddToCart : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        bindgrid();
    }
    public void bindgrid()
    {
        string k = Session["U_Id"].ToString();

        Class1.connection();

        string t = "Not-Paid";
        string q = "select C.*,V.*,P.* from Cart C,Vendor V,Product P where C.V_Id=V.V_Id and C.Pr_Id=P.Pr_Id and  C.U_Id =" + k + " and C.status='" + t + "'";

        DataSet ds = Class1.filldata(q);
        //Session["r"] = ds.Tables[0].Rows.Count;

        GridView1.EmptyDataText = "Your Cart Is Empty";
        GridView1.DataSource = ds;
        GridView1.DataBind();

        
    }
    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName.Equals("abc"))
        {
            string id = e.CommandArgument.ToString();

            string q = "delete from Cart where C_Id=" + id.ToString();

            if (Class1.execute(q))
            {
                bindgrid();
                Response.AddHeader("Refresh", "0");
            }
        }
    }
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
public partial class Customer_yourorders : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if(!IsPostBack)
        {
            bindgrid();
        }
    }
    public void bindgrid()
    {
        Class1.connection();
        string q = "select C.*,P.* from Cart C,product P where C.Pr_Id=P.Pr_Id and C.status='Paid' And C.U_Id=" + Convert.ToInt32(Session["U_Id"]);
        //string q = "select P.Pr_Id,C.CAT_Id,P.CAT_Id,C.CAT_Name,P.Pr_Name,P.Pr_Pic,Pr_Rdate,Pr_Qty,Pr_Price from product P,categories C where C.CAT_Id=P.CAT_Id And venderid=" + Convert.ToInt32(Session["vid"]);
        DataSet ds = Class1.filldata(q);
        GridView1.EmptyDataText = "Data Not Fetch";
        GridView1.DataSource = ds;
        GridView1.DataBind();
        //Label1.Text = q;
    }

    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {

    }
}
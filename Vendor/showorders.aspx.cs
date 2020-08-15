using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Vendor_showorders : System.Web.UI.Page
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
        // string sname= "select * from Boutique where BQ_Id="+Convert.ToInt32(Session["vid"]);
        //ataSet dssname = Class1.filldata(sname);
        //string shname = dssname.Tables[0].Rows[0][2].ToString();
        string q = "select P.*,C.*,PR.* from payment P,Cart C,Product PR where P.C_Id=C.C_Id and C.Pr_Id=PR.Pr_Id and C.V_Id=" + Convert.ToInt32(Session["V_Id"]);
        //string q = "select P.Pr_Id,C.CAT_Id,P.CAT_Id,C.CAT_Name,P.Pr_Name,P.Pr_Pic,Pr_Rdate,Pr_Qty,Pr_Price from product P,categories C where C.CAT_Id=P.CAT_Id And venderid=" + Convert.ToInt32(Session["vid"]);
        DataSet ds = Class1.filldata(q);
        GridView1.EmptyDataText = "Data Not Fetch";
        GridView1.DataSource = ds;
        GridView1.DataBind();
        //Label1.Text = q;
    }
}
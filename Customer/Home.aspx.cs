using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Customer_Home : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if(!IsPostBack)
        {
            binddrop();
        }
        
    }
    public void binddrop()
    {

        //int vid = Convert.ToInt32(Session["V_Id"]);
        Class1.connection();

        string q = "select * from Vendor";
        DataSet ds = Class1.filldata(q);
        // Session["catid"] = ds.Tables[0].Rows[0][1];
        DropDownList4.DataSource = ds;
        DropDownList4.DataValueField = "V_Id";
        DropDownList4.DataTextField = "V_Name";
        DropDownList4.DataBind();

        DropDownList4.Items.Insert(0, "--Shop--");
    }

    protected void DropDownList4_SelectedIndexChanged(object sender, EventArgs e)
    {
        Class1.connection();
        string q1 = "select P.*,S.* from Product P,Stock S where P.Pr_Id = S.Pr_Id And P.V_Id = " + DropDownList4.SelectedValue.ToString();
        //string q1 = "select S.*,P.* from stock S,product P where ST_Price>300 and ST_Price<1001 and S.Pr_Id=P.Pr_Id";
        //DataSet ds = Class1.filldata(q);
        //string prid = ds.Tables[0].Rows[0][2].ToString();
        //string q1 = "select * from product where Pr_Id=" + prid;
        DataSet ds1 = Class1.filldata(q1);
        DataList1.DataSource = ds1;
        DataList1.DataBind();
    }
}
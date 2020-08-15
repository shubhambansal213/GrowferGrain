using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Vendor_EditStock : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            binddrop();
            string id = Request.QueryString["k"];
            HiddenField1.Value = id.ToString();
            Class1.connection();

            string q = "select * from stock where ST_Id= " + id.ToString();

            DataSet ds = Class1.filldata(q);

            DropDownList1.Text = ds.Tables[0].Rows[0][1].ToString();
            TextBox1.Text = ds.Tables[0].Rows[0][3].ToString();
            TextBox2.Text = ds.Tables[0].Rows[0][4].ToString();

        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Class1.connection();

        string v1 = DropDownList1.SelectedValue.ToString();
        string v2 = TextBox1.Text;
        string v3 = TextBox2.Text;
        int n = (Convert.ToInt32(v2) * Convert.ToInt32(v3));
        string v4 = n.ToString();
        string q = "update stock set Pr_Id='" + v1 + "',ST_Qty='" + v2 + "',ST_Price='" + v3 + "',Total_Amount='" + v4 + "' where ST_Id=" + HiddenField1.Value;

        if (Class1.execute(q))
        {
            Response.Redirect("AddStock.aspx");
        }
        else
        {
            Label1.Text = "Data Not Updated";
        }
    }
    public void binddrop()
    {
        Class1.connection();
        string q = "select * from product where V_Id=" + Session["V_Id"];

        DataSet ds = Class1.filldata(q);

        DropDownList1.DataSource = ds;
        DropDownList1.DataValueField = "Pr_Id";
        DropDownList1.DataTextField = "Pr_Name";
        DropDownList1.DataBind();

        DropDownList1.Items.Insert(0, "--Select--");
    }
}
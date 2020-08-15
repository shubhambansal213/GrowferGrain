using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Vendor_AddProduct : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            binddrop();
            bindgrid();
        }
    }
    public void binddrop()
    {

        int vid = Convert.ToInt32(Session["V_Id"]);
        Class1.connection();

        string q = "select * from product where V_Id=" + vid;

        DataSet ds = Class1.filldata(q);
       // Session["catid"] = ds.Tables[0].Rows[0][1];
        DropDownList1.DataSource = ds;
        DropDownList1.DataValueField = "Pr_Id";
        DropDownList1.DataTextField = "Pr_Name";
        DropDownList1.DataBind();

        DropDownList1.Items.Insert(0, "--Select--");
    }
    public void bindgrid()
    {
        int vid = Convert.ToInt32(Session["V_Id"]);
        Class1.connection();
        string q = "select P.Pr_id,S.ST_Id,S.V_Id,S.ST_Qty,S.ST_Price,S.Total_Amount,P.Pr_Name from stock S,product P where S.V_Id=" + vid + "And P.Pr_id=S.Pr_Id";
        //string q = "select P.Pr_Id,C.CAT_Id,P.CAT_Id,C.CAT_Name,P.Pr_Name,P.Pr_Pic,Pr_Rdate,Pr_Qty,Pr_Price from product P,categories C where C.CAT_Id=P.CAT_Id And venderid=" + Convert.ToInt32(Session["vid"]);
        DataSet ds = Class1.filldata(q);
        GridView1.EmptyDataText = "Data Not Fetch";
        GridView1.DataSource = ds;
        GridView1.DataBind();
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Class1.connection();
        int vid = Convert.ToInt32(Session["V_Id"]);
        string v1 = TextBox1.Text;
        string v2 = TextBox2.Text;
        //string v3 = TextBox3.Text;
        //string v4 = TextBox4.Text;
        //DateTime d1 = Convert.ToDateTime(TextBox3.Text);
        //DateTime d2 = Convert.ToDateTime(TextBox4.Text);
        //string v3 = d1.ToString("MM-dd-yy");
        //string v4 = d2.ToString("MM-dd-yy");
        //DateTime d1 = Convert.ToDateTime(v3);
        //DateTime d2 = Convert.ToDateTime(v4);

        //int cid = Convert.ToInt32(Session["catid"]);
        string pid = DropDownList1.SelectedValue.ToString();
        int v3 = (Convert.ToInt32(v1) * Convert.ToInt32(v2));
        string q = "insert into stock values('" + pid + "','" + vid + "','" + v1 + "','" + v2 + "','" + v3 + "')";

        if (Class1.execute(q))
        {
            Label1.Text = "Data Inserted";
            bindgrid();
        }
        else
        {
            Label1.Text = "Data Not Inserted";
        }
    }

    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName.Equals("priya"))
        {

            Class1.connection();
            string n = e.CommandArgument.ToString();
            string q = "delete from stock where ST_Id=" + n.ToString();
            if (Class1.execute(q))
            {
                bindgrid();
            }
            else
            {
                Label1.Text = "Data Not Deleted";
            }
        }
    }
}
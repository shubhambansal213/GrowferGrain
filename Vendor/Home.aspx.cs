using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;


public partial class Vendor_Home : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        bindgrid();
    }
    public void bindgrid()
    {
        Class1.connection();
        string q = "select * from product P where V_Id=" + Convert.ToInt32(Session["V_Id"]);

        DataSet ds = Class1.filldata(q);
        GridView1.EmptyDataText = "Data Not Fetch";
        GridView1.DataSource = ds;
        GridView1.DataBind();
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Class1.connection();
        string rpath = Server.MapPath("img") + "/";
        if (FileUpload1.HasFile)
        {
            FileUpload1.SaveAs(rpath + FileUpload1.FileName);
            string ipath = "~/Vendor/img/" + FileUpload1.FileName;

            //string v1 = DropDownList1.SelectedValue.ToString();
            int v2 = Convert.ToInt32(Session["V_Id"]);
            string v3 = TextBox1.Text;
            string v4 = TextBox2.Text;
            //string v5 = DateTime.Now.ToString();

            //Session["catid"] = Convert.ToInt32(v1);

            string q = "insert into product values('" + v2 + "','" + v3 + "','" + v4 + "','" + ipath + "')";

            if (Class1.execute(q))
            {
                TextBox1.Text = "";
                TextBox2.Text = "";
                Label1.Text = "Data Inserted";
                bindgrid();
            }
            else
            {
                Label1.Text = "Data Not Inserted";
            }
        }
    }

    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName.Equals("priya"))
        {

            Class1.connection();
            string n = e.CommandArgument.ToString();
            string q = "delete from product where Pr_Id=" + n.ToString();
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
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;


public partial class Customer_updateproduct : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            Class1.connection();
            string id = Request.QueryString["k"];
            HiddenField1.Value = id.ToString();
            string pname = "select * from Cart where C_Id=" + id.ToString();
            DataSet dspname = Class1.filldata(pname);
            //Session["ofr"] = dspname.Tables[0].Rows[0][7].ToString();
            //TextBox1.Text = dspname.Tables[0].Rows[0][8].ToString();
            string prname = dspname.Tables[0].Rows[0][3].ToString();
            string q = "select * from product where Pr_Id='" + prname + "'";
            DataSet ds = Class1.filldata(q);
            //string r1 = ds.Tables[0].Rows[0][0].ToString();
            Label1.Text = ds.Tables[0].Rows[0][2].ToString();
            Label2.Text = dspname.Tables[0].Rows[0][4].ToString();
            Label5.Text = dspname.Tables[0].Rows[0][6].ToString();
            Image1.ImageUrl = ds.Tables[0].Rows[0][4].ToString();
            TextBox1.Text= dspname.Tables[0].Rows[0][5].ToString();
            //Label6.Text= dspname.Tables[0].Rows[0][9].ToString();
            //string q1 = "select * from stock where Pr_Id='" + r1 + "'";
            //DataSet ds1 = Class1.filldata(q1);
            //Label2.Text = ds1.Tables[0].Rows[0][5].ToString();
            //Label3.Text = ds1.Tables[0].Rows[0][4].ToString();
            // Label5.Text = ds1.Tables[0].Rows[0][5].ToString();
            //Image1.ImageUrl = ds.Tables[0].Rows[0][5].ToString();
        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        string wq1 = TextBox1.Text;
        string totalprice1 = Label5.Text;
        string upd = "update Cart set C_Qty='" + wq1 + "',C_TAmt='" + totalprice1.ToString() + "'where C_Id='" + HiddenField1.Value.ToString() + "'";
        // Label2.Text = upd;
        if (Class1.execute(upd))
        {
            Response.Redirect("AddToCart.aspx");
        }
        else
        {
            Label4.Text = "Quantity not Updated";
        }
    }

    protected void TextBox1_TextChanged1(object sender, EventArgs e)
    {
        Label5.Text = (Convert.ToInt32(Label2.Text) * Convert.ToInt32(TextBox1.Text)).ToString();
    }
}
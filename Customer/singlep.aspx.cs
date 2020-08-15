using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;


public partial class Customer_singlep : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {

            string id = Request.QueryString["k"];
            HiddenField1.Value = id.ToString();
            Class1.connection();
            string q = "select * from product where Pr_Id=" + id.ToString();
            DataSet ds = Class1.filldata(q);
            Label1.Text = ds.Tables[0].Rows[0][2].ToString();
            Image1.ImageUrl = ds.Tables[0].Rows[0][4].ToString();
            Session["V_Id"] = ds.Tables[0].Rows[0][1].ToString();
            //Session["sid"] = ds.Tables[0].Rows[0][2].ToString();
            Label3.Text = ds.Tables[0].Rows[0][3].ToString();
            string q1 = "select * from stock where Pr_Id=" + id.ToString();
            DataSet ds1 = Class1.filldata(q1);
            Label2.Text = ds1.Tables[0].Rows[0][4].ToString();
            Label5.Text = ds1.Tables[0].Rows[0][4].ToString();
            // Label5.Text = ds1.Tables[0].Rows[0][5].ToString();
            //Image1.ImageUrl = ds.Tables[0].Rows[0][5].ToString();
            //Session["q"] = ds1.Tables[0].Rows[0][4];
            //Session["p"] = ds1.Tables[0].Rows[0][5];
            //datalist();









        }
    }

    protected void TextBox1_TextChanged1(object sender, EventArgs e)
    {
        Label5.Text= (Convert.ToInt32(Label2.Text) * Convert.ToInt32(TextBox1.Text)).ToString();
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        string v1 = Session["U_Id"].ToString();
        string v2 = Session["V_Id"].ToString();
        string v3 = HiddenField1.Value.ToString();
        string v4 = Label2.Text;
        string v5 = TextBox1.Text;
        string v6 = (Convert.ToInt32(v4) * Convert.ToInt32(v5)).ToString();
        string v7 = DateTime.Now.ToString("MM-dd-yy");
        string v8 = "Not-Paid";
        string q = "insert into Cart values('" + v1 + "','" + v2 + "','" + v3 + "','" + v4 + "','" + v5 + "','" + v6 + "','" + v7 + "','" + v8 + "')";
        //Label10.Text = q.ToString();

        if (Class1.execute(q))
        {
             Label4.Text="Item Added";
            Response.Redirect("AddToCart.aspx");
        }
        else
        {
            Label4.Text = "Item Not Added";
        }
    }
}
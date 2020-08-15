using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
public partial class Login_Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Session["V_Id"] = "";
        Session["U_Id"] = "";
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Class1.connection();

        string q = "select * from Vendor where V_Email='" + TextBox1.Text + "' and V_Pwd='" + TextBox2.Text + "'";

        DataSet ds = Class1.filldata(q);

        if (ds.Tables[0].Rows.Count > 0)
        {
            Session["V_Id"] = ds.Tables[0].Rows[0][0].ToString();
            Response.Redirect("../Vendor/Home.aspx");
            clrtxt();
        }
        else
        {
            string q1 = "select * from usermaster where U_Email='" + TextBox1.Text + "' and U_Pwd='" + TextBox2.Text + "'";

            DataSet ds1 = Class1.filldata(q1);

            if (ds1.Tables[0].Rows.Count > 0)
            {
                Session["U_Id"] = ds1.Tables[0].Rows[0][0].ToString();
                Response.Redirect("../Customer/Home.aspx");
                clrtxt();
            }
            else
            {
                Label1.Text = "Invalid Email or Password";
            }
        }
    }
    public void clrtxt()
    {
        TextBox1.Text = "";
        TextBox2.Text = "";
    }
}
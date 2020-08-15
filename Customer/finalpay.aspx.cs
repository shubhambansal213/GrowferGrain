using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
public partial class Customer_finalpay : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            string id = Request.QueryString["k"];
            HiddenField1.Value = id.ToString();


        }
    }

    protected void RadioButtonList1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }

    protected void TextBox3_TextChanged(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {



        Class1.connection();
        string q = "select * from Cart where C_Id=" + HiddenField1.Value;
        DataSet ds = Class1.filldata(q);
        if (ds.Tables[0].Rows.Count > 0)
        {
            // Label1.Text = "Already Exist";

            string v1 = HiddenField1.Value.ToString();
            //string v2 = ds.Tables[0].Rows[0][1].ToString();
            string v2 = RadioButtonList1.Text;
            string v3 = TextBox2.Text;
            string v4 = DropDownList1.SelectedValue;
            string v5 = TextBox3.Text;

            string v6 = TextBox4.Text;
            string v7 = TextBox5.Text;
            string v8 = DateTime.Now.ToString("MM-dd-yy");
            string v9 = "Not Delivered";
            
            string ins = "insert into payment values('" + v1 + "','" + v2 + "','" + v3 + "','" + v4 + "','" + v5 + "','" + v6 + "','" + v7 + "','" + v8 + "','" + v9 + "')";
            //string d = DateTime.Now.ToString("MM-dd-yy");
            
            if (Class1.execute(ins))
            {

                //Label1.Text = "Your oreder will be delivered soon";



                string upd = "update Cart set status='Paid'where C_Id=" + HiddenField1.Value;
                if (Class1.execute(upd))
                    {
                        RadioButtonList1.Visible = false;
                    
                        TextBox2.Text = "";
                        TextBox3.Text = "";
                        TextBox4.Text = "";
                        TextBox5.Text = "";//Label1.Text = "Your order will be delivered soon";
                        Response.Redirect("http://www.paypal.com/cgi-bin/webscr?cmd=_xclick&business=" + "GrowferGrains" + "@paypal.com&item_name=" + HiddenField1.Value + "&amount=" + ds.Tables[0].Rows[0][6].ToString() + "&currency_code=INR");
                    }
                }


            }
        }



    }

using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;



public partial class Customer_Shop : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if(!IsPostBack)
        {
            Bind_CheckList();
        }
    }
    public void Bind_CheckList()
    {
        Class1.connection();
        string q = "select Distinct Pr_Name from Product";
        //string q = "select * from city";
        DataSet ds = Class1.filldata(q);

        //CheckboxList2.EmptyDataText = "Data Not Fetched";
        CheckBoxList1.DataSource = ds;
        CheckBoxList1.DataValueField = "Pr_Name";
        CheckBoxList1.DataTextField = "Pr_Name";
        CheckBoxList1.DataBind();

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Class1.connection();
        string item = "";
        for (int i = 0; i < CheckBoxList1.Items.Count; i++)
        {

            if (CheckBoxList1.Items[i].Selected)
            {
                item += "'" + CheckBoxList1.Items[i].Text + "',";
            }
        }

        item = item.Remove(item.Length - 1, 1);
        string q1 = "select P.*,S.* from Product P,Stock S where P.Pr_Id = S.Pr_Id And P.Pr_Name in (" + item + ")";
        //string q1 = "select S.*,P.* from stock S,product P where ST_Price>300 and ST_Price<1001 and S.Pr_Id=P.Pr_Id";
        //DataSet ds = Class1.filldata(q);
        //string prid = ds.Tables[0].Rows[0][2].ToString();
        //string q1 = "select * from product where Pr_Id=" + prid;
        DataSet ds1 = Class1.filldata(q1);
        DataList1.DataSource = ds1;
        DataList1.DataBind();
    }
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Customer_invoice : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string id = Request.QueryString["k"];
        //string uname = Session["username"].ToString();
        Class1.connection();


        string q = "select V.V_Name,U.U_Name,C.bdate,PR.Pr_Name,C.C_Qty,C.C_TAmt,P.ptype from payment P,Vendor V,usermaster U,Cart C,Product PR where C.V_Id=V.V_Id and U.U_Id=C.U_Id and C.Pr_Id=PR.Pr_Id and C.C_Id=P.C_Id and C.C_Id=" + id.ToString();

        DataSet ds = Class1.filldata(q);

        Label1.Text = ds.Tables[0].Rows[0][0].ToString();
        Label3.Text = ds.Tables[0].Rows[0][1].ToString();
        Label2.Text = ds.Tables[0].Rows[0][2].ToString();
        Label10.Text = ds.Tables[0].Rows[0][3].ToString();
        Label11.Text = ds.Tables[0].Rows[0][4].ToString();
        Label12.Text = ds.Tables[0].Rows[0][5].ToString();
        Label4.Text = ds.Tables[0].Rows[0][6].ToString();
        //Label8.Text = ds.Tables[0].Rows[0][3].ToString();
        //Label9.Text = ds.Tables[0].Rows[0][14].ToString();
    }
}
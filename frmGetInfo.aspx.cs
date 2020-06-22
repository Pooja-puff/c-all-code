using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using System.Data.SqlClient;

public partial class frmGetInfo : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {

        string ConnStr = ConfigurationManager.ConnectionStrings["UserInfoConnString"].ConnectionString;
        SqlConnection conn = new SqlConnection(ConnStr);
      
        string qry;
        if(txtQry.Text == "")
            qry = "select * from emp ";
        else
            qry = txtQry.Text;

        SqlDataAdapter adptrGetInfo = new SqlDataAdapter(qry, conn);
        DataTable Dt = new DataTable();
        Label1.Text = Dt.Rows.Count.ToString() + "Rows Selected";
        Label1.Visible = true;

        adptrGetInfo.Fill(Dt);
        grdInfo.DataSource = Dt;
        grdInfo.DataBind();
        conn.Close();

    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        string ConnStr = ConfigurationManager.ConnectionStrings["UserInfoConnString"].ConnectionString;
        SqlConnection conn = new SqlConnection(ConnStr);
        SqlCommand cmd = new SqlCommand(txtQry.Text);

        cmd.Connection = conn;
        conn.Open();

        cmd.ExecuteNonQuery();
        txtQry.Text = "";
        txtQry.Focus();
        Label1.Text = "Table Created/Modified";
        Label1.Visible = true;

        conn.Close();


    }
    protected void txtQry_TextChanged(object sender, EventArgs e)
    {
        Label1.Visible = false;
    }
    protected void grdInfo_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}

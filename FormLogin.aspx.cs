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

public partial class FormLogin : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //DataSet ds = new DataSet();
        //ds.ReadXml(Server.MapPath("StudXMLData.xml"));
        //GridView1.DataSource = ds;
        //GridView1.DataBind();
    }
    protected void TextBox1_TextChanged(object sender, EventArgs e)
    {
        lb1Msg.Visible = false;
    }
    protected void btnLogin_Click(object sender, EventArgs e)
    {

        if (FormsAuthentication.Authenticate(UsrNm.Text, UsrPwd.Text))
        {
            FormsAuthentication.RedirectFromLoginPage(UsrNm.Text, chkPersist.Checked);
        }
        else
        {
            lb1Msg.Text = " User Name and / or Password not Authenticated";

            lb1Msg.Visible = true;
            UsrNm.Text = "";
            UsrPwd.Text = "";
            UsrNm.Focus();
        }
    }
}

    


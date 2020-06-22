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

public partial class WebEncryptionSha_md5 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    private string GetMD5HashData(string data)
    {

        string pwdSha = (FormsAuthentication.HashPasswordForStoringInConfigFile(data, "MD5"));
        return (pwdSha);


    }

    private string GetSHA1HashData(string PwdTxtData)
    {

        string pwdSha = (FormsAuthentication.HashPasswordForStoringInConfigFile(PwdTxtData, "SHA1"));
        return (pwdSha);
    
    
    }
    protected void btnEnc_Click(object sender, EventArgs e)
    {
        TxtMD5.Text = GetMD5HashData(TxtClear.Text);
        TxtSha.Text = GetSHA1HashData(TxtClear.Text);
    }
    protected void TxtSha_TextChanged(object sender, EventArgs e)
    {

    }
}

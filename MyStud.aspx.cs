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
using System.Xml;





    public partial class MyStud : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            XDocument objStudInfo = XDocument.Load(Server.MapPath("StudXMLData.xml"));





            XElement objStudRec = new XElement("StudRec");





            objStudRec.Add(new XElement("SNo", TxtEno.Text));
            objStudRec.Add(new XElement("SName", TxtSname.Text));
            objStudRec.Add(new XElement("Marks_sub1", TxtM1.Text));
            objStudRec.Add(new XElement("Marks_sub2", TxtM2.Text));
            objStudRec.Add(new XElement("Marks_sub3", TxtM3.Text));
            objStudRec.Add(new XElement("Marks_sub4", TxtM4.Text));
            objStudRec.Add(new XElement("Marks_sub5", TxtM5.Text));
            objStudRec.Add(new XElement("Marks_Total", TxtTot.Text));
            objStudRec.Add(new XElement("Stud_Res", TxtRes.Text));

            objStudInfo.Element("StudDb").Add(objStudRec);
            objStudInfo.Save(Server.MapPath("StudXMLData.xml"));
        }
        protected void Button3_Click(object sender, EventArgs e)
        {
            int mks1 = Convert.ToInt32(TxtM1.Text); int mks2 = Convert.ToInt32(TxtM2.Text);
            int mks3 = Convert.ToInt32(TxtM3.Text); int mks4 = Convert.ToInt32(TxtM4.Text);
            int mks5 = Convert.ToInt32(TxtM5.Text);

            int Total = mks1 + mks2 + mks3 + mks4 + mks5;

            TxtTot.Text = Total.ToString();

            if (mks1 > 40 && mks2 > 40 && mks3 > 40 && mks4 > 40 && mks5 > 40)
                TxtRes.Text = "Pass";
            else
                TxtRes.Text = "Fail";


        }
        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("Grid.aspx");
        }
    }




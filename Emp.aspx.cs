﻿using System;
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

public partial class Emp : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        {
            DataSet ds = new DataSet();
            ds.ReadXml(Server.MapPath("EmpXMLData.xml"));
            GridView1.DataSource = ds;
            GridView1.DataBind();
        }

    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}

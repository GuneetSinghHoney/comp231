﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class modst : System.Web.UI.Page
{
    String id;
    protected void Page_Load(object sender, EventArgs e)
    {
        id = Request.Params["id"];
        Response.Redirect("student.aspx");
    }
}
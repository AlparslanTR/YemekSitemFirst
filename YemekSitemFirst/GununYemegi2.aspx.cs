﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
public partial class GununYemegi2 : System.Web.UI.Page
{
    sqlbaglantisi bgl = new sqlbaglantisi();
    protected void Page_Load(object sender, EventArgs e)
    {
        Panel2.Visible = false;

        SqlCommand komut = new SqlCommand("Select*from Tbl_Yemekler", bgl.baglanti());
        SqlDataReader dr = komut.ExecuteReader();
        DataList1.DataSource = dr;
        DataList1.DataBind();

    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        Panel2.Visible = false;
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Panel2.Visible = true;
    }
}
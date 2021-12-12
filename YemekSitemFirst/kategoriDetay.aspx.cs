using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
public partial class kategoriDetay : System.Web.UI.Page
{
    sqlbaglantisi bgl = new sqlbaglantisi();
    string kategorid = "";
    protected void Page_Load(object sender, EventArgs e)
    {
        kategorid = Request.QueryString["Kategorid"];
        SqlCommand komut = new SqlCommand("Select*From Tbl_Yemekler where kategorid=@p1", bgl.baglanti());
        komut.Parameters.AddWithValue("@p1", Convert.ToInt32(kategorid));
        SqlDataReader dr = komut.ExecuteReader();
        DataList2.DataSource = dr;
        DataList2.DataBind();
    }
}
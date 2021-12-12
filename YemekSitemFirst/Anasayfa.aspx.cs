using System;
using System.Data.SqlClient;

public partial class Anasayfa : System.Web.UI.Page
{
    sqlbaglantisi bgl = new sqlbaglantisi();
    protected void Page_Load(object sender, EventArgs e)
    {
        SqlCommand komut = new SqlCommand("Select*from Tbl_Yemekler", bgl.baglanti());
        SqlDataReader dr = komut.ExecuteReader();
        DataList2.DataSource = dr;
        DataList2.DataBind();
    }
}
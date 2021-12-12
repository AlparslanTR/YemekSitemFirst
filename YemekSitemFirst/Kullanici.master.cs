using System;
using System.Data.SqlClient;

public partial class Kullanici : System.Web.UI.MasterPage
{
    sqlbaglantisi bgl = new sqlbaglantisi();
    protected void Page_Load(object sender, EventArgs e)
    {
        SqlCommand komut = new SqlCommand("Select*From Tbl_Kategoriler", bgl.baglanti());
        SqlDataReader oku = komut.ExecuteReader();
        DataList1.DataSource = oku;
        DataList1.DataBind();
    }
}

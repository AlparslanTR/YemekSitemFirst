using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
public partial class KategoriAdminDetay : System.Web.UI.Page
{
    sqlbaglantisi bgl = new sqlbaglantisi();
    string id;
    protected void Page_Load(object sender, EventArgs e)
    {
        id = Request.QueryString["Kategorid"];
        if (Page.IsPostBack==false)
        {

        
        SqlCommand komut = new SqlCommand("Select*From Tbl_Kategoriler where Kategorid=@p1", bgl.baglanti());
        komut.Parameters.AddWithValue("@p1", id);
        SqlDataReader dr = komut.ExecuteReader();
        while (dr.Read())
        {
            TextBox1.Text = dr[1].ToString();
            TextBox2.Text = dr[2].ToString();
        }
        bgl.baglanti().Close();
    }
}
protected void Button1_Click(object sender, EventArgs e)
    {
        SqlCommand gnc = new SqlCommand("update Tbl_Kategoriler set Ad=@p1,Adet=@p2 where kategorid=@p3", bgl.baglanti());
        gnc.Parameters.AddWithValue("@p1", TextBox1.Text);
        gnc.Parameters.AddWithValue("@p2", TextBox2.Text);
        gnc.Parameters.AddWithValue("@p3", id);
        gnc.ExecuteNonQuery();
        bgl.baglanti().Close();
        Response.Write("Kategori Güncellendi.!");
    }
}
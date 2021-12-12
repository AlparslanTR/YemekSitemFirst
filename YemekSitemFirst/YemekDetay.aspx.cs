using System;
using System.Data.SqlClient;

public partial class YemekDetay : System.Web.UI.Page
{
    sqlbaglantisi bgl = new sqlbaglantisi();
    string yemekid = "";
    protected void Page_Load(object sender, EventArgs e)
    {
        yemekid = Request.QueryString["Yemekid"];

        SqlCommand komut = new SqlCommand("Select Ad from Tbl_Yemekler where Yemekid=@y1", bgl.baglanti());
        komut.Parameters.AddWithValue("@y1", Convert.ToInt32(yemekid));
        SqlDataReader dr = komut.ExecuteReader();
        while (dr.Read())
        {
            Label3.Text = dr[0].ToString();
        }
        bgl.baglanti().Close();
        // Yorumları Listeleme
        SqlCommand komut2 = new SqlCommand("Select*from Tbl_Yorumlar where Yemekid=@a1", bgl.baglanti());
        komut2.Parameters.AddWithValue("@a1", Convert.ToInt32(yemekid));
        SqlDataReader dr2 = komut2.ExecuteReader();
        DataList2.DataSource = dr2;
        DataList2.DataBind();
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlCommand komut3 = new SqlCommand("Insert into Tbl_Yorumlar (AdSoyad, Mail, Icerik, Yemekid) values(@p1,@p2,@p3,@p4)", bgl.baglanti());
        komut3.Parameters.AddWithValue("@p1", TextBox1.Text);
        komut3.Parameters.AddWithValue("@p2", TextBox2.Text);
        komut3.Parameters.AddWithValue("@p3", TextBox3.Text);
        komut3.Parameters.AddWithValue("@p4", yemekid);
        Response.Write("Yorumunuz Onaylandıktan Sonra Yayınlanacaktır.");
        komut3.ExecuteNonQuery();
        bgl.baglanti().Close();
    }
}
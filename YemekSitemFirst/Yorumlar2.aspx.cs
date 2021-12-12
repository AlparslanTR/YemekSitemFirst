using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
public partial class Yorumlar2 : System.Web.UI.Page
{
    sqlbaglantisi bgl = new sqlbaglantisi();
    string id = "";
    protected void Page_Load(object sender, EventArgs e)
    {
        // Yorumları Onaylama aşamasına gönderme
      
            id = Request.QueryString["Yorumid"];
            SqlCommand komut = new SqlCommand("Select AdSoyad,Mail,Icerik,Ad from Tbl_Yorumlar inner join Tbl_Yemekler on Tbl_Yorumlar.Yemekid=Tbl_Yemekler.Yemekid where Yorumid=@p1", bgl.baglanti());
            komut.Parameters.AddWithValue("@p1",id);
            SqlDataReader dr = komut.ExecuteReader();
            while (dr.Read())
            {
                TextBox1.Text = dr[0].ToString();
                TextBox2.Text = dr[1].ToString();
                TextBox3.Text = dr[2].ToString();
                TextBox4.Text = dr[3].ToString();
            
            bgl.baglanti().Close();
        }
        
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
            SqlCommand komut = new SqlCommand("Update Tbl_Yorumlar set Onay=@p1 where Yorumid=@p2", bgl.baglanti());
            komut.Parameters.AddWithValue("@p1", "True");
            komut.Parameters.AddWithValue("@p2", id);
            komut.ExecuteNonQuery();
            bgl.baglanti().Close();
            Response.Write("Yorum Onaylanmıştır");
        
    }
}
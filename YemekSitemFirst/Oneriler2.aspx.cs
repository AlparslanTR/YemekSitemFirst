using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
public partial class Oneriler2 : System.Web.UI.Page
{
    sqlbaglantisi bgl = new sqlbaglantisi();
    string id = "";
    protected void Page_Load(object sender, EventArgs e)
    {
        id = Request.QueryString["id"];
        if (Page.IsPostBack==false)
        {
            SqlCommand komut = new SqlCommand("Select*from Tbl_Tarifler where id=@p1", bgl.baglanti());
            komut.Parameters.AddWithValue("@p1", id);
            SqlDataReader dr = komut.ExecuteReader();
            while (dr.Read())
            {
                TextBox1.Text = dr[1].ToString();
                TextBox2.Text = dr[2].ToString();
                TextBox3.Text = dr[3].ToString();
                TextBox4.Text = dr[4].ToString();
                TextBox5.Text = dr[5].ToString();
            }
            bgl.baglanti().Close();

            // Kategori Listesi
            SqlCommand komut2 = new SqlCommand("Select*from Tbl_Kategoriler", bgl.baglanti());
            SqlDataReader dr2 = komut2.ExecuteReader();
            DropDownList1.DataTextField = "Ad";
            DropDownList1.DataValueField = "Kategorid";
            DropDownList1.DataSource = dr2;
            DropDownList1.DataBind();
        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        //Güncelleme
        SqlCommand komut = new SqlCommand("Update Tbl_Tarifler set durum=1 where id=@p1", bgl.baglanti());
        komut.Parameters.AddWithValue("@p1", id);
        komut.ExecuteNonQuery();
        bgl.baglanti().Close();

        // Yemeği Anasayfaya ekleme
        SqlCommand komut2 = new SqlCommand("Insert into Tbl_Yemekler(Ad,malzeme,tarif,Kategorid)values(@p1,@p2,@p3,@p4)", bgl.baglanti());
        komut2.Parameters.AddWithValue("@p1", TextBox1.Text);
        komut2.Parameters.AddWithValue("@p2", TextBox2.Text);
        komut2.Parameters.AddWithValue("@p3", TextBox3.Text);
        komut2.Parameters.AddWithValue("@p4", DropDownList1.SelectedValue);
        komut2.ExecuteNonQuery();
        bgl.baglanti().Close();
        Response.Write("Yemek Anasayfaya Eklenmiştir ve Tarif Onaylanmıştır.!");
    }
}
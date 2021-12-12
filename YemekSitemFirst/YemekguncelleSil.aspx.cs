using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
public partial class YemekguncelleSil : System.Web.UI.Page
{
    sqlbaglantisi bgl = new sqlbaglantisi();
    string id;
    protected void Page_Load(object sender, EventArgs e)
    {
        // Güncellemek istediğimde veriler otomatik gelicek güncelleme kısmındaki kategorilere.

        id = Request.QueryString["Yemekid"];
        if (Page.IsPostBack==false)
        {
            SqlCommand komut = new SqlCommand("Select*from Tbl_Yemekler where Yemekid=@p1", bgl.baglanti());
            komut.Parameters.AddWithValue("@p1",Convert.ToInt32(id));
            SqlDataReader dr = komut.ExecuteReader();
            while (dr.Read())
            {
                TextBox1.Text = dr[1].ToString();
                TextBox2.Text = dr[2].ToString();
                TextBox3.Text = dr[3].ToString();
            }
            bgl.baglanti().Close();
            if (Page.IsPostBack == false)
            {
                // Kategori Listesi
                SqlCommand komut2 = new SqlCommand("Select*from Tbl_Kategoriler", bgl.baglanti());
                SqlDataReader dr2 = komut2.ExecuteReader();
                DropDownList1.DataTextField = "Ad";
                DropDownList1.DataValueField = "Kategorid";
                DropDownList1.DataSource = dr2;
                DropDownList1.DataBind();
            }
        }

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        // Yemekleri güncelle
       
        
            FileUpload1.SaveAs(Server.MapPath("/Resimler/" + FileUpload1.FileName));
            SqlCommand komut = new SqlCommand("Update Tbl_Yemekler set Ad=@p1,Malzeme=@p2,Tarif=@p3,Kategorid=@p4,Resim=@p6 where Yemekid=@p5", bgl.baglanti());
            komut.Parameters.AddWithValue("@p1", TextBox1.Text);
            komut.Parameters.AddWithValue("@p2", TextBox2.Text);
            komut.Parameters.AddWithValue("@p3", TextBox3.Text);
            komut.Parameters.AddWithValue("@p4", DropDownList1.SelectedValue);
            komut.Parameters.AddWithValue("@p6", "~/Resimler/" + FileUpload1.FileName);
            komut.Parameters.AddWithValue("@p5", id);
            komut.ExecuteNonQuery();
            bgl.baglanti().Close();
            Response.Write("Yemek Güncellenmiştir.!");

            SqlCommand komut4 = new SqlCommand("Update Tbl_Kategoriler set Adet=adet+1 where Kategorid=@p1", bgl.baglanti());
            komut4.Parameters.AddWithValue("@p1", DropDownList1.SelectedValue);
            komut4.ExecuteNonQuery();
            bgl.baglanti().Close();
        


        
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        // Tüm yemeklerin durumunu False yapar
        SqlCommand komut = new SqlCommand("Update Tbl_Yemekler set Durum=0", bgl.baglanti());
        komut.ExecuteNonQuery();
        bgl.baglanti();
        Response.Write("Seçtiğiniz Yemek Günün Yemeği Olmuştur.!");

        //Günün Yemeği İçin id ye göre true yapma
        SqlCommand komut2 = new SqlCommand("Update Tbl_Yemekler set durum=1 where Yemekid=@p1", bgl.baglanti());
        komut2.Parameters.AddWithValue("@p1", id);
        komut2.ExecuteNonQuery();
        bgl.baglanti().Close();
        
    }
}
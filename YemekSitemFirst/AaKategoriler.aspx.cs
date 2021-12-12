using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
public partial class AaKategoriler : System.Web.UI.Page
{
    sqlbaglantisi bgl = new sqlbaglantisi();
    string id = "";
    string islem = "";
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Page.IsPostBack==false)
        {
            id = Request.QueryString["Kategorid"];
            islem = Request.QueryString["islem"];
        }
        SqlCommand komut = new SqlCommand("Select*from Tbl_Kategoriler", bgl.baglanti());
        SqlDataReader dr = komut.ExecuteReader();
        DataList1.DataSource = dr;
        DataList1.DataBind();
        ///Silme İşlemi
        if (islem=="sil")
        {
            SqlCommand sil = new SqlCommand("Delete from Tbl_Kategoriler where kategorid=@p1", bgl.baglanti());
            sil.Parameters.AddWithValue("@p1", id);
            sil.ExecuteNonQuery();
            bgl.baglanti().Close();
            Response.Write("Silinmiştir.!");
        }

        Panel2.Visible = false;
        Panel4.Visible = false;
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Panel2.Visible = true;
        
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        Panel2.Visible = false;
        
    }

    protected void Button4_Click(object sender, EventArgs e)
    {
        Panel4.Visible = false;
    }

    protected void Button3_Click(object sender, EventArgs e)
    {
        Panel4.Visible = true;
    }

    protected void BtnEkle_Click(object sender, EventArgs e)
    {
        SqlCommand ekle = new SqlCommand("Insert into Tbl_Kategoriler (Ad)values(@p1)", bgl.baglanti());
        ekle.Parameters.AddWithValue("@p1",TextBox1.Text);
        ekle.ExecuteNonQuery();
        bgl.baglanti().Close();
        Response.Write("Kategori Eklenmiştir.");
    }
}
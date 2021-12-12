using System;
using System.Data.SqlClient;

public partial class YemekTarifiOner : System.Web.UI.Page
{
    sqlbaglantisi bgl = new sqlbaglantisi();
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlCommand komut = new SqlCommand("insert into Tbl_tarifler(ad,malzeme,yapilis,sahip,sahipMail,resim) values(@t1,@t2,@t3,@t4,@t5,@t6)", bgl.baglanti());
        komut.Parameters.AddWithValue("@t1", TextBox1.Text);
        komut.Parameters.AddWithValue("@t2", TextBox2.Text);
        komut.Parameters.AddWithValue("@t3", TextBox3.Text);
        komut.Parameters.AddWithValue("@t4", TextBox4.Text);
        komut.Parameters.AddWithValue("@t5", TextBox5.Text);
        komut.Parameters.AddWithValue("@t6", FileUpload1.FileName);

        komut.ExecuteNonQuery();
        bgl.baglanti().Close();
        Response.Write("Onaylandıktan sonra yayınlanacaktır");

    }
}
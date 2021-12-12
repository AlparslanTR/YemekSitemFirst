using System.Data.SqlClient;

public class sqlbaglantisi
{
    public SqlConnection baglanti()
    {
        SqlConnection baglan = new SqlConnection(@"Data Source=DESKTOP-38ER4CK\SQLEXPRESS;Initial Catalog=YemekTarifi;Integrated Security=True");
        baglan.Open();
        return baglan;
    }
}
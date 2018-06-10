using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace InsuranceApp
{
    public partial class Family : System.Web.UI.Page
    {
        protected int currentDebt = 0;
        MySql.Data.MySqlClient.MySqlConnection conn;
        MySql.Data.MySqlClient.MySqlCommand cmd;
        MySql.Data.MySqlClient.MySqlDataReader reader;
        protected int numberofHouses = 0;
        protected int numberofCars = 0;
        protected int numberofFamily = 0;
        protected String name = "";
        protected String email = "";
        protected int age = 0;
        protected String tcNo = "";
        protected int healthRisk = 0;
        protected int relationship = 1;
        protected int id;
        protected int price = 150;
        protected String queryStr;
        protected void Page_Load(object sender, EventArgs e)

        {
            String connString = System.Configuration.ConfigurationManager.ConnectionStrings["insurance"].ToString();

            conn = new MySql.Data.MySqlClient.MySqlConnection(connString);
            conn.Open();
            queryStr = "";
            queryStr = "SELECT * FROM mydb.familymember WHERE ClientID IN (SELECT ID FROM mydb.client)";
            cmd = new MySql.Data.MySqlClient.MySqlCommand(queryStr, conn);
            reader = cmd.ExecuteReader();
            
            while (reader.HasRows && reader.Read())
            {
                name = reader.GetString(reader.GetOrdinal("Name")) + reader.GetString(reader.GetOrdinal("Surname"));
                age = reader.GetInt32(reader.GetOrdinal("BirthDate"));
                tcNo = reader.GetString(reader.GetOrdinal("TC"));
                healthRisk = reader.GetInt32(reader.GetOrdinal("HealthRisk"));
                id = reader.GetInt32(reader.GetOrdinal("ID"));
                relationship = reader.GetInt32(reader.GetOrdinal("Relationship"));
            }
            reader.Close();
            conn.Close();
        }
    }
}
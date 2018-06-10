using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace InsuranceApp
{
   
    public partial class Login : System.Web.UI.Page
    {
        MySql.Data.MySqlClient.MySqlConnection conn;
        MySql.Data.MySqlClient.MySqlCommand cmd;
        MySql.Data.MySqlClient.MySqlDataReader reader;
        String queryStr;
        String name;
        String email;
        Int32 age;
        String tcNo;
        Int32 clientId;
        Int32 healthRisk;
        protected void Page_Load(object sender, EventArgs e)
        {
        }
        protected void loginFunction(object sender, EventArgs e)
        {
            loginUser();
        }

        private void loginUser()
        {
            String connString = System.Configuration.ConfigurationManager.ConnectionStrings["insurance"].ToString();

            conn = new MySql.Data.MySqlClient.MySqlConnection(connString);
            conn.Open();
            queryStr = "";
            queryStr = "SELECT * FROM mydb.client WHERE Mail='" + EmailTextBox.Text + "' AND Password='"+ passwordTextBox.Text+"'";
            cmd = new MySql.Data.MySqlClient.MySqlCommand(queryStr, conn);

            reader = cmd.ExecuteReader();
            while (reader.HasRows && reader.Read())
            {
                name = reader.GetString(reader.GetOrdinal("Name")) + " " + reader.GetString(reader.GetOrdinal("Surname"));
                age = 2018 - reader.GetInt32(reader.GetOrdinal("BirthDate"));
                healthRisk = reader.GetInt32(reader.GetOrdinal("HealthRisk"));
                email = reader.GetString(reader.GetOrdinal("Mail"));
                clientId = reader.GetInt32(reader.GetOrdinal("ID"));
                tcNo = reader.GetString(reader.GetOrdinal("TC"));
            }
            if (reader.HasRows)
            {
                Session["ID"] = clientId;
                Session["user"] = name;
                Session["email"] = email;
                Session["age"] = age;
                Session["tcNo"] = tcNo;
                Session["healthRisk"] = healthRisk;
                Response.BufferOutput = true;
                Response.Redirect("Default.aspx", false);
           
            }
            else
            {
                Response.Write("<script>alert('Wrong password or email!')</script>");
            }

            reader.Close();
            conn.Close();
        }
    }
}
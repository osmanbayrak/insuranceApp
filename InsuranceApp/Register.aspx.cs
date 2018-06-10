using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace InsuranceApp
{
    public partial class Register : System.Web.UI.Page
    {
        MySql.Data.MySqlClient.MySqlConnection conn;
        MySql.Data.MySqlClient.MySqlCommand cmd;
        String queryStr;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void registerFunction(object sender, EventArgs e)
        {
            registerUser();
        }

        private void registerUser()
        {
            String connString = System.Configuration.ConfigurationManager.ConnectionStrings["insurance"].ToString();

            conn = new MySql.Data.MySqlClient.MySqlConnection(connString);
            conn.Open();
            queryStr = "";
            queryStr = "INSERT INTO mydb.client (TC, Name, Surname, Mail, Phone, Password, BirthDate, HealthRisk)" + "VALUES('" + tcTextBox.Text + "','" + firstnameTextBox.Text + "', '" + lastnameTextBox.Text + "', '" + EmailTextBox.Text + "', '" + PhoneNumberTextBox.Text + "', '" + passwordTextBox.Text + "', '" + birthDate.Text + "', '" + healthRisk.Text + "')";

            cmd = new MySql.Data.MySqlClient.MySqlCommand(queryStr, conn);

            cmd.ExecuteReader();
            conn.Close();
        }
    }
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace InsuranceApp
{
    public partial class Default : System.Web.UI.Page
    {
        protected int currentDebt = 0;
        MySql.Data.MySqlClient.MySqlConnection conn;
        MySql.Data.MySqlClient.MySqlCommand cmd;
        MySql.Data.MySqlClient.MySqlDataReader reader;
        protected int numberofHouses = 0;
        protected int numberofCars = 0;
        protected int numberofFamily = 0;
        protected String username = "";
        protected String email = "";
        protected int age = 0;
        protected String tcNo="";
        protected int healthRisk = 0;
        protected int clientId;
        protected int price = 150;
        protected String queryStr;
        protected void Page_Load(object sender, EventArgs e)
        
        {
            age = (int)HttpContext.Current.Session["age"];
            healthRisk = (int)HttpContext.Current.Session["healthRisk"];
            username = (string)HttpContext.Current.Session["user"];
            email = (string)HttpContext.Current.Session["email"];
            tcNo = (string)HttpContext.Current.Session["tcNo"];
            String connString = System.Configuration.ConfigurationManager.ConnectionStrings["insurance"].ToString();

            conn = new MySql.Data.MySqlClient.MySqlConnection(connString);
            conn.Open();
            clientId = (int)HttpContext.Current.Session["ID"];
            queryStr = "";
            queryStr = "SELECT * FROM mydb.balance WHERE ClientID=" + clientId;
            cmd = new MySql.Data.MySqlClient.MySqlCommand(queryStr, conn);
            reader = cmd.ExecuteReader();

            colorBlue.Visible = true;
            colorRed.Visible = false;
            colorGreen.Visible = false;
            lightBlue.Visible = false;
            colorYellow.Visible = false;

            
            if (Session["currentDebt"] == null)
            {
                while (reader.HasRows && reader.Read())
                {
                    currentDebt = reader.GetInt32(reader.GetOrdinal("CurrentDebt"));
                }
                
            }
            else { Response.Write("Please try login again!"); }
            reader.Close();
            conn.Close();
        }

        
        protected void pay(object sender, EventArgs e)
        {
            if (Session["currentDebt"] != null)
            {
                currentDebt = currentDebt - int.Parse(payAmount.Text);
            }
            else { Response.Write("Please try login again!"); }
                
            
        }
        
    }
}
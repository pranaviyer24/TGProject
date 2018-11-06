﻿using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Default3 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void AssignGuardian(object sender, EventArgs e)
    {
        string StudId = ListBox2.SelectedItem.Value;
        string FacId = ListBox1.SelectedItem.Value;
        SqlConnection con = new SqlConnection();
        con.ConnectionString = "Server=(localdb)\\mssqllocaldb;Database=TGDatabase;Integrated Security=True;";
        try
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("UPDATE Student SET FacultyId=@facid, HasGuardian=\'True\' WHERE Id=@studid", con);
            cmd.Parameters.AddWithValue("facid", FacId);
            cmd.Parameters.AddWithValue("studid", StudId);
        }
    }
}
using System;
using System.Data;
using System.Configuration;
using System.Data.SqlClient;

namespace Data_Access_Layer
{
    public  class DBHelper
    {
      

        private static string connectionString = ConfigurationManager.ConnectionStrings["Connection"].ConnectionString;


        internal static DataTable ParamSelect(string commandName, CommandType cmdType, SqlParameter[] pars)
        {
            DataTable table = new DataTable();
            using (SqlConnection con =new SqlConnection(connectionString))
            {
                using (SqlCommand cmd = con.CreateCommand())
                {
                    cmd.CommandType = cmdType;
                    cmd.CommandText = commandName;
                    cmd.Parameters.AddRange(pars);
                    try
                    {
                        if (con.State != ConnectionState.Open)
                        {
                            con.Open();
                        }
                        using (SqlDataAdapter da = new SqlDataAdapter(cmd))
                        {
                            da.Fill(table);
                        }
                  
                    }
                    catch
                    {
                        throw;
                    }
                }
            }
            return table;
        }

        #region NonQuery()
        public static bool NonQuery(string commandName, CommandType cmdType,
            SqlParameter[] pars)
        {
            int result = 0;
            using (SqlConnection con = new SqlConnection(connectionString))
            {
                using (SqlCommand cmd = con.CreateCommand())
                {
                    cmd.CommandType = cmdType;
                    cmd.CommandText = commandName;
                    cmd.Parameters.AddRange(pars);

                    try
                    {
                        if (con.State != ConnectionState.Open)
                        {
                            con.Open();
                        }
                        result = cmd.ExecuteNonQuery();
                    }
                    catch
                    {
                        throw;
                    }
                }
            }
            return result > 0;
        }
        #endregion NonQuery()
        #region Select()
        public static DataTable Select(string commandName, CommandType cmdType)
        {
            DataTable table = null;
            using (SqlConnection con = new SqlConnection(connectionString))
            {
                using (SqlCommand cmd = con.CreateCommand())
                {
                    cmd.CommandType = cmdType;
                    cmd.CommandText = commandName;

                    try
                    {
                        if (con.State != ConnectionState.Open)
                        {
                            con.Open();
                        }
                        using (SqlDataAdapter da = new SqlDataAdapter(cmd))
                        {
                            table = new DataTable();
                            da.Fill(table);
                        }
                    }
                    catch
                    {
                        throw;
                    }
                }
            }
            return table;
        }
        #endregion Select()
    }
}

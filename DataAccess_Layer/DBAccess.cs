using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlTypes;
using System.Data.SqlClient;
using System.Text;
using Data_Access_Layer.Library.ViewModels;

namespace Data_Access_Layer
{
   public  class DBAccess
    {

        public List<uspBranch> GetBranch()
        {
            List<uspBranch> list = new List<uspBranch>();
            using (DataTable table = DBHelper.Select("sp_Branch", CommandType.StoredProcedure))
            {
                if (table.Rows.Count > 0)
                {
                    foreach (DataRow row in table.Rows)
                    {
                        uspBranch branch = new uspBranch
                        {
                            BranchNo = Convert.ToInt32(row["BrachNo"]),
                            BranchName = row["BranchName"].ToString()
                        };
                        list.Add(branch);
                    }
                }
            }
            return list;
        }

        public List<uspBrand> GetBrand()
        {
            List<uspBrand> list = new List<uspBrand>();
            using (DataTable table = DBHelper.Select("sp_Brands", CommandType.StoredProcedure))
            {
                if (table.Rows.Count > 0)
                {
                    foreach (DataRow row in table.Rows)
                    {
                        uspBrand brand = new uspBrand
                        {
                            BrandNo = Convert.ToInt32(row["BrandNo"]),
                            BrandName = row["BrandName"].ToString()
                        };
                        list.Add(brand);
                    }
                }
            }
            return list;
        }

        public List<uspCity> GetCity()
        {
            List<uspCity> list = new List<uspCity>();
            using (DataTable table = DBHelper.Select("sp_City", CommandType.StoredProcedure))
            {
                if (table.Rows.Count > 0)
                {
                    foreach (DataRow row in table.Rows)
                    {
                        uspCity city = new uspCity
                        {
                            CityNo = Convert.ToInt32(row["CityNo"]),
                            CityName = row["CityName"].ToString()
                        };
                        list.Add(city);
                    }
                }
            }
            return list;
        }

        public List<uspProvince> GetProvince()
        {
            List<uspProvince> list = new List<uspProvince>();
            using (DataTable table = DBHelper.Select("sp_Province", CommandType.StoredProcedure))
            {
                if (table.Rows.Count > 0)
                {
                    foreach (DataRow row in table.Rows)
                    {
                        uspProvince prov = new uspProvince
                        {
                            ProvinceNo = Convert.ToInt32(row["ProvinceNo"]),
                            ProvinceName = row["provinceName"].ToString()
                        };
                        list.Add(prov);
                    }
                }
            }
            return list;
        }

        public List<uspVehicle> GetVehicle()
        {
            List<uspVehicle> list = new List<uspVehicle>();
            using (DataTable table = DBHelper.Select("sp_Vehicles", CommandType.StoredProcedure))
            {
                if (table.Rows.Count > 0)
                {
                    foreach (DataRow row in table.Rows)
                    {
                        uspVehicle veh = new uspVehicle
                        {

       
                         CarNo = Convert.ToInt32(row["CarNo"].ToString()),
                         CarLicenseNo = row["CarLicenseNo"].ToString(),
                         CarModelYear = Convert.ToInt32(row["CarModelYear"].ToString()),
                         CarMake = row["CarMake"].ToString(),
                         FuelType = row["FuelType"].ToString(),
                         DoorNo = Convert.ToInt32(row["DoorNo"].ToString()),
                         SeatNo = Convert.ToInt32(row["SeatNO"].ToString()),
                        
                         Color = row["Color"].ToString(),
                         Power = row["Power"].ToString(),
                         Mileage = row["Mileage"].ToString(),
                         BranchNo = Convert.ToInt32(row["BranchNo"].ToString()),
                         BrandNo = Convert.ToInt32(row["BrandNo"].ToString()),
                         VehicleTypeID = Convert.ToInt32(row["VehicleTypeID"]),
                         ///Image = Convert.ToByte(row["Image"])

                        };
                        list.Add(veh);
                    }
                }
            }
            return list;
        }

        public List<uspVehicleType> GetVehicleType()
        {
            List<uspVehicleType> list = new List<uspVehicleType>();
            using (DataTable table = DBHelper.Select("sp_VehicleType", CommandType.StoredProcedure))
            {
                if (table.Rows.Count > 0)
                {
                    foreach (DataRow row in table.Rows)
                    {
                        uspVehicleType vehType = new uspVehicleType
                        {
                            VehicleTypeID = Convert.ToInt32(row["VehicleTypeID"]),
                            VehicleType = row["VehicleType"].ToString()
                        };
                        list.Add(vehType);
                    }
                }
            }
            return list;
        }



        //Adding
        public bool AddBrand(string BrandName)
        {
            SqlParameter[] parameters = new SqlParameter[]
            { new SqlParameter("@BrandName",BrandName),
            };

            return DBHelper.NonQuery("sp_AddBrand", CommandType.StoredProcedure, parameters);
        }

        public bool AddBranch(string BranchName)
        {
            SqlParameter[] parameters = new SqlParameter[]
            { new SqlParameter("@BranchName",BranchName),
            };

            return DBHelper.NonQuery("sp_Add_Branch", CommandType.StoredProcedure, parameters);
        }

        public bool AddVehicleType(string VehicleType)
        {
            SqlParameter[] parameters = new SqlParameter[]
            { new SqlParameter("@VehicleType",VehicleType),
            };

            return DBHelper.NonQuery("sp_Add_Vehicle_Type", CommandType.StoredProcedure, parameters);
        }
        public bool AddVehicleImage( byte[] Image,string Name)
        {
            SqlParameter[] parameters = new SqlParameter[]
            {

                new SqlParameter("@VehicleImage",Image),
                new SqlParameter("@Name",Name),
               
            };

            return DBHelper.NonQuery("sp_AddVehicleImage", CommandType.StoredProcedure, parameters);
        }
        public bool AddVehicle(
            string CarMake,
            string CarLicenseNo,
            int CarModelYear,
            string FuelType, 
            int DoorNo, 
            int SeatNO, 
            string Color,
            string Power, 
            string Mileage, 
            int BranchNo, 
            int VehicleTypeID,
            int BrandNo,
            byte [] Image, double price)
        {
            SqlParameter[] parameters = new SqlParameter[]
            {
       
                new SqlParameter("@CarMake",CarMake),
                new SqlParameter("@CarLicenseNo",CarLicenseNo),
                new SqlParameter("@CarModelYear",CarModelYear),
                 new SqlParameter("@FuelType",FuelType),
                new SqlParameter("@DoorNo",DoorNo),
                new SqlParameter("@SeatNO",SeatNO),
                new SqlParameter("@Color",Color),
                new SqlParameter("@Power",Power),
                new SqlParameter("@Mileage",Mileage),
                 new SqlParameter("@BranchNo",BranchNo),
                 new SqlParameter("@VehicleTypeID",VehicleTypeID),
                new SqlParameter("@BrandNo",BrandNo),
                new SqlParameter("@Image",Image),
                 new SqlParameter("@RentalPrice",price)
            };

            return DBHelper.NonQuery("sp_AddVehicle", CommandType.StoredProcedure, parameters);
        }
        public bool AddCustomer(string CustomerName, string PhoneNo , string Password, string EmailAddress, string HomeAddress, string WorkAddress, int Age, string IdNo,  string DLI, string DLE)
        {
            SqlParameter[] parameters = new SqlParameter[]
            {
                new SqlParameter("@CustomerName",CustomerName),
                new SqlParameter("@PhoneNo",PhoneNo),
                new SqlParameter("@Password",Password),
                new SqlParameter("@EmailAddress",EmailAddress),
                new SqlParameter("@HomeAddress",HomeAddress),
                new SqlParameter("@WorkAddress",WorkAddress),
                new SqlParameter("@Age",Age),
                new SqlParameter("@IdNo",IdNo),
                new SqlParameter("@DateDriversLicenseIssues",DLI),
                new SqlParameter("@DateLicenseExpire",DLE),
            };

            return DBHelper.NonQuery("sp_AddCustomer", CommandType.StoredProcedure, parameters);
        }

        public bool AddRentals(int CarNo, int CustomerID, DateTime DateReserved, DateTime DateReturned, int EmployeeID)
        {
            SqlParameter[] parameters = new SqlParameter[]
            {

                new SqlParameter("@CarNo",CarNo),
                new SqlParameter("@CustomerID",CustomerID),
                new SqlParameter("@DateReserved",DateReserved),
                 new SqlParameter("@DateReturned",DateReturned),
                new SqlParameter("@EmployeeID",EmployeeID),

            };

            return DBHelper.NonQuery("sp_AddEnquiry", CommandType.StoredProcedure, parameters);
        }


        public bool AddEnquiry(string Name, string Email, string Mobile, string Subject, string Message)
        {
            SqlParameter[] parameters = new SqlParameter[]
            {

                new SqlParameter("@Name",Name),
                new SqlParameter("@Email",Email),
                new SqlParameter("@Mobile",Mobile),
                 new SqlParameter("@Subject",Subject),
                new SqlParameter("@Message",Message),
                
            };

            return DBHelper.NonQuery("sp_AddEnquiry", CommandType.StoredProcedure, parameters);
        }



        //Login
        public DataTable AuthenticateUser(string emailAddress, string password)
        {
            SqlParameter[] parameters = new SqlParameter[]
                {
                    new SqlParameter("@EmailAdress",emailAddress),
                    new SqlParameter("@Password",password)
                };
            using (DataTable table = DBHelper.ParamSelect("sp_Login", CommandType.StoredProcedure, parameters))
                return table;

        }

        public List<uspVehicle> Get_Vehicle_Image(int CarNo)
        {
          
          
             List<uspVehicle> list = null;
            SqlParameter[] parameters = new SqlParameter[]
                 {
                          new  SqlParameter("@CarNo",CarNo),

                 };

            using (DataTable table = DBHelper.ParamSelect("sp_Image_By_ID", CommandType.StoredProcedure, parameters))
            {
                if (table.Rows.Count > 0)
                {
                    list = new List<uspVehicle>();
                    foreach (DataRow row in table.Rows)
                    {
                        uspVehicle search = new uspVehicle();
                       search.Image = Convert.ToByte(row["Image"]);
                       list.Add(search);
                    }
                }
            }
            return list;
        }






        public List<uspVehicle> Get_Vehicle_By_Type(int VehicleTypeID)
        {
            List<uspVehicle> list = null;
            SqlParameter[] parameters = new SqlParameter[]
                 {
                          new  SqlParameter("@VehicleTypeID",VehicleTypeID),

                 };

            using (DataTable table = DBHelper.ParamSelect("sp_SearchVehicleByType", CommandType.StoredProcedure, parameters))
            {
                if (table.Rows.Count > 0)
                {
                    list = new List<uspVehicle>();
                    foreach (DataRow row in table.Rows)
                    {
                        uspVehicle search = new uspVehicle();
                        search.CarNo = int.Parse(row["CarNo"].ToString());
                        search.CarLicenseNo = row["CarLicenseNo"].ToString();
                        search.CarMake = row["CarMake"].ToString();
                        search.CarModelYear = Convert.ToInt32(row["CarModelYear"].ToString());
                        search.FuelType = row["FuelType"].ToString();
                        search.DoorNo =int.Parse( row["DoorNo"].ToString());
                        search.SeatNo = int.Parse((row["SeatNO"].ToString()));
                        search.Color =row["Color"].ToString();
                        search.Power = row["Power"].ToString();
                        search.Mileage = (row["Mileage"].ToString());
                       // search.Image = Convert.ToByte(row["Image"]);
                       

                        list.Add(search);
                    }
                }
            }
            return list;
        }
        //Update


        //Delete


    }
}

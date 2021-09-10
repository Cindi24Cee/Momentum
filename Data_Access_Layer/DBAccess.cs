using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlTypes;
using System.Data.SqlClient;
using System.Text;
using Data_Access_Layer.Library.ViewModels;

namespace Data_Access_Layer
{
   public  class DBAccess : DBAccessBase
    {
        public override List<uspBranch> GetBranch()
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
                            BranchNo = Convert.ToInt32(row["BranchNo"]),
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
            using (DataTable table = DBHelper.Select("sp_Brand", CommandType.StoredProcedure))
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
            using (DataTable table = DBHelper.Select("sp_Vehicle", CommandType.StoredProcedure))
            {
                if (table.Rows.Count > 0)
                {
                    foreach (DataRow row in table.Rows)
                    {
                        uspVehicle veh = new uspVehicle
                        {

       
                         CarNo = Convert.ToInt32(row["ProvinceNo"]),
                         CarLicenseNo = row["provinceName"].ToString(),
                         CarMake = row["provinceName"].ToString(),
                         DoorNo = Convert.ToInt32(row["ProvinceNo"]),
                         SeatNo = Convert.ToInt32(row["ProvinceNo"]),
                         FuelType = row["provinceName"].ToString(),
                         Color = row["ProvinceNo"].ToString(),
                         Power = row["ProvinceNo"].ToString(),
                         Mileage = row["ProvinceNo"].ToString(),
                         CarModelYear = Convert.ToInt32(row["ProvinceNo"]),
                         BrandNo = Convert.ToInt32(row["provinceName"]),
                         VehicleTypeID = Convert.ToInt32(row["provinceName"]),
                         Image = Convert.ToByte(row["provinceName"])

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



     

        //login
        public DataTable AuthenticateUSer(string emailAddress, string password)
        {
            SqlParameter[] parameters = new SqlParameter[]
            {
             new SqlParameter("@emailAddress",emailAddress),
             new SqlParameter("@password",password)
                };
            using (DataTable table = DBHelper.ParamSelect("sp_login", CommandType.StoredProcedure, parameters))
                return table;

        }
    }
}

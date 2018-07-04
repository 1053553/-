using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

namespace OASystemManageDAL
{
    public class SqlHelper
    {
        //从配置文件中读取连接字符串
        private static string ConString = ConfigurationManager.ConnectionStrings["ConString"].ConnectionString;

        private static SqlCommand GetSqlCommand(string sql, bool IsPorc = false, params SqlParameter[] parter)
        {
            //打开数据库
            SqlConnection con = new SqlConnection(ConString);
            SqlCommand cmd = new SqlCommand(sql, con);
            //判断是否是存储过程
            if (IsPorc)
            {
                cmd.CommandType = CommandType.StoredProcedure;
            }
            if (parter.Length > 0)
            {
                cmd.Parameters.AddRange(parter);
            }
            //实例化
            cmd.Connection.Open();
            return cmd;
        }

        /// <summary>
        /// 返回增、删、改是否执行成功
        /// </summary>
        /// <param name="sql"></param>
        /// <param name="IsPorc"></param>
        /// <param name="parter"></param>
        /// <returns></returns>
        public static bool Mysql(string sql, bool IsPorc = false, params SqlParameter[] parter)
        {
            using (SqlCommand cmd = GetSqlCommand(sql, IsPorc, parter))
            {
                try
                {
                    if (cmd.ExecuteNonQuery() > 0)
                    {
                        return true;
                    }
                    return false;
                }
                catch (Exception)
                {

                    throw;
                }
            }
        }

        /// <summary>
        /// 返回多行结果
        /// </summary>
        /// <param name="sql"></param>
        /// <param name="IsPorc"></param>
        /// <param name="parter"></param>
        /// <returns></returns>
        public static SqlDataReader GetExecuteReader(string sql, bool IsPorc = false, params SqlParameter[] parter)
        {
            using (SqlCommand cmd = GetSqlCommand(sql, IsPorc, parter))
            {
                try
                {
                    return cmd.ExecuteReader();
                }
                catch (Exception)
                {

                    throw;
                }
            }
        }

        /// <summary>
        /// 返回一行结果
        /// </summary>
        /// <param name="sql"></param>
        /// <param name="IsPorc"></param>
        /// <param name="parter"></param>
        /// <returns></returns>
        public static object GetExecuteScalar(string sql, bool IsPorc = false, params SqlParameter[] parter)
        {
            using (SqlCommand cmd = GetSqlCommand(sql, IsPorc, parter))
            {
                return cmd.ExecuteScalar();
            }
        }
    }
}

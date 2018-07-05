using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using OASystemManageDAL;
using OASystemManageBLL;
using OASystemManageModles;
using System.Data.SqlClient;
using System.Data;

namespace OASystemManageBLL
{
    public class OARules
    {
        public static SqlDataReader GetTreeView()
        {
            string sql = "select * from Rules";
            SqlDataReader reader = SqlHelper.GetExecuteReader(sql, false);
            OARule aRule = new OARule();
            return reader;
        }
        public bool GetBookTypeInfoUpdate(string content)
        {
            string sql = $"update Rules set Content='{content}' where id =1";
            return SqlHelper.Mysql(sql, false);
        }
    }
}

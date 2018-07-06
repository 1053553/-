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
     public class ChangePwdUSBL
    {
        public bool GetChangePwd(string name,string pwd)
        {
            string sql = "update UserInfos set UserPwd='{pwd}' where UserName='{name}'";
            return SqlHelper.Mysql(sql, false);
        }
    }
}

using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using OASystemManageModles;
using OASystemManageBLL;
using System.Data.SqlClient;

namespace OA企业办公系统
{
    public partial class Regulations1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlDataReader sqd = OARules.GetTreeView();
            while (sqd.Read())
            {
                TextContent.Text= sqd["Content"].ToString();
            }

        }
    }
}
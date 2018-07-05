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
    public partial class AmendmentRegulations1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                Bind();
            }
        }

        public void Bind()
        {
            SqlDataReader sqd = OARules.GetTreeView();
            while (sqd.Read())
            {
                TextContents.Text = sqd["Content"].ToString();
            }
        }

        protected void Submit_Click(object sender, EventArgs e)
        {
            OARules rules = new OARules();
            rules.GetBookTypeInfoUpdate(TextContents.Text.ToString());
           if (rules.GetBookTypeInfoUpdate(TextContents.Text.ToString()))
            {
                Response.Write("<script>alert('修改成功!')</script>");
            }

        }
        protected void Reset_Click(object sender, EventArgs e)
        {
            TextContents.Text = "";
        }
    }
}
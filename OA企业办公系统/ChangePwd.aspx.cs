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
    public partial class ChangePwd1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            ChangePwdUSBL chpwd = new ChangePwdUSBL();
            chpwd.GetChangePwd(Account.Text, TextBox2.Text);
                if (chpwd.GetChangePwd(Account.Text, TextBox2.Text))
                {
                    Response.Write("<script>alert('修改成功!')</script>");
                }
        }
        protected void Button2_Click(object sender, EventArgs e)
        {
            TextBox1.Text = "";
            TextBox2.Text = "";
        }
    }
}
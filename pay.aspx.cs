using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebApplication1;
using WebApplication1.DataSet1TableAdapters;

namespace WebApplication1
{
    public partial class pay : System.Web.UI.Page
    {
        QueriesTableAdapter ispay = new QueriesTableAdapter();
        protected void Page_Load(object sender, EventArgs e)
        {
            string type = Request.QueryString["pay"];
            Image1.ImageUrl = "~/image/img" + type + ".jpg";
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            int oid = Convert.ToInt32(Request.QueryString["arg"]);
            if (Convert.ToBoolean(ispay.pay(oid)))
            {
                ClientScript.RegisterStartupScript(this.GetType(), "系统提示", "<script language='javascript'>alert('支付成功')</script>");
            }
            else
            {
                ClientScript.RegisterStartupScript(this.GetType(), "系统提示", "<script language='javascript'>alert('支付失败')</script>");
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("orderby.aspx");
        }
    }
}
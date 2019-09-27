using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebApplication1.DataSet1TableAdapters;

namespace WebApplication1
{
    public partial class Orderby : System.Web.UI.Page
    {
        OrderTableAdapter insert = new OrderTableAdapter();
        QueriesTableAdapter updatapay = new QueriesTableAdapter();
        protected void Page_Load(object sender, EventArgs e)
        {
            gridview();
        }
        void gridview()
        {
            string Uname = Session["Uname"].ToString();
            var allorder = insert.Getallorder(Uname);
            if (allorder.Rows.Count > 0)
            {
                GridView1.DataSource = allorder;
                GridView1.DataBind();
            }
        }
        protected void LinkButton1_Click1(object sender, EventArgs e)
        {
            LinkButton lbt = (LinkButton)sender;
            int arg = Convert.ToInt32(lbt.CommandArgument.ToString());
            Response.Redirect("pay.aspx?pay=wechat&arg=" + arg + "");
        }

        protected void LinkButton2_Click1(object sender, EventArgs e)
        {
            LinkButton lbt = (LinkButton)sender;
            int arg = Convert.ToInt32(lbt.CommandArgument.ToString());
            Response.Redirect("pay.aspx?pay=zfb&arg=" + arg + "");
        }
    }
}
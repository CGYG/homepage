using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebApplication1.DataSet1TableAdapters;

namespace WebApplication1
{
    public partial class order : System.Web.UI.Page
    {
        Room3TableAdapter p = new Room3TableAdapter();
        OrderTableAdapter insert = new OrderTableAdapter();
        QueriesTableAdapter updatapay = new QueriesTableAdapter();
        protected void Page_Load(object sender, EventArgs e)
        {
           
            rtype.Text = Request.QueryString["Rtype"];
            var price = p.Getorder(Request.QueryString["Rtype"]);
            rprice.Text = price.Rows[0]["Rprice"].ToString();
            uname.Text = Session["Uname"].ToString();
            hname.Text = price.Rows[0]["Hname"].ToString();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string Uname = Session["Uname"].ToString();
            string Hname = hname.Text.ToString();
            string Rtype = rtype.Text.ToString();
            DateTime selected = rl.SelectedDate;
            int Onum = Convert.ToInt32(onum.Text);
            var aaa = insert.insertOrder(Hname, Rtype, selected,Uname );
            var da = insert.GetHid(Hname);
            int Hid = Convert.ToInt32(da.Rows[0]["Hid"]);
            insert.UpdateNsy(Rtype, Hid);
        }

        protected void onum_TextChanged(object sender, EventArgs e)
        {
            sumprice.Text = (Convert.ToInt32(onum.Text) * Convert.ToInt32(rprice.Text)).ToString();
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("Orderby.aspx");
        }
    }
}
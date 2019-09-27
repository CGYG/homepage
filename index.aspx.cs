using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebApplication1.DataSet1TableAdapters;

namespace WebApplication1
{
    public partial class index : Page
    {
        DataTable2TableAdapter area = new DataTable2TableAdapter();
        DataTable1TableAdapter sea = new DataTable1TableAdapter();
        protected void Page_Load(object sender, EventArgs e)
        {
            Session["page"] = "0";
            datalistbind();
        }
        void datalistbind()
        {
            var hx = area.GetHarea("核心");
            if (hx.Rows.Count > 0)
            {
                DataList1.DataSource = hx;
                DataList1.DataBind();
            }
            hx = area.GetHarea("舒适");
            if (hx.Rows.Count > 0)
            {
                DataList2.DataSource = hx;
                DataList2.DataBind();
            }
            hx = area.GetHarea("外围");
            if (hx.Rows.Count > 0)
            {
                DataList3.DataSource = hx;
                DataList3.DataBind();
            }
        }

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            if (Panel1.Visible == true)
            {
                Panel1.Visible = false;
            }
            else
            {
                Panel1.Visible = true;
            }
        }

        protected void search_Click(object sender, EventArgs e)
        {
            if (Panel1.Visible != true)
            {
                Panel1.Visible = true;
            }
            string Harea = "%"+TextBox1.Text+"%";
            var areaview = sea.Getsearch(Harea);
            if (areaview.Rows.Count > 0)
            {
                DataList4.DataSource = areaview;
                DataList4.DataBind();
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (Panel1.Visible != false)
            {
                Panel1.Visible = false;
            }
        }
    }
}
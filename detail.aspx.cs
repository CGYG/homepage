using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebApplication1.DataSet1TableAdapters;

namespace WebApplication1
{
    public partial class detail : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            binddetail();
        }
        int id = 1;
        void binddetail()
        {
            ImageTableAdapter i = new ImageTableAdapter();
            var data=i.Getinfoimg(id);
            Label1.Text = data.Rows[0]["Hname"].ToString();
            Room1TableAdapter getRtype = new Room1TableAdapter();
            var data1=getRtype.GetData(id);
            DropDownList1.DataSource = data1;
            DropDownList1.DataTextField = "Rtype";
            DropDownList1.DataValueField = "Rtype";
            DropDownList1.DataBind();
        }

    }
}
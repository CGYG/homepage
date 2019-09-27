using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebApplication1.DataSet1TableAdapters;

namespace WebApplication1
{
    public partial class info : System.Web.UI.Page
    {
        ImageTableAdapter image = new ImageTableAdapter();
        RoomTableAdapter room = new RoomTableAdapter();
        NumTableAdapter num = new NumTableAdapter();
        Room1TableAdapter Rtype = new Room1TableAdapter();
        QueriesTableAdapter comment = new QueriesTableAdapter();

        protected void Page_Load(object sender, EventArgs e)
        {
            Session["hid"] = Convert.ToInt32(Request.QueryString["Hid"]);
            gridView();
        }

        void gridView()
        {
            int hid = Convert.ToInt32(Request.QueryString["Hid"]);
            var img = image.Getinfoimg(hid);
            var comment = num.GetInfoComment(hid);

            DataList1.DataSource = img;
            DataList1.DataBind();

            if (comment.Rows.Count > 0)
            {
                DataList2.DataSource = comment;
                DataList2.DataBind();
            }
            if (DropDownList1.Items.Count <= 0)
            {
                var rtype = Rtype.GetData(hid);
                for (int i = 0; i < rtype.Rows.Count; i++)
                {
                    ListItem item = new ListItem(rtype.Rows[i]["Rtype"].ToString(), rtype.Rows[i]["Rtype"].ToString());
                    DropDownList1.Items.Add(item);
                }
                DropDownList1.SelectedIndex = 0;
                var rom = room.GetInfoTypeAndNum(hid, DropDownList1.SelectedValue);
                Label1.Text = rom.Rows[0]["Rprice"].ToString() + "/天";
                Label2.Text = "剩余房间" + rom.Rows[0]["Nsy"].ToString();
            }
            var uname = num.GetInfoComment(hid);
            Label3.Text = uname.Rows[0]["Uname"].ToString();
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            if (Session["Uname"] == null)
            {
                ClientScript.RegisterStartupScript(this.GetType(), "系统提示", " <script language='javascript'>alert('预定前请先登录')</script>");
                Response.Redirect("login.aspx");
            }
            else
            {
                ClientScript.RegisterStartupScript(this.GetType(), "系统提示", " <script language='javascript'>alert('预定成功')</script>");
                Response.Redirect("order.aspx?Hid=" + Session["hid"] + "&Rtype=" + DropDownList1.SelectedValue);
            }
        }
        protected void DropDownList1_TextChanged(object sender, EventArgs e)
        {
            int hid = Convert.ToInt32(Request.QueryString["Hid"]);
            var grid3 = room.GetInfoTypeAndNum(hid, DropDownList1.SelectedValue);
            Label1.Text = grid3.Rows[0]["Rprice"].ToString() + "/天";
            Label2.Text = "剩余房间" + grid3.Rows[0]["Nsy"].ToString();
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            if (Session["Uname"] == null)
            {
                ClientScript.RegisterStartupScript(this.GetType(), "系统提示", " <script language='javascript'>alert('只有登录用户才能发表评论')</script>");
                Response.Redirect("login.aspx");
            }
            else
            {
                string Uname = Label3.Text;
                string Commentext = TextBox1.Text;
                int Hid = Convert.ToInt32(Request.QueryString["Hid"]);
                comment.InsertComment(Uname,Commentext,Hid);
                ClientScript.RegisterStartupScript(this.GetType(), "系统提示", " <script language='javascript'>alert('评论发表成功')</script>");
                gridView();
            }
        }
    }
}
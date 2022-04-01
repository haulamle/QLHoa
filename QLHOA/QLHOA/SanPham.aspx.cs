using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace QLHOA
{
    public partial class SanPham : System.Web.UI.Page
    {
        KetNoi kn = new KetNoi();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Page.IsPostBack) return;
            string q;
            if (Context.Items["ml"] == null)
                q = "select * from Hoa";
            else
            {
                string MaDM = Context.Items["ml"].ToString();
                q = "select * from Hoa where MaDM = '" + MaDM + "'";
            }
            try
            {
                this.DataList1.DataSource = kn.laydata(q);
                this.DataList1.DataBind();
            }
            catch (SqlException ex)
            {
                Response.Write(ex.Message);
            }
        }

        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            string maHoa = ((LinkButton)sender).CommandArgument;
            Context.Items["mh"] = maHoa;
            Server.Transfer("ChiTietSanPham.aspx");
        }
    }
}
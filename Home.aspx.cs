using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Home : System.Web.UI.Page
{
    QARDRepository qr = new QARDRepository();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            repproduct.DataSource = qr.getAllProduct().Where(x => x.activePro == true).Take(8);
            repproduct.DataBind();
        }
    }
    protected void btnaddEmail_Click(object sender, EventArgs e)
    {
        if (iptemail.Value == null || iptemail.Value == "")
        {
            ScriptManager.RegisterStartupScript(this, typeof(string), "script", "<script type=text/javascript> alert('Bạn chưa nhập email.');</script>", false);
        }
        else if (qr.checkmail(iptemail.Value) == false)
        {
            ScriptManager.RegisterStartupScript(this, typeof(string), "script", "<script type=text/javascript> alert('Email của bạn không đúng.');</script>", false);
        }
        else
        {
            if (qr.checkemailRegisnews(iptemail.Value))
            {
                int resutl = qr.insertRegisNews(iptemail.Value);
                if (resutl == 1)
                {
                    ScriptManager.RegisterStartupScript(this, typeof(string), "script", "<script type=text/javascript> alert('Thêm email thành công.');</script>", false);
                }
                else
                {
                    ScriptManager.RegisterStartupScript(this, typeof(string), "script", "<script type=text/javascript> alert('Thêm email thất bại.');</script>", false);
                }
            }
            else
            {
                ScriptManager.RegisterStartupScript(this, typeof(string), "script", "<script type=text/javascript> alert('Email của bạn đã được thêm.');</script>", false);
            }
        }
    }
}
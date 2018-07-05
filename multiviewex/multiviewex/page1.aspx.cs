using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace multiviewex
{
    public partial class page1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            MultiView1.ActiveViewIndex = 0;
        }

        protected void MultiView1_ActiveViewChanged(object sender, EventArgs e)
        {

        }

        protected void MultiView1_ActiveViewChanged1(object sender, EventArgs e)
        {

        }

     
        protected void Next1_Click(object sender, EventArgs e)
        {
            MultiView1.ActiveViewIndex =1;
        }

        protected void previous_Click(object sender, EventArgs e)
        {
            MultiView1.ActiveViewIndex -= 1;
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            MultiView1.ActiveViewIndex += 1;
        }

        protected void views_Click(object sender, EventArgs e)
        {
            name.Text = "Hello" + TextBox1.Text;
            marks.Text = "marks" + TextBox2.Text;

        }

    }
}
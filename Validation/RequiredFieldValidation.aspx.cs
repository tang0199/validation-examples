using System;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;

public partial class RequiredFieldValidation : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
	protected void btnOK_Click(object sender, EventArgs e)
	{
		// Abort the event if the page isn't valid.
		if (!Page.IsValid) return;

		lblMessage.Text = "All entries are valid";

	}
}

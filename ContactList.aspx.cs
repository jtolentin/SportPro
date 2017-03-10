using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ContsctList : System.Web.UI.Page
{
    private CallListData cList;

    protected void Page_Load(object sender, EventArgs e)
    {
        cList = CallListData.getCallList();
        // Customer currentCust = (Customer)HttpContext.Current.Session["presentCustomer"];
        if (!IsPostBack)
            DisplayList();

    }

    private void DisplayList()
    {
        ListBox1.Items.Clear();

        for (int i = 0; i < cList.numItems(); i++)
        {
            CustomerData c = cList.getCustomerByIndex(i);
            if (c != null)
                ListBox1.Items.Add(c.toString());
        }

    }

    protected void ClearButton_Click(object sender, EventArgs e)
    {
        if (cList.numItems() > 0)
        {
            ListBox1.Items.Clear();
            cList.clearAllCustomers();
        }
    }
    protected void DeleteButton_Click(object sender, EventArgs e)
    {
        if (cList.numItems() > 0)
        {
            if (ListBox1.SelectedIndex >= 0)
            {
                cList.RemoveAt(ListBox1.SelectedIndex);
                DisplayList();
            }

        }
    }


    protected void Button1_Click(object sender, EventArgs e)
    {
        Server.Transfer("Customer.aspx");
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        if (cList.numItems() > 0)
        {
            ListBox1.Items.Clear();
            cList.clearAllCustomers();
        }
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        if (cList.numItems() > 0)
        {
            if (ListBox1.SelectedIndex >= 0)
            {
                cList.RemoveAt(ListBox1.SelectedIndex);
                DisplayList();
            }

        }
    }
}
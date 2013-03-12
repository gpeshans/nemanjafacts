using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using APINS;
using System.Web.UI.HtmlControls;

namespace NemanjasFacts
{
    public partial class NemanjasFacts : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Random r = new Random();
            int rInt = r.Next(101, 1567); //for ints
            prikaziFracts(rInt.ToString());
        }
        public void prikaziFracts(String id)
        {
            Dictionary<string, string> dict = new Dictionary<string, string>();
            dict.Add("id", id);
            API fapi = new API("http://mentalfloss.com");
            JSONObject jo = fapi.Get("/api/1.0/views/amazing_facts.json", dict);
            JSONObject[] results = jo.Array;

            int dim = jo.Array.Length;

            if (dim == 0)
            {                
                fact.InnerHtml = "These are the Cicic's Facts!";                
            }
            else
            {
                String html = results[0].Dictionary["nid"].ToDisplayableString();
                fact.InnerHtml = html;
            }

        }
    }
    
}
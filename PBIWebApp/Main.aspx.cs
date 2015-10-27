
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Microsoft.IdentityModel.Clients.ActiveDirectory;
using System.Threading.Tasks;
using System.Net.Http;
using System.Collections.Specialized;
using Newtonsoft.Json;

namespace PBIWebApp
{
     /* NOTE: This sample is to illustrate how to authenticate a Power BI web app. 
     * In a production application, you should provide appropriate exception handling and refactor authentication settings into 
     * a secure configuration. Authentication settings are hard-coded in the sample to make it easier to follow the flow of authentication. */
    public partial class Main : Page
    {
        string baseUri = "https://api.powerbi.com/beta/myorg/";

        public AuthenticationResult authResult { get; set; }

        protected void Page_Load(object sender, EventArgs e)
        {
        }
    }
}
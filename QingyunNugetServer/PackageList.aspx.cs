using NuGet.Server;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Net;
using System.Text;
using System.Threading.Tasks;
using System.Web;
using System.Web.Mvc;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace QingyunNugetServer
{
    public partial class PackageList : System.Web.UI.Page
    {
        public string strPackageList = string.Empty;




        protected void Page_Load(object sender, EventArgs e)
        {
            //strPackageList = getPackageListString();
            //strPackageList = getPackageListStr2();
        }

        private string getPackageListString()
        {
            //string apiUrl = "http://localhost:26404/api/CustomerAPI";
            string apiUrlBase = "http://localhost:54455";
            WebClient client = new WebClient();

            
            //client.BaseAddress = apiUrlBase;
            client.Headers["Content-type"] = "application/json";
            client.Encoding = Encoding.UTF8;
            // string json = client.UploadString(apiUrl + "/GetCustomers", inputJson);
            string s = client.DownloadString("http://localhost:54455/nuget/packages");
            return s;
        }

        protected string getPackageListStr2()
        {
            string apiUrlBase = "http://localhost:54455";
            HttpWebRequest request = (HttpWebRequest)WebRequest.Create(apiUrlBase + "/nuget/packages");
            request.Method = "GET";
            var response = (HttpWebResponse)request.GetResponse();
            Stream recvStream = response.GetResponseStream();
            StreamReader sr = new StreamReader(recvStream, Encoding.UTF8);
            string s = string.Empty;
            while (!sr.EndOfStream)
            {
                s += sr.ReadLine();
            }

            return s;
        }
    }
}
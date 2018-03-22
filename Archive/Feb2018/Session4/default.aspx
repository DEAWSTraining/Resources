<%@ Page Language="C#" Debug="true"%>
<%@ Import namespace="System.Net" %>
<!DOCTYPE html>
<%
    string metaUrl = "http://169.254.169.254/latest/meta-data/";
    var webClient = new WebClient();
    instanceId.Text = webClient.DownloadString(metaUrl + "instance-id");
    localHostname.Text = webClient.DownloadString(metaUrl + "local-hostname");
    localIpv4.Text = webClient.DownloadString(metaUrl + "local-ipv4");
    publicHostname.Text = webClient.DownloadString(metaUrl + "public-hostname");
    publicIpv4.Text = webClient.DownloadString(metaUrl + "public-ipv4");
%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>TrekDay Demo Server</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
    <style>
        h4 {
        margin-top: 25px;
        }
        .row {
        margin-bottom: 20px;
        }
        .row .row {
        margin-top: 10px;
        margin-bottom: 0;
        }
        [class*="col-"] {
        padding-top: 15px;
        padding-bottom: 15px;
        background-color: #eee;
        background-color: rgba(86,61,124,.15);
        border: 1px solid #ddd;
        border: 1px solid rgba(86,61,124,.2);
        }

        hr {
        margin-top: 40px;
        margin-bottom: 40px;
        }
    </style>
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
  </head>
  <body>
        <div class="container">
          <div class="page-header">
            <h1>TrekDay Basecamp</h1>
            <p class="lead">AWS Essentials for Windows Admins</p>
          </div>
          <h3>Here is some information about this server:</h3>
          <p>The server 'sees' this by accessing a special endpoint http://169.254.169.254/</p>
          <table class="table">
                <thead>
                  <tr>
                    <th scope="col">metaData</th>
                    <th scope="col">value</th>
                  </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>instance-id</td>
                        <td><asp:Label runat="server" id="instanceId"></asp:Label></td>
                      </tr>
                  <tr>
                    <td>local-hostname</td>
                    <td><asp:Label runat="server" id="localHostname"></asp:Label></td>
                  </tr>
                  <tr>
                    <td>local-ipv4</td>
                    <td><asp:Label runat="server" id="localIpv4"></asp:Label></td>
                  </tr>
                  <tr>
                    <td>public-hostname</td>
                    <td><asp:Label runat="server" id="publicHostname"></asp:Label></td>
                  </tr>
                  <tr>
                     <td>public-ipv4</td>
                     <td><asp:Label runat="server" id="publicIpv4"></asp:Label></td>
                  </tr>
                </tbody>
              </table>
        </div> <!-- /container -->
        <!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
        <script src="../../assets/js/ie10-viewport-bug-workaround.js"></script>
      </body>
</html>
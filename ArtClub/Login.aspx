<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login</title>
    <meta charset="utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <link rel="stylesheet" href="css/LoginStyle.css" />
    <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css"/>
</head>
<body>
    <form id="form1" runat="server">
    <div class="container">
        <div class="jumbotron">
            <asp:Image ID="ImgLogo" runat="server" ImageUrl="images/logo.png" CssClass="img-responsive imgLogo" Width="198" Height="100" />
        </div>
    </div>
    <div class="container">
        <h4>To access your account please enter your email address and password in the form. </h4>
        <hr />

    </div>
    <div class="container">
        <div class="jumbotron">
            <div>
                <asp:Label ID="LblUserName" runat="server" AccessKey="N" AssociatedControlID="TxtUserName" >
                    User<u>n</u>ame
                </asp:Label>
                <asp:TextBox ID="TxtUserName" runat="server" CssClass="form-control"></asp:TextBox> 
            </div><br />
            <div>
                <asp:Label ID="LblPassword" runat="server" AccessKey="P" AssociatedControlID="TxtPassword">
                    <u>P</u>assword
                </asp:Label>
                <asp:TextBox ID="TxtPassword" runat="server" CssClass="form-control" TextMode="Password"></asp:TextBox> 
            </div><br />
            <div >
                <asp:CheckBox ID="ChkRemember" runat="server" Text="Remember" OnCheckedChanged="ChkRemember_CheckedChanged" 
                 AutoPostBack="true" TextAlign="right" ></asp:CheckBox>
            </div><br />
            <div>
                <asp:Button ID="BtnLogin" runat="server" Text="Submit" CssClass="btn btn-default" OnClick="BtnLogin_Click"/>
            </div>
                <br />
                 <!-- Trigger the modal with a button -->
            <button type="button" class="btn btn-md" data-toggle="modal" data-target="#myModal" 
             id="ForgotPass" runat="server">Forgot Password</button>

             <!-- Modal -->
              <div class="modal fade" id="myModal" role="dialog">
                <div class="modal-dialog modal-md">
                  <div class="modal-content">
                    <div class="modal-header">
                       <h4 class="modal-title">Enter your email address</h4>
                        <h5>A temporary password is sent to your email address</h5>
                    </div>
                    <div class="modal-body">
                      <asp:TextBox ID="TxtEmail" runat="server"  CssClass="form-control"></asp:TextBox>
                    </div>
                    <div class="modal-footer">
                       <asp:Button ID="BtnSendEmail" runat="server" CssClass="btn btn-default" Text="Send"/>
                    </div>
                  </div>
                </div>
               </div>
             </div>        
        </div>
        <div class="container">
            <div id="footer">
                    <h4><em><b>Share us on:</b></em></h4>
                   <asp:Image ID="ImgFacebook" runat="server" ImageUrl="images/facebook.png" width="45" Height="45" CssClass="iconImage"/>
                   <asp:Image ID="ImgInstagram" runat="server" ImageUrl="images/instagram.png" width="45" Height="45" CssClass="iconImage"/>
                   <asp:Image ID="Imgtwitter" runat="server" ImageUrl="images/twitter.png" width="45" Height="45" CssClass="iconImage"/>
            </div>
        </div>
    </form>
</body>
</html>

<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Create.aspx.cs" Inherits="Nasa.Create" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<title>Create your Pace Account</title>
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" rel="stylesheet" />
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #fff;
            background: url('Content/bg_login.jpeg');
            background-attachment: fixed; /* This will fix the background image */
            background-size: cover; /* Optional: Cover the entire viewport */
            background-position: center;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }
        .container {
            border: 1px solid #ddd;
            background-color: #fff;
            border-radius: 8px;
            padding: 40px;
            max-width: 450px;
            width: 100%;
            box-shadow: 0 2px 4px rgba(0,0,0,0.1);
        }
        .container img {
            width: 75px;
            display: block;
            margin: 0 auto 20px;
        }
        h1 {
            font-size: 24px;
            font-weight: 400;
            color: #202124;
            text-align: center;
        }
        .input-group {
            display: flex;
            justify-content: space-between;
            margin-bottom: 20px;
        }
        .input-group input {
            width: 48%;
            padding: 10px;
            font-size: 16px;
            border: 1px solid #dadce0;
            border-radius: 4px;
        }
        .full-width {
            width: 100%;
            margin-bottom: 20px;
        }
        .full-width input {
            width: calc(100% - 80px);
            padding: 10px;
            font-size: 16px;
            border: 1px solid #dadce0;
            border-radius: 4px;
        }
        .full-width span {
            display: inline-block;
            width: 70px;
            text-align: center;
            font-size: 16px;
            color: #5f6368;
            vertical-align: middle;
        }
        .link {
            color: #1a73e8;
            text-decoration: none;
            font-size: 14px;
            display: block;
            margin-bottom: 20px;
        }
        .password-group {
            display: flex;
            justify-content: space-between;
            margin-bottom: 20px;
        }
        .password-group input {
            width: 48%;
            padding: 10px;
            font-size: 16px;
            border: 1px solid #dadce0;
            border-radius: 4px;
        }
        .password-group .fa-eye {
            position: absolute;
            right: 10px;
            top: 50%;
            transform: translateY(-50%);
            cursor: pointer;
        }
        .info-text {
            font-size: 12px;
            color: #5f6368;
            margin-bottom: 20px;
        }
        .next-button {
            background-color: #1a73e8;
            color: #fff;
            border: none;
            padding: 10px 20px;
            font-size: 14px;
            border-radius: 4px;
            cursor: pointer;
            display: block;
            width: 100%;
            text-align: center;
            
        }
        .footer {
            display: flex;
            justify-content: space-between;
            font-size: 12px;
            color: #5f6368;
            margin-top: 20px;
        }
        .footer a {
            color: #1a73e8;
            text-decoration: none;
        }
        .footer select {
            border: none;
            background: none;
            font-size: 12px;
            color: #5f6368;
        }
        .illustration {
            text-align: center;
            margin-top: 20px;
        }
        .illustration img {
            width: 100px;
        }
        .illustration p {
            font-size: 14px;
            color: #5f6368;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <img src="Content/Logo.png" alt="Pace Logo" />

            <h1>Create your Pace Account</h1>

            <div class="input-group">
                <!-- ASP.NET TextBox controls for First name and Last name -->
                <asp:TextBox ID="txtFirstName" runat="server" CssClass="first-name" placeholder="First name"></asp:TextBox>
                <asp:TextBox ID="txtLastName" runat="server" CssClass="last-name" placeholder="Last name"></asp:TextBox>
            </div>

            <div class="full-width">
                <asp:TextBox ID="txtUsername" runat="server" CssClass="username" placeholder="Username"></asp:TextBox>
                <span>@gmail.com</span>
            </div>

            <a class="link" href="#">Use my current email address instead</a>

            <div class="password-group">
                <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" placeholder="Password"></asp:TextBox>
                <asp:TextBox ID="txtConfirmPassword" runat="server" TextMode="Password" placeholder="Confirm"></asp:TextBox>
                <i class="fas fa-eye"></i>
            </div>

            <p class="info-text">Use 8 or more characters with a mix of letters, numbers & symbols</p>

            <!-- ASP.NET Button control for Next -->
            <asp:Button ID="btnNext" runat="server" CssClass="next-button" Text="Next" OnClick="btnNext_Click" />

            <a class="link" href="login.aspx">Sign in instead</a>

            <div class="footer">
                <select>
                    <option>English (United States)</option>
                </select>
                <div>
                    <a href="#">Help</a>
                    <a href="#">Privacy</a>
                    <a href="#">Terms</a>
                </div>
           
    </form>
</body>
</html>


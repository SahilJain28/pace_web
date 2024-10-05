<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Nasa.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Sign In</title>
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" rel="stylesheet" />
    <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;500;700&display=swap" rel="stylesheet" />
    <style>
        body {
            font-family: 'Roboto', sans-serif;
            background-color: #f2f6fc;
            display: flex;
            background: url('Content/bg_login.jpeg');
            background-attachment: fixed; /* This will fix the background image */
            background-size: cover; /* Optional: Cover the entire viewport */
            background-position: center;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
        }
        .container {
            background-color: #fff;
            border-radius: 8px;
            box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
            padding: 40px;
            width: 400px;
            text-align: center;
        }
        .container img {
            width: 75px;
            margin-bottom: 20px;
        }
        .container h1 {
            font-size: 24px;
            font-weight: 500;
            margin: 0;
        }
        .container p {
            color: #5f6368;
            font-size: 14px;
            margin: 20px 0;
        }
        .container input[type="text"] {
            width: 100%;
            padding: 10px;
            margin: 10px 0;
            border: 1px solid #dadce0;
            border-radius: 4px;
            font-size: 16px;
        }
        .container a {
            color: #1a73e8;
            font-size: 14px;
            text-decoration: none;
        }
        .container a:hover {
            text-decoration: underline;
        }
        .container .actions {
            display: flex;
            justify-content: space-between;
            align-items: center;
            margin-top: 20px;
        }
        .container .actions button {
            background-color: #1a73e8;
            color: #fff;
            border: none;
            padding: 10px 20px;
            border-radius: 4px;
            font-size: 14px;
            cursor: pointer;
        }
        .container .actions button:hover {
            background-color: #1558b0;
        }
        .footer {
            text-align: center;
            margin-top: 20px;
            font-size: 12px;
            color: #5f6368;
        }
        .footer a {
            color: #5f6368;
            text-decoration: none;
            margin: 0 5px;
        }
        .footer a:hover {
            text-decoration: underline;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <img src="Content/Logo.png" alt="Pace logo" height="75" width="75" />
            <h1>Sign in</h1>
            <p>Use your Google Account</p>

            <!-- ASP.NET TextBox control for user input -->
            <asp:TextBox ID="txtEmailPhone" runat="server" placeholder="Email or phone"></asp:TextBox>
            <br />

            <a href="#">Forgot email?</a>
            <p>
                Not your computer? Use Guest mode to sign in privately.
                <a href="#">Learn more</a>
            </p>

            <div class="actions">
                <a href="Create.aspx">Create account</a>
                <!-- ASP.NET Button control for submitting the form -->
                <asp:Button ID="btnNext" runat="server" Text="Next" OnClick="btnNext_Click" />
            </div>
        </div>

        <div class="footer">
            <a href="#">English (United States)</a>
            <a href="#">Help</a>
            <a href="#">Privacy</a>
            <a href="#">Terms</a>
        </div>
    </form>
</body>
</html>

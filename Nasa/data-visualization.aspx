<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="data-visualization.aspx.cs" Inherits="Nasa.data_visualization" %>
<asp:Content ID="HeadContent" ContentPlaceHolderID="HeadContent" runat="server">
       <style>
        /* Tailwind utility styles */
        @import url('https://cdn.tailwindcss.com');
        
        /* Additional custom styles */
        body {
            background-color: #f7fafc;
            color: #1a202c;
        }

        header {
            background-color: #2c5282;
            color: white;
            padding: 1rem;
        }

        header h1 {
            font-size: 2rem;
            font-weight: bold;
        }

        nav ul {
            display: flex;
            gap: 1rem;
        }

        nav a {
            color: white;
            text-decoration: none;
        }

        nav a:hover {
            text-decoration: underline;
        }

        main {
            padding: 1rem;
        }

        footer {
            background-color: #2c5282;
            color: white;
            text-align: center;
            padding: 1rem;
        }

        #loginModal {
            position: fixed;
            top: 0;
            left: 0;
            right: 0;
            bottom: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            background-color: rgba(0, 0, 0, 0.5);
            display: none;
        }

        #loginModal .modal-content {
            background-color: white;
            padding: 2rem;
            border-radius: 0.5rem;
            width: 33%;
        }

        .modal-content input {
            width: 100%;
            padding: 0.5rem;
            margin-bottom: 1rem;
            border: 1px solid #cbd5e0;
        }

        .modal-content button {
            padding: 0.5rem 1rem;
            border: none;
            border-radius: 0.25rem;
            font-weight: bold;
        }

        .modal-content .close-button {
            background-color: #f56565;
            color: white;
            margin-top: 1rem;
        }

        .modal-content .login-button {
            background-color: #4299e1;
            color: white;
        }

        .modal-content .login-button:hover {
            background-color: #2b6cb0;
        }

        .modal-content .close-button:hover {
            background-color: #c53030;
        }
    </style>
</asp:Content>

<asp:Content ID="MainContent" ContentPlaceHolderID="MainContent" runat="server">
   
    <!-- Main Content -->
    <main class="container mx-auto p-4">
        <section class="mb-8">
            <h2 class="text-2xl font-bold mb-2">Data Visualization Tool</h2>
            <p class="mb-4">Visualize and analyze data collected from NASA's PACE mission. Use the tools below to explore various datasets.</p>
            <asp:DropDownList ID="dataSelect" runat="server" CssClass="border p-2 mb-4">
                <asp:ListItem Text="Select a dataset" Value="" Selected="True" Disabled="True"></asp:ListItem>
                <asp:ListItem Text="Aerosols" Value="aerosols"></asp:ListItem>
                <asp:ListItem Text="Plankton" Value="plankton"></asp:ListItem>
                <asp:ListItem Text="Cloud Cover" Value="clouds"></asp:ListItem>
            </asp:DropDownList>
            <asp:Button ID="fetchData" runat="server" Text="Fetch Data" CssClass="bg-blue-500 hover:bg-blue-700 text-white font-bold py-2 px-4 rounded" OnClick="FetchData_Click" />
            
            <div id="visualization" class="mt-4">
                <!-- Visualization content will go here -->
            </div>
        </section>
    </main>

    <!-- Login Modal -->
    <div id="loginModal" class="fixed inset-0 bg-gray-800 bg-opacity-50 hidden justify-center items-center">
        <div class="bg-white p-6 rounded-lg shadow-lg modal-content">
            <h2 class="text-xl font-bold mb-4">Login/Signup</h2>
            <asp:TextBox ID="emailInput" runat="server" CssClass="border p-2 w-full mb-4" Placeholder="Email"></asp:TextBox>
            <asp:TextBox ID="passwordInput" runat="server" TextMode="Password" CssClass="border p-2 w-full mb-4" Placeholder="Password"></asp:TextBox>
            <asp:Button ID="loginButton" runat="server" Text="Login" CssClass="login-button bg-blue-500 hover:bg-blue-700 text-white font-bold py-2 px-4 rounded" OnClick="Login_Click" />
            <button type="button" id="closeModal" class="close-button bg-red-500 hover:bg-red-700 text-white font-bold py-2 px-4 rounded mt-4">Close</button>
        </div>
    </div>

    <script>
        // JavaScript to handle opening and closing of the login modal
        document.getElementById('openLoginModal').addEventListener('click', function () {
            document.getElementById('loginModal').style.display = 'flex';
        });

        document.getElementById('closeModal').addEventListener('click', function () {
            document.getElementById('loginModal').style.display = 'none';
        });
    </script>

</asp:Content>

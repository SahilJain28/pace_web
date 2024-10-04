<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="explorer.aspx.cs" Inherits="Nasa.explorer" %>
<asp:Content ID="HeadContent" ContentPlaceHolderID="HeadContent" runat="server">


  <style>
        /* Custom styles */
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
            <h2 class="text-2xl font-bold mb-2">Explore</h2>
            <p class="mb-4">Dive into various topics related to Earth’s oceans and atmosphere. Use the tools available to expand your knowledge.</p>
            <ul class="list-disc ml-5 mb-4">
                <li><strong>Earth's Ecosystems:</strong> Learn about different ecosystems and their roles in climate regulation.</li>
                <li><strong>Ocean Currents:</strong> Study the impact of ocean currents on global weather patterns.</li>
                <li><strong>Climate Change:</strong> Explore data on climate change and its effects on Earth.</li>
            </ul>
            <a href="#" class="bg-blue-500 hover:bg-blue-700 text-white font-bold py-2 px-4 rounded">Start Exploring</a>
        </section>
    </main>
</asp:Content>

<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="virtual-labs.aspx.cs" Inherits="Nasa.virtual_labs" %>
<asp:Content ID="HeadContent" ContentPlaceHolderID="HeadContent" runat="server">
    <style>
        body {
            background: url('Content/backgroundimg_virtuallab.jpg');
            background-attachment: fixed; /* This will fix the background image */
            background-size: cover; /* Optional: Cover the entire viewport */
            background-position: center;
        }
    </style>
    <script src="https://cdn.tailwindcss.com"></script>
</asp:Content>

<asp:Content ID="MainContent" ContentPlaceHolderID="MainContent" runat="server">
    <body class="bg-gray-100 text-gray-900">

       
        <!-- Main Content -->
        <main class="container mx-auto p-4">
            <section class="mb-8">
                <h2 class="text-2xl font-bold mb-2">Virtual Labs</h2>
                <p class="mb-4">Engage in hands-on virtual experiments related to the PACE mission. Explore different aspects of oceanography and atmospheric science.</p>

                <!-- Phytoplankton Growth Experiment -->
                <div class="mb-8 p-4 bg-white rounded shadow">
                    <h3 class="text-xl font-bold mb-2">Phytoplankton Growth Experiment</h3>
                    <p>Adjust the sunlight and nutrient levels to see how they affect phytoplankton growth.</p>
                    <label for="sunlight" class="block mt-4">Sunlight (0-100%):</label>
                    <input type="range" id="sunlight" min="0" max="100" value="50" class="w-full" />
                    <span id="sunlightValue">50%</span>
                    <label for="nutrients" class="block mt-4">Nutrient Level (0-100%):</label>
                    <input type="range" id="nutrients" min="0" max="100" value="50" class="w-full" />
                    <span id="nutrientValue">50%</span>
                    <button id="runExperiment" class="bg-blue-500 hover:bg-blue-700 text-white font-bold py-2 px-4 rounded mt-4">Run Experiment</button>
                    <div id="phytoplanktonResult" class="mt-4"></div>
                </div>

                <!-- Cloud Formation Experiment -->
                <div class="mb-8 p-4 bg-white rounded shadow">
                    <h3 class="text-xl font-bold mb-2">Cloud Formation Experiment</h3>
                    <p>Adjust temperature and humidity levels to see how they affect cloud formation.</p>
                    <label for="temperature" class="block mt-4">Temperature (°C):</label>
                    <input type="number" id="temperature" min="-30" max="50" value="20" class="w-full" />
                    <label for="humidity" class="block mt-4">Humidity (%):</label>
                    <input type="number" id="humidity" min="0" max="100" value="50" class="w-full" />
                    <button id="cloudExperiment" class="bg-blue-500 hover:bg-blue-700 text-white font-bold py-2 px-4 rounded mt-4">Check Cloud Formation</button>
                    <div id="cloudResult" class="mt-4"></div>
                </div>
            </section>
        </main>



        <!-- Login Modal -->
        <div id="loginModal" class="fixed inset-0 bg-gray-800 bg-opacity-50 hidden justify-center items-center">
            <div class="bg-white p-6 rounded-lg shadow-lg w-1/3">
                <h2 class="text-xl font-bold mb-4">Login/Signup</h2>
                <form id="loginForm">
                    <input type="text" placeholder="Email" class="border p-2 w-full mb-4" required />
                    <input type="password" placeholder="Password" class="border p-2 w-full mb-4" required />
                    <button type="submit" class="bg-blue-500 hover:bg-blue-700 text-white font-bold py-2 px-4 rounded">Login</button>
                    <button type="button" id="closeModal" class="bg-red-500 hover:bg-red-700 text-white font-bold py-2 px-4 rounded mt-4">Close</button>
                </form>
            </div>
        </div>

        <!-- JavaScript -->
        <script src="script.js"></script>
    </body>
</asp:Content>
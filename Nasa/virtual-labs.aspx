<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="virtual-labs.aspx.cs" Inherits="Nasa.virtual_labs" %>
<asp:Content ID="HeadContent" ContentPlaceHolderID="HeadContent" runat="server">
    <style>
        /* Body Styling */
        body {
            color: white;
            background: url('Content/backgroundimg_virtuallab.jpg');
            background-attachment: fixed;
            background-size: cover;
            background-position: center;
            font-family: 'Arial', sans-serif;
        }

        /* Container */
        .container {
            max-width: 1200px;
            margin: auto;
        }

        /* Header and Titles */
        h2 {
            color: #1a202c;
            text-shadow: 1px 1px 2px rgba(0, 0, 0, 0.1);
        }

        h3 {
            color: #2d3748;
        }

        /* Experiment Boxes */
        .p-4 {
            border: 1px solid #e2e8f0;
            background-color: #f7fafc;
        }

        .rounded {
            border-radius: 8px;
        }

        .shadow {
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
        }

        /* Buttons */
        button {
            transition: background-color 0.3s ease;
        }

        button:hover {
            transform: scale(1.05);
        }

        /* Inputs */
        input[type="range"] {
            -webkit-appearance: none;
            width: 100%;
            height: 8px;
            background: #e2e8f0;
            border-radius: 5px;
            outline: none;
            transition: background 0.15s ease;
        }

        input[type="range"]::-webkit-slider-thumb {
            -webkit-appearance: none;
            appearance: none;
            width: 24px;
            height: 24px;
            background: #4299e1;
            cursor: pointer;
            border-radius: 50%;
            transition: background 0.3s ease;
        }

        input[type="range"]::-webkit-slider-thumb:hover {
            background: #3182ce;
        }

        /* Modal */
      
        /* Form Inputs */
        input[type="text"], input[type="password"] {
            border: 1px solid #e2e8f0;
            border-radius: 4px;
        }

        input[type="text"]:focus, input[type="password"]:focus {
            outline: none;
            border-color: #4299e1;
            box-shadow: 0 0 0 2px rgba(66, 153, 225, 0.5);
        }

        /* Responsive */
        @media (max-width: 768px) {
            #loginModal .bg-white {
                width: 90%;
            }
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

        <!-- JavaScript -->
<script>
    // Phytoplankton Growth Experiment
    const sunlightInput = document.getElementById("sunlight");
    const nutrientInput = document.getElementById("nutrients");
    const sunlightValue = document.getElementById("sunlightValue");
    const nutrientValue = document.getElementById("nutrientValue");
    const phytoplanktonResult = document.getElementById("phytoplanktonResult");
    const runExperiment = document.getElementById("runExperiment");

    // Update sunlight and nutrient values
    sunlightInput.addEventListener("input", () => {
        sunlightValue.textContent = `${sunlightInput.value}%`;
    });
    nutrientInput.addEventListener("input", () => {
        nutrientValue.textContent = `${nutrientInput.value}%`;
    });

    // Run Phytoplankton Growth Experiment
    runExperiment.addEventListener("click", (event) => {
        event.preventDefault(); // Prevent page reload
        const sunlight = sunlightInput.value;
        const nutrients = nutrientInput.value;

        let growthMessage = "The growth of phytoplankton is ";

        if (sunlight > 70 && nutrients > 70) {
            growthMessage += "optimal!";
        } else if (sunlight > 30 && nutrients > 30) {
            growthMessage += "moderate.";
        } else {
            growthMessage += "low.";
        }

        phytoplanktonResult.textContent = growthMessage; // Display the result
    });

    // Cloud Formation Experiment
    const temperatureInput = document.getElementById("temperature");
    const humidityInput = document.getElementById("humidity");
    const cloudResult = document.getElementById("cloudResult");
    const cloudExperiment = document.getElementById("cloudExperiment");

    // Check Cloud Formation
    cloudExperiment.addEventListener("click", (event) => {
        event.preventDefault(); // Prevent page reload
        const temperature = temperatureInput.value;
        const humidity = humidityInput.value;

        let cloudMessage = "Cloud formation is ";

        if (temperature < 0 && humidity > 80) {
            cloudMessage += "high.";
        } else if (temperature >= 0 && temperature <= 30 && humidity > 50) {
            cloudMessage += "possible.";
        } else {
            cloudMessage += "unlikely.";
        }

        cloudResult.textContent = cloudMessage; // Display the result
    });
</script>

    </body>
</asp:Content>

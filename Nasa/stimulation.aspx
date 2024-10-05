<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="stimulation.aspx.cs" Inherits="Nasa.stimulation" %>
<asp:Content ID="TitleContent" ContentPlaceHolderID="TitleContent" runat="server">
    Simulation Explorer
</asp:Content>

<asp:Content ID="MainContent" ContentPlaceHolderID="MainContent" runat="server">

    <!-- Embedded CSS -->
    <style>
        body {
            font-family: 'Poppins', sans-serif;
            background: url('Content/gg.gif') repeat;
            margin: 0;
            padding: 0;
            background-color: #000;
            color: white;
            overflow-x: hidden;
        }

        header {
            display: flex;
            justify-content: space-between;
            align-items: center;
            padding: 20px;
            background-color: rgba(5, 5, 5, 0.8);
            color: rgb(99, 158, 236);
        }

        header .logo {
            font-size: 1.8em;
            font-weight: bold;
            color: #1abc9c;
        }

        nav ul {
            list-style-type: none;
            margin: 0;
            padding: 0;
            display: flex;
        }

        nav ul li {
            margin-left: 20px;
        }

        nav ul li a {
            color: rgb(227, 245, 126);
            text-decoration: none;
            padding: 5px 15px;
            font-size: 1.2em;
        }

        nav ul li a:hover {
            background-color: #1abc9c;
            border-radius: 5px;
            transition: background-color 0.3s ease;
        }

        .simulation-section {
            padding: 40px;
            text-align: center;
        }

        .simulation-section h1 {
            font-size: 3em;
            margin-bottom: 20px;
            color: #f39c12;
        }

        .simulation-section p {
            font-size: 1.5em;
            margin-bottom: 40px;
        }

        .simulation-cards {
            display: grid;
            grid-template-columns: repeat(auto-fill, minmax(300px, 1fr));
            gap: 30px;
        }

        .card {
            background-color: rgba(255, 255, 255, 0.1);
            padding: 30px;
            border-radius: 15px;
            text-align: center;
            box-shadow: 0 8px 16px rgba(0, 0, 0, 0.6);
            transition: transform 0.3s ease, box-shadow 0.3s ease;
        }

        .card:hover {
            transform: translateY(-10px);
            box-shadow: 0 12px 24px rgba(0, 0, 0, 0.9);
        }

        .card h3 {
            margin-bottom: 15px;
            font-size: 2em;
            color: #e74c3c;
        }

        .card p {
            color: #94e5fa;
            font-size: 1.2em;
        }

        .start-simulation {
            margin-top: 20px;
            padding: 12px 20px;
            font-size: 1.2em;
            background-color: #113f5e;
            color: white;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }

        .start-simulation:hover {
            background-color: #3498db;
        }

        canvas {
            margin-top: 20px;
            max-width: 100%;
            height: auto;
            border: 2px solid #fff;
            border-radius: 10px;
        }

        footer {
            background-color: rgba(44, 62, 80, 0.9);
            padding: 20px;
            text-align: center;
            color: white;
        }

        footer .footer-links a {
            color: white;
            margin: 0 15px;
            text-decoration: none;
            font-size: 1.2em;
        }

        footer .footer-links a:hover {
            text-decoration: underline;
        }
    </style>

    <!-- Main Section: Simulation Explorer -->
    <main>
        <section class="simulation-section">
            <h1>Simulation Explorer</h1>
            <p>Explore educational games and interactive simulations based on NASA’s PACE mission data. Learn how ocean ecosystems, cloud formations, and atmospheric particles affect our planet!</p>

            <div class="simulation-cards">
                <!-- Simulation 1: Ocean Temperature Monitoring -->
                <div class="card">
                    <h3>Ocean Temperature Monitoring</h3>
                    <p>Simulate and track ocean temperature changes over time. Understand how climate change impacts ocean ecosystems.</p>
                    <asp:Button ID="btnSimulation1" runat="server" Text="Start Simulation" CssClass="start-simulation" OnClick="btnSimulation1_Click" />
                    <canvas id="ocean-temp-chart"></canvas>
                </div>
                <!-- Add more simulation cards as needed -->
                <div class="card">
                    <h3>Cloud Formation Game</h3>
                    <p>Control atmospheric conditions to form different types of clouds. Discover how clouds impact Earth's climate.</p>
                    <asp:Button ID="Button1" runat="server" Text="Start Simulation" CssClass="start-simulation" OnClick="btnSimulation1_Click" />
                </div>
                <!-- Simulation 3: Plankton Growth Cycle -->
                <div class="card">
                    <h3>Plankton Growth Cycle</h3>
                    <p>Control the environment to grow plankton and understand their vital role in Earth's ecosystems and carbon cycle.</p>
                    <asp:Button ID="Button2" runat="server" Text="Start Simulation" CssClass="start-simulation" OnClick="btnSimulation1_Click" />
                </div>
                <!-- Simulation 4: Atmospheric Particle Analysis -->
                <div class="card">
                    <h3>Atmospheric Particle Analysis</h3>
                    <p>Analyze aerosol data from NASA's PACE satellite. Learn about air quality and its effect on human health and the environment.</p>
                    <asp:Button ID="Button3" runat="server" Text="Start Simulation" CssClass="start-simulation" OnClick="btnSimulation1_Click" />
                </div>
            </div>
        </section>
    </main>

    <!-- Embedded JavaScript -->
    <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
    <script>
        document.addEventListener('DOMContentLoaded', function() {
            // Ocean Temperature Simulation using Chart.js
            const ctx = document.getElementById('ocean-temp-chart').getContext('2d');

            const oceanTempChart = new Chart(ctx, {
                type: 'line',
                data: {
                    labels: ['Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun', 'Jul', 'Aug', 'Sep', 'Oct', 'Nov', 'Dec'],
                    datasets: [{
                        label: 'Ocean Temperature (°C)',
                        data: [20, 21, 23, 24, 25, 26, 28, 29, 27, 24, 22, 21],
                        backgroundColor: 'rgba(46, 204, 113, 0.3)', // Greenish transparent fill
                        borderColor: '#1abc9c', // Bright green border for a futuristic look
                        borderWidth: 2,
                        fill: true
                    }]
                },
                options: {
                    scales: {
                        y: {
                            beginAtZero: false,
                            suggestedMin: 15,
                            suggestedMax: 35
                        }
                    }
                }
            });

            // Adding interactive event listeners to simulation buttons
            document.querySelectorAll('.start-simulation').forEach(button => {
                button.addEventListener('click', function() {
                    alert(`Starting ${this.getAttribute('data-simulation')} Simulation!`);
                });
            });
        });
    </script>

</asp:Content>


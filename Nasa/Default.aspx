<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="Nasa._default" %>
<asp:Content ID="HeadContent" ContentPlaceHolderID="HeadContent" runat="server">
    <!-- Inline CSS for the Page -->
    <style>
        body {
            font-family: 'Roboto', sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f4f4f4;
        }
        .header {
            background-color: #0a1f44;
            color: white;
            padding: 20px;
            display: flex;
            justify-content: space-between;
            align-items: center;
        }
        .header img {
            height: 50px;
        }
        .header nav a {
            color: white;
            margin: 0 15px;
            text-decoration: none;
        }
        .hero {
            background: url('Content/Satellite.jpeg') no-repeat center center/cover;
            color: white;
            text-align: center;
            padding: 100px 20px;
        }
        .hero h1 {
            font-size: 48px;
            margin: 0;
        }
        .hero p {
            font-size: 24px;
            margin: 20px 0;
        }
        .hero button {
            background-color: #ff7f00;
            color: white;
            border: none;
            padding: 15px 30px;
            font-size: 18px;
            cursor: pointer;
        }
        .mission {
            background-color: #ff7f00;
            color: white;
            padding: 50px 20px;
            text-align: center;
        }
        .mission h2 {
            font-size: 36px;
            margin: 0 0 20px;
        }
        .mission p {
            font-size: 18px;
            margin: 0;
        }
        .content {
            padding: 50px 20px;
            display: flex;
            justify-content: space-between;
            flex-wrap: wrap;
        }
        .content .card {
            background-color: white;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            margin: 20px;
            flex: 1;
            min-width: 300px;
            max-width: 45%;
            padding: 20px;
        }
        .content .card h3 {
            font-size: 24px;
            margin: 0 0 10px;
        }
        .content .card p {
            font-size: 16px;
            margin: 0 0 20px;
        }
        .content .card button {
            background-color: #0a1f44;
            color: white;
            border: none;
            padding: 10px 20px;
            font-size: 16px;
            cursor: pointer;
        }
        .footer {
            background-color: #0a1f44;
            color: white;
            text-align: center;
            padding: 20px;
        }
        .footer p {
            margin: 0;
        }
    </style>
</asp:Content>

<asp:Content ID="MainContent" ContentPlaceHolderID="MainContent" runat="server">
    <!-- Hero Section -->
    <section class="hero">
        <h1>WHAT IS PACE ?</h1>
        <p>
            The Plankton, Aerosol, Cloud, Ocean Ecosystem (PACE) mission is a NASA satellite that will study the ocean, atmosphere, and climate.
            The PACE satellite was launched on February 8, 2024, on a SpaceX Falcon 9 rocket from Cape Canaveral Space Force Station in Florida.
        </p>
        <button>Learn More</button>
    </section>

    <!-- Mission Section -->
    <section class="mission">
        <h2>How Pace Works</h2>
        <p>
            PACE will help us better understand our ocean and atmosphere by measuring key variables associated with cloud formation, 
            particles, and pollutants in the air, and microscopic, floating marine life (phytoplankton).
        </p>
    </section>

    <!-- Content Section with Cards -->
    <section class="content">
        <div class="card">
            <h3>PACE Data Set</h3>
            <p>Program of All-Inclusive Care for the Elderly (PACE) Rates...</p>
            <button>Learn More</button>
        </div>
        <div class="card">
            <h3>Education Video</h3>
            <p>Explore the science of NASA's PACE mission...</p>
            <button>Watch Video</button>
        </div>
        <div class="card">
            <h3>Explore</h3>
            <p>Learn how PACE stores and manages data.</p>
            <button>Learn More</button>
        </div>
        <div class="card">
            <h3>More News</h3>
            <p>Here's some recent news about NASA's PACE mission.</p>
            <button>Read More</button>
        </div>
    </section>
</asp:Content>
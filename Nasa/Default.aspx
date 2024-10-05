<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="Nasa._default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
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
                background: url('Content/satellite11.gif') repeat center center/cover;
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
            .button1 {
                background-color: #6a9ab0;
                color: white;
                border: ridge;
                padding: 15px 30px;
                font-size: 18px;
                cursor: pointer;
            }
            .button1:hover {
            background-color: #ff7f00;
        }
            .button {
                padding: 10px 15px;
                background-color: #1abc9c;
                color: white;
                border: none;
                border-radius: 5px;
                cursor: pointer;
            }
            .button:hover {
            background-color: #ff7f00;
        }
            .mission {
                background-color: #596772;
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
    

    <section class="hero">
        <h1>WHAT IS PACE ?</h1>
        <p>
            The Plankton, Aerosol, Cloud, Ocean Ecosystem (PACE) mission is a NASA satellite that will study the ocean, atmosphere, and climate.
            The PACE satellite was launched on February 8, 2024, on a SpaceX Falcon 9 rocket from Cape Canaveral Space Force Station in Florida.
            It will orbit the Earth at an altitude of 420 miles, which is about 70% higher than the International Space Station's orbit.
        </p>
        <asp:Button class="button1" ID="LearnMoreButton" runat="server" Text="Learn More" OnClick="LearnMoreButton_Click" />
    </section>

    <section class="mission">
        <h2>How Pace Works</h2>
        <p>
            PACE will help us better understand our ocean and atmosphere by measuring key variables associated with cloud formation, particles and pollutants in the air, and microscopic, floating marine life (phytoplankton).
            These observations will help us better monitor ocean health, air quality, and climate change.
        </p>
    </section>

    <section class="content">
        <div class="card">
            <h3>PACE Data Set</h3>
            <p>
                Program of All-Inclusive Care for the Elderly (PACE) Rates<br />
                State of California — The datasets contain reimbursement rates paid to participating Program of All-Inclusive Care for the Elderly (PACE) organizations for calendar years 2015-2022.
            </p>
            <asp:Button class="button" ID="DataSetLearnMoreButton" runat="server" Text="Learn More" OnClick="DataSetLearnMoreButton_Click" />
        </div>

        <div class="card">
            <h3>Education Video</h3>
            <p>
                Explore the science of NASA's PACE mission.<br />
                NASA's Launch Services Program (LSP) is preparing for its first launch of 2024. On board a SpaceX Falcon 9 rocket is the PACE ...
            </p>
            <asp:HyperLink ID="EducationVideoLink" runat="server" NavigateUrl="../NASA SPACE APP/Pace Explorer/educationpage/index.html">
                <asp:Button class="button" ID="WatchVideoButton" runat="server" Text="Watch Video" />
            </asp:HyperLink>
        </div>

        <div class="card">
            <h3>Explore</h3>
            <p>Learn How the PACE stored Data and How they manage Data.</p>
            <asp:Button class="button" ID="ExploreButton" runat="server" Text="Learn More" OnClick="ExploreButton_Click" />
        </div>

        <div class="card">
            <h3>More News</h3>
            <p>Here's some recent news about NASA's PACE (Plankton, Aerosol, Cloud, ocean Ecosystem) mission.</p>
            <asp:Button class="button" ID="MoreNewsButton" runat="server" Text="Read More" OnClick="MoreNewsButton_Click" />
        </div>
    </section>

</asp:Content>

<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Main.aspx.cs" Inherits="PBIWebApp.Main" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="row">

        <!-- Embed tiles / map -->
        <div class="col-md-6">
            <div class="panel panel-default shadow-z-2">
                <div class="panel-body" style="height:450px;">
                    <%--<iframe id="iFrameEmbedTile" src="http://www.bing.com/mapspreview?&cp=37.72574~-122.478099&lvl=11&v=2&sV=1&form=S00027" allowfullscreen frameborder="0" seamless></iframe>--%>
                    <iframe id="iFrameEmbedTile" src="https://www.google.com/maps/embed?pb=!1m14!1m12!1m3!1d35754.88807459748!2d-122.37113010257538!3d37.6182663546467!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!5e0!3m2!1sen!2sus!4v1445941893782" frameborder="0" style="border:0" allowfullscreen></iframe>
                </div>
            </div>
        </div>
        
        <div class="col-md-3">
            <%--<div class="panel panel-default no-bd">--%>
            <div class="panel panel-transparent no-bd">

                <div class="panel-body bg-white">
                    <div class="row">
                        <div class="col-md-12">
                            <asp:Panel ID="PanelPredictInputs" runat="server" Visible="true">
                                <div class="form-group m-b-30">
                                    <p>From</p>
                                    <input class="form-control" type="text" id="tb_from" value="SAN" />
                                </div>
                                <div class="form-group m-b-30">
                                    <p>To</p>
                                    <input class="form-control" type="text" id="tb_to" value="SEA" />
                                </div>
                                <div class="form-group m-b-30">
                                    <p>Date</p>
                                    <input class="form-control" type="text" id="tb_date" value="11/15/2015" />
                                </div>
                                <div class="form-group m-b-30">
                                    <p>Time</p>
                                    <input class="form-control" type="text" id="tb_time" value="5:00 PM" />
                                </div>
                                <div class="form-group m-b-30">
                                    <p>Carrier</p>
                                    <input class="form-control" type="text" id="tb_carrier" placeholder="Enter a carrier" />
                                </div>
                                <input class="btn btn-primary" type="button" id="bPredictDelay" value="Predict Delay" />
                            </asp:Panel>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div class="col-md-3">
            <div class="panel panel-transparent no-bd">
                <div class="panel-body bg-white">
                    <asp:Panel ID="PanelPredictResults" runat="server" Visible="true">
                        <div class="row">
                            <div class="col-md-12">
                                <h3>Weather Forcast</h3>
                                <img id="weatherForecast" src="http://icons.wxug.com/i/c/k/partlycloudy.gif" />
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-12">
                                <h3>Delay Prediction</h3>
                                <div class="prediction prediction-mid shadow-z-1">
                                    <span id="predictionDelay">expect delays (73% confidence)</span>
                                </div>
                            </div>
                        </div>
                    </asp:Panel>
                </div>
            </div>
        </div>

    </div>

</asp:Content>
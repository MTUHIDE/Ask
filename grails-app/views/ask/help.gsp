<html>
<asset:stylesheet src="application.css"/>
<asset:stylesheet src="bootstrap.css"/>
<asset:stylesheet href="navigation.css"/>
<asset:javascript src="navigation.js"/>
<head>
    <style>
    p {
        font-size: 18px;
        
    }
    </style>
</head>
<body style="background: #8a8b8c">
<!--navigation bar-->
<div class = "navbtn" onmouseover = "openNav()">
    <a href="http://localhost:8080/">
        <img src="${resource(dir:'images',file:'clipart-home-icon-6.png')}" /> </a>
    <a href="http://localhost:8080/ask/stats.html">
        <img src="${resource(dir:'images',file:'plainicon.com-10528-256px.png')}" /> </a>
    <a href="http://localhost:8080/ask.html">
        <img src="${resource(dir:'images',file:'Question-mark-blackandwhite.png')}" /> </a>
    <a href="http://localhost:8080/ask/edit.html">
        <img src="${resource(dir:'images',file:'22-512.png')}" /> </a>
    <a href="http://localhost:8080/touch/index.html">
        <img src="${resource(dir:'images',file:'52479-200.png')}" /> </a>
    <a href="http://localhost:8080/ask/help.html">
        <img src="${resource(dir:'images',file:'1110.png')}" /> </a>

    <div id="myNav" class="nav" onmouseout = "closeNav()">
        <a href="javascript:void(0)" class="closebtn" onclick="closeNav()">&times;</a>
        <a href="http://localhost:8080/">Home</a>
        <a href="http://localhost:8080/ask/stats.html">Question Results</a>
        <a href="http://localhost:8080/ask.html">Create a Question</a>
        <a href="http://localhost:8080/ask/edit.html">Edit a Question</a>
        <a href="http://localhost:8080/touch/index.html">Take the Survey</a>
        <a href="http://localhost:8080/ask/help.html">Help</a>
    </div>
</div>

<div style="padding-left:10%; padding-right:10%;">
    <h1 style = "font-size: 36px; text-align: center; color: #ffcd00; text-shadow: -.75px 0 #000000,0 .75px #000000,.75px 0 #000000,0 -.75px #000000; margin-top: 40px"> HIDE Voting App FAQ </h1>
    <div style = "border: thick solid #000000; margin-left: 80px; margin-right: 80px; margin-top: 40px;">
        <div style = "border: thick solid #ffcd00; border-width: 5px">
            <div style = "padding: 15px; padding-left: 40px; padding-right: 40px; background: #FFFFFF">
                <h1 style = "font-size: 36px; text-align: center; color: #ffc900; text-shadow: -.75px 0 #000000,0 .75px #000000,.75px 0 #000000,0 -.75px #000000; margin: 40px">
                    App Pages and Their Functions
                </h1>
                <h2>Question</h2>
                <br>
                <p>This page allows a user to create a question with up to four selectable options.</p>
                <br>
                <br>
                <h2>Edit</h2>
                <br>
                <p>This page allows a user to edit an already existing question.</p>
                <br>
                <br>
                <h2>Results</h2>
                <br>
                <p>This page displays voting results of each question on a pie chart and bar graph.</p>
                <br>
                <br>
                <h2>Survey</h2>
                <br>
                <p>This page links to the touch screen interface where the actual surveys reside.</p>
                <br>
                <br>
                <h2 style = "font-size: 24px" >If you have any issues or questions, please contact the Humane Design Interface Enterprise (HIDE) by emailing <a href="mailto:hide-management-l@mtu.edu">hide-management-l@mtu.edu</a>.</h2>
                <br>
            </div>
        </div>
    </div>
    <br>
    <br>
</div>
</body>

</html>
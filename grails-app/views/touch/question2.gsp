<html>

<head>
    <title> Question </title>
    <script>
        // idle redirect
        // if the user abandons the process go home
        function redirect(){
            window.location.href = "/touch/scan2.html";
        }

        // 30 seconds
        setTimeout(redirect, 30 * 1000);

    </script>
    <asset:stylesheet href="main.css"/>
    <asset:stylesheet href="touch.css"/>
    <asset:stylesheet href="touch2.css"/>
</head>

<g:link action="vote2" params="[question:question, option1:option1, option2: option2, option3:option3,
                                option4:option4, vid:vid, idlist: idlist]" >

    <body style="alignment: top;  background: #ffcd00">

    <!--top images-->
    <div class="topBar">
        <img id="techLogo" class="rightTop" src="${resource(dir:'images',file:'michTech_logo.png')}">
        <img id="hideLogo" class="leftTop" src="${resource(dir:'images',file:'hide_logo.png')}">
    </div>

    <!--middle stripe-->
    <div class="stripe2">
        <div id="swipe" class="center">${question}</div>
    </div>

    <!--button-->
    <div class="bottomBar"> <button id="answerbtn" class="btnright">Answer</button></div>

    </body>

</g:link>
</html>
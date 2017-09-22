<html>

<head>
    <title> Vote </title>
</head>
<body style = "background: #acacac" >
<asset:stylesheet href="main.css"/>
<asset:stylesheet href="touch.css"/>
<script>
    // idle redirect
    // if the user abandons the process go home
    function redirect(){
        window.location.href = "/touch/";
    }

    // 30 seconds
    setTimeout(redirect, 30 * 1000);

</script>
<div style = "border: thick solid #000000; margin-left: 80px; margin-right: 80px; margin-top: 50px; margin-bottom: 20px">
    <div style = "border: thick solid #ffc900; border-width: 5px">
        <div style = "padding: 15px; padding-left: 40px; padding-right: 40px; background: #FFFFFF">
            <h1 style = "font-size: 72px; text-align: center; color: #ffc900; text-shadow: -.75px 0 #000000,0 .75px #000000,.75px 0 #000000,0 -.75px #000000; margin: 40px">
                ${question}
            </h1>
        </div>
    </div>
</div>
<div id="container">
    <g:link style="color: inherit;text-decoration: inherit;" action="done" params="[option:option1, vid:vid]">
        <div style="float:left;width:40%;height:20%; margin-left: 40px; color: #ffc900;" class="button">
            ${option1}
        </div>
    </g:link>
    <g:link style="color: inherit;text-decoration: inherit;" action="done" params="[option:option2, vid:vid]">
        <div style="float:right;width:40%;height:20%; margin-right: 40px; color: #ffc900;" class="button">
            ${option2}
        </div>
    </g:link>
    <g:link style="color: inherit;text-decoration: inherit;" action="done" params="[option:option3, vid:vid]">
        <div style="float:left;width:40%;height:20%; margin-left: 40px; color: #ffc900;" class="button">
            ${option3}
        </div>
    </g:link>
    <g:link style="color: inherit;text-decoration: inherit;" action="done" params="[option:option4, vid:vid]">
        <div style="float:right;width:40%;height:20%; margin-right: 40px; color: #ffc900;" class="button">
            ${option4}
        </div>
    </g:link>

</div>
</body>
</html>
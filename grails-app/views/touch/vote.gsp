<html>

<head>
    <title> Vote </title>
</head>
<body>
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
<div style="font-size:24pt;" id="banner">
    <h1> ${question} </h1>
</div>
<div id="container">
    <g:link style="color: inherit;text-decoration: inherit;" action="done" params="[option:option1, vid:vid]">
        <div style="float:left;width:40%;height:20%;" class="button">
            ${option1}
        </div>
    </g:link>
    <g:link style="color: inherit;text-decoration: inherit;" action="done" params="[option:option2, vid:vid]">
        <div style="float:right;width:40%;height:20%;" class="button">
            ${option2}
        </div>
    </g:link>
    <g:link style="color: inherit;text-decoration: inherit;" action="done" params="[option:option3, vid:vid]">
        <div style="float:left;width:40%;height:20%;" class="button">
            ${option3}
        </div>
    </g:link>
    <g:link style="color: inherit;text-decoration: inherit;" action="done" params="[option:option4, vid:vid]">
        <div style="float:right;width:40%;height:20%;" class="button">
            ${option4}
        </div>
    </g:link>

</div>
</body>
</html>
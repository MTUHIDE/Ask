<html>

<head>
    <title> Vote </title>
</head>
<body style = "background: #ffcd00;" >
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
<h1 style = "font-size: 56px; text-align: center; color: #000000; padding-top: 1.5%">
    "${question}"
</h1>
<div style = "background-color: #ffffff">
    <g:link style="color: inherit; text-decoration: inherit;" action="done" params="[option:option1, vid:vid]">
        <div style="margin-left: 1%; margin-right: 1%;" class="button2">
            ${option1}
        </div>
    </g:link>
    <g:link style="color: inherit; text-decoration: inherit;" action="done" params="[option:option2, vid:vid]">
        <div style="margin-right: 1%" class="button2">
            ${option2}
        </div>
    </g:link>
    <g:link style="color: inherit; text-decoration: inherit;" action="done" params="[option:option3, vid:vid]">
        <div style="margin-left: 1%; margin-right: 1%; margin-bottom: 1%;" class="button2">
            ${option3}
        </div>
    </g:link>
    <g:link style="color: inherit; text-decoration: inherit;" action="done" params="[option:option4, vid:vid]">
        <div style="margin-right: 1%; margin-bottom: 1%;" class="button2">
            ${option4}
        </div>
    </g:link>

</div>
</body>
</html>
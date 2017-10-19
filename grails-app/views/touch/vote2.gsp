<html>

<head>
    <title> Vote </title>
</head>
<body style = "alignment: top; background: #ffcd00;" >
<asset:stylesheet href="main.css"/>
<asset:stylesheet href="touch.css"/>
<asset:stylesheet href="touch2.css"/>

<script>
    // idle redirect
    // if the user abandons the process go home
    function redirect(){
        window.location.href = "/touch/scan2.html";
    }

    // 30 seconds
    setTimeout(redirect, 30 * 1000);

</script>
<div><h1 id="title" style="font-size: 8vh; padding: 2vh;">${question}</h1></div>
<div class="stripe" style="background: #FFFFFF; border: none; margin-top: 1.5vh;">
    <g:link style="color: inherit; text-decoration: inherit;" action="done2" params="[option:option1, vid:vid]">
        <div class="ans1" id="button2">
            ${option1}
        </div>
    </g:link>
    <g:link style="color: inherit; text-decoration: inherit;" action="done2" params="[option:option2, vid:vid]">
        <div class="ans2" id="button2">
            ${option2}
        </div>
    </g:link>
    <g:link style="color: inherit; text-decoration: inherit;" action="done2" params="[option:option3, vid:vid]">
        <div class="ans3" id="button2">
            ${option3}
        </div>
    </g:link>
    <g:link style="color: inherit; text-decoration: inherit;" action="done2" params="[option:option4, vid:vid]">
        <div class="ans4" id="button2">
            ${option4}
        </div>
    </g:link>

</div>
</body>
</html>
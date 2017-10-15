<html>

<head>
    <title> Swipe your Michigan Tech ID </title>

    <script>
        // after 5 seconds go back to the touch index so another can vote
        function redirect(){
            window.location.href = "/touch/scan2.html";
        }

        setTimeout(redirect, 5000);
    </script>

</head>
<body style = "background: #8a8b8c" >
<asset:stylesheet href="main.css"/>
<asset:stylesheet href="touch.css"/>

<div style = "border: thick solid #000000; margin-left: 80px; margin-right: 80px; margin-top: 200px;">
    <div style = "border: thick solid #ffcd00; border-width: 5px">
        <div style = "padding: 15px; padding-left: 40px; padding-right: 40px; background: #FFFFFF">
            <h1 style = "font-size: 72px; text-align: center; color: #ffc900; text-shadow: -.75px 0 #000000,0 .75px #000000,.75px 0 #000000,0 -.75px #000000; margin: 40px">
                Thank You!
            </h1>
        </div>
    </div>
</div>

</body>
</html>
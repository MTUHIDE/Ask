<html>

<head>
    <title> Swipe your Michigan Tech ID </title>

    <script>
        // after 5 seconds go back to the touch index so another can vote
        function redirect(){
            window.location.href = "/touch/";
        }

        setTimeout(redirect, 5000);
    </script>

</head>
<body>
<asset:stylesheet href="main.css"/>
<asset:stylesheet href="touch.css"/>

<div id="banner">
    <h1>Thank you!</h1>
</div>

</body>
</html>
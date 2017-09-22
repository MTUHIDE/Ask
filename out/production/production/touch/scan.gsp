<html>

<head>
    <title> Swipe your Michigan Tech ID </title>
    <script>
        var scan_id = "";
        function doneScanning(){
            window.location.href = "scan?cardid=" + encodeURIComponent(scan_id);
        }

        // the card scanner should act like a keyboard device
        document.onkeypress = function(event) {
            var char = String.fromCharCode(event.charCode);
            scan_id += char;
            console.log(char);
            // the card reader should deliver this all at once
            // so record this and in 500ms redirect
            // as the card reader should be done
            setTimeout(doneScanning, 500);
        }
    </script>
    <script>
        // idle redirect
        // if the user abandons the process go home
        function redirect(){
            window.location.href = "/touch/";
        }

        // 30 seconds
        setTimeout(redirect, 30 * 1000);

    </script>
</head>
<body>
<asset:stylesheet href="main.css"/>
<asset:stylesheet href="touch.css"/>
<div id="banner">
    <h1>Swipe your Michigan Tech ID</h1>
</div>
<div id="container">
    <div style="vertical-align: middle;">
        <!--Put image here-->

    </div>
</div>
</body>
</html>
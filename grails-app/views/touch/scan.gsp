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
            console.log(scan_id);

            console.log('Character is: ');
            console.log(char);
            // the card reader should deliver this all at once
            // so record this and in 500ms redirect
            // as the card reader should be done
            if (event.charCode == 13) /* new line */
            {
                doneScanning();
            }
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
<body style = "background: #8a8b8c">
<asset:stylesheet href="main.css"/>
<asset:stylesheet href="touch.css"/>




<div style = "border: thick solid #000000; margin-left: 80px; margin-right: 80px; margin-top: 200px;">
    <div style = "border: thick solid #ffcd00; border-width: 5px">
        <div style = "padding: 15px; padding-left: 40px; padding-right: 40px; background: #FFFFFF">
            <h1 style = "font-size: 72px; text-align: center; color: #ffcd00; text-shadow: -.75px 0 #000000,0 .75px #000000,.75px 0 #000000,0 -.75px #000000; margin: 40px">
                Please Swipe your Michigan Tech ID
            </h1>
        </div>
    </div>
</div>
<div id="container">
    <div style="vertical-align: middle;">
        <img id="usgLogo" class="center" src="${resource(dir:'images',file:'USG_logo.png')}" />

    </div>
</div>
</body>
</html>
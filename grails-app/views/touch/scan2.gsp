<html>

<head>
    <title> Swipe your Michigan Tech ID </title>
    <script>
        var scan_id = "";
        function doneScanning(){
            window.location.href = "scan2?cardid=" + encodeURIComponent(scan_id);
        }

        // the card scanner should act like a keyboard device
        document.onkeypress = function(event) {
            var char = String.fromCharCode(event.charCode);
            scan_id += char;
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
</head>
<body style = "background: #FFFFFF">
<asset:stylesheet href="main.css"/>
<asset:stylesheet href="touch.css"/>
<asset:stylesheet href="touch2.css"/>



<div> <h1 id="title"> Survey Station </h1> </div>
<div class="stripe">
    <img id="scanLogo" class="center" src="${resource(dir:'images',file:'usg_logo2.png')}">
</div>
<div>
    <h1 id="swipe">Swipe Your ID to Begin</h1>
    <img id="techLogo" class="leftBottom" src="${resource(dir:'images',file:'michTech_logo.png')}">
    <img id="hideLogo" class="rightBottom" src="${resource(dir:'images',file:'hide_logo.png')}">
</div>
</body>
</html>
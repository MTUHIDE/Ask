<html>

<head>
    <title> Share your opinion! </title>
</head>
<body style="alignment: top;  background: #acacac">
<asset:stylesheet href="main.css"/>
<asset:stylesheet href="touch.css"/>

<!-- <img src="touch_images/USG_logo.png"  alt="USG logo" height="50px" width="50px"/>-->
<div class="container">
    <img id="usgLogo" class="center" src="${resource(dir:'images',file:'USG_logo.png')}" />


    <div style = "border: thick solid #000000; margin: 40px; margin-left: 80px; margin-right: 80px; position: relative;">
        <div style = "border: thick solid #ffc900; border-width: 5px">
            <div style = "padding: 15px; padding-left: 40px; padding-right: 40px; background: #FFFFFF">
                <h1 style = "font-size: 72px; text-align: center; color: #ffc900; text-shadow: -.75px 0 #000000,0 .75px #000000,.75px 0 #000000,0 -.75px #000000; margin: 40px">
                    Share Your Opinion!
                </h1>
            </div>
        </div>
    </div>
    <g:link action="scan">
        <div class="button center" style= "color: #ffc900">
            Tap to Begin
        </div>
    </g:link>
</div>
</body>
</html>
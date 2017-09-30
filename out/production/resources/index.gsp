<!doctype html>
<html>
<head>
    <title>Master Menu</title>
    <asset:stylesheet src="application.css"/>
    <asset:stylesheet src="menu.css"/>

</head>
<body>

    <div class="container">
        <div class="row">
            <div class="col-sm-3 menuTile" id="block1">
                <a href="ask.html">
                    <div class="divText" style="height:100%; width: 100%;">
                        <img src="${resource(dir:'images',file:'Question-mark-blackandwhite.png')}" />
                        <h2 class="blackText"> Question </h2>
                    </div>
                </a>
            </div>
            <div class="col-sm-3 menuTile" id="block2">
                <a href="ask/edit.html">
                    <div class="divText" style="height:100%; width:100%;">
                        <img src="${resource(dir:'images',file:'22-512.png')}" />
                        <h2 class="blackText"> Edit </h2>
                    </div>
                </a>
            </div>
            <div class="col-sm-3 menuTile" id="block3">
                <a href="ask/stats.html">
                    <div style="height: 100%; width: 100%;">
                        <img src="${resource(dir:'images',file:'plainicon.com-10528-256px.png')}" />
                        <h2 class="blackText">Results</h2>
                    </div>
                </a>
            </div>
        </div>
        <div class="row">
            <div class="col-sm-3 menuTile" id="block4">
                <a href="ask/stats.html">
                    <div style="height:100%; width:100%;">
                        <img src="${resource(dir:'images',file:'plainicon.com-10528-256px.png')}" />
                        <h2 class="blackText">Results</h2>
                    </div>
                </a>
            </div>
            <div class="col-sm-3 menuTile" id="block5">
                <a href="touch/index.html">
                    <div style="height: 100%; width:100%;">
                        <img src="${resource(dir:'images',file:'52479-200.png')}" />
                        <h2 class="blackText">Survey</h2>
                    </div>
                </a>
            </div>
            <div class="col-sm-3 menuTile" id="block6">
                <a href="ask/stats.html">
                    <div style="height: 100%; width: 100%;">
                        <img src="${resource(dir:'images',file:'1110.png')}" />
                        <h2 class="blackText">HELP</h2>
                    </div>
                </a>
            </div>
        </div>

    </div>

</body>
</html>

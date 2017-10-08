<html>

<asset:stylesheet src="application.css"/>
<asset:stylesheet href="navigation.css"/>
<asset:javascript src="navigation.js"/>

<body>

<!--navigation bar-->
<div class = "navbtn" onmouseover = "openNav()">
    <a href="/">
        <img src="${resource(dir:'images',file:'clipart-home-icon-6.png')}" /> </a>
    <a href="/ask/stats.html">
        <img src="${resource(dir:'images',file:'plainicon.com-10528-256px.png')}" /> </a>
    <a href="/ask.html">
        <img src="${resource(dir:'images',file:'Question-mark-blackandwhite.png')}" /> </a>
    <a href="/ask/edit.html">
        <img src="${resource(dir:'images',file:'22-512.png')}" /> </a>
    <a href="/touch/index.html">
        <img src="${resource(dir:'images',file:'52479-200.png')}" /> </a>
    <a href="/ask/help.html">
        <img src="${resource(dir:'images',file:'1110.png')}" /> </a>

    <div id="myNav" class="nav" onmouseout = "closeNav()">
        <a href="javascript:void(0)" class="closebtn" onclick="closeNav()">&times;</a>
        <a href="/">Home</a>
        <a href="/ask/stats.html">Question Results</a>
        <a href="/ask.html">Create a Question</a>
        <a href="/ask/edit.html">Edit a Question</a>
        <a href="/touch/index.html">Take the Survey</a>
        <a href="/ask/help.html">Help</a>
    </div>
</div>

    <div style="padding-left:10%; padding-right:10%;">
        <h1 style = "text-align: center;"> Create a new question </h1>
        <form action="ask.html">
            <div class="form-group row">
                <div class="col-lg-12 input-group-lg">
                    <input name="question" style="width:100%;" class="form-control" type="text" placeholder="What Question would you like to ask?"/>
                </div>
            </div>
            <div style="padding-top:10px;" class="form-group row">
                <div style="padding-right:10px;float:left;width:50%;" class="col-lg-6  input-group-lg">
                    <input name="option1" class="form-control" type="text" placeholder="Option 1"/>
                </div>
                <div style="padding-left:10px; float:right;width:50%;" class="col-lg-6  input-group-lg">
                    <input name="option2" class="form-control" type="text" placeholder="Option 2"/>
                </div>
            </div>

            <div style="padding-top:10px;" class="form-group row">
                <div style="padding-right:10px; float:left;width:50%;" class="col-lg-6  input-group-lg">
                    <input name="option3" class="form-control" type="text" placeholder="Option 3"/>
                </div>
                <div style="padding-left:10px; float:right;width:50%;" class="col-lg-6  input-group-lg">
                    <input name="option4" class="form-control" type="text" placeholder="Option 4"/>
                </div>
            </div>

            <div style="padding-top:10px;" class="form-group row">
                <div style="padding-left: 10px; float:right;" class="col-lg-6">
                    <div class="input-group input-group-lg">
                        <input style = "float:right;" class="form-control btn btn-block btn-primary" type="submit" value="Submit Question">
                    </div>
                </div>
            </div>
        </form>
    </div>
</body>

</html>
<html>

<asset:stylesheet src="application.css"/>
<asset:stylesheet href="navigation.css"/>
<asset:javascript src="navigation.js"/>

<body style="background-color: #8a8b8c;">

<!--navigation bar-->
<div class = "navbtn" onmouseover = "openNav()">
    <a href="/">
        <img src="${resource(dir:'images',file:'clipart-home-icon-6.png')}" /> </a>
    <a href="/ask.html">
        <img src="${resource(dir:'images',file:'Question-mark-blackandwhite.png')}" /> </a>
    <a href="/ask/stats.html">
        <img src="${resource(dir:'images',file:'plainicon.com-10528-256px.png')}" /> </a>
    <a href="/touch/scan2.html">
        <img src="${resource(dir:'images',file:'52479-200.png')}" /> </a>
    <a href="/ask/select.html">
        <img src="${resource(dir:'images',file:'checkbox.png')}" /> </a>
    <a href="/ask/help.html">
        <img src="${resource(dir:'images',file:'1110.png')}" /> </a>


    <div id="myNav" class="nav" onmouseout = "closeNav()">
        <a href="javascript:void(0)" class="closebtn" onclick="closeNav()">&times;</a>
        <a href="/">Home</a>
        <a href="/ask.html">Create a Question</a>
        <a href="/ask/stats.html">Question Results</a>
        <a href="/touch/scan2.html">Take the Survey</a>
        <a href="/ask/select.html">Select Questions</a>
        <a href="/ask/help.html">Help</a>
    </div>
</div>

    <div style="padding-left: 4%; height: 95%;">
        <div style="background-color: #ffffff; width:91%; height: 91%; margin: auto; position: relative; top: 50%; transform: translateY(-50%);">
            <div style="margin: auto; position: relative; top: 50%; transform: translateY(-50%);">
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
        </div>
    </div>
</body>

</html>
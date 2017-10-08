<html>

<asset:stylesheet src="application.css"/>
<asset:stylesheet href="navigation.css"/>
<asset:javascript src="navigation.js"/>

<body>

<!--navigation bar-->
<div class = "navbtn" onmouseover = "openNav()">
    <a href="http://localhost:8080/">
        <img src="${resource(dir:'images',file:'clipart-home-icon-6.png')}" /> </a>
    <a href="http://localhost:8080/ask/stats.html">
        <img src="${resource(dir:'images',file:'plainicon.com-10528-256px.png')}" /> </a>
    <a href="http://localhost:8080/ask.html">
        <img src="${resource(dir:'images',file:'Question-mark-blackandwhite.png')}" /> </a>
    <a href="http://localhost:8080/ask/edit.html">
        <img src="${resource(dir:'images',file:'22-512.png')}" /> </a>
    <a href="http://localhost:8080/touch/index.html">
        <img src="${resource(dir:'images',file:'52479-200.png')}" /> </a>
    <a href="http://localhost:8080/ask/help.html">
        <img src="${resource(dir:'images',file:'1110.png')}" /> </a>


    <div id="myNav" class="nav" onmouseout = "closeNav()">
        <a href="javascript:void(0)" class="closebtn" onclick="closeNav()">&times;</a>
        <a href="http://localhost:8080/">Home</a>
        <a href="http://localhost:8080/ask/stats.html">Question Results</a>
        <a href="http://localhost:8080/ask.html">Create a Question</a>
        <a href="http://localhost:8080/ask/edit.html">Edit a Question</a>
        <a href="http://localhost:8080/touch/index.html">Take the Survey</a>
        <a href="http://localhost:8080/ask/help.html">Help</a>
    </div>
</div>

<div style="padding-left:10%; padding-right:10%;margin-top:50px;">
    <script>

        function onSelectQ (){
            tag = document.getElementsByTagName("select")[0];
            id = tag.options[tag.selectedIndex].id;
            location = window.location;
            url = location.protocol + '//' + location.host + location.pathname  + "?qid=" + id;
            window.location.href = url;
        };

    </script>

    <h1 style = "text-align: center;"> Edit a question </h1>
    <!--All the questions--->
    <form>

    <div class="form-group row">
        <div class="col-lg-12 input-group-lg">
            <select onchange="onSelectQ();">
                <option value="default">Select a question...</option>
                <g:each in="${questions}">
                    <option id="${it.id}">${it.question}</option>
                </g:each>

            </select>
            <div style = "margin-top:10px;margin-bottom:0px;" class="alert alert-info">
                Select a question above and then make any changes to the questions or options you'd like.
            </div>
        </div>
    </div>
    <input style="display:none" name="cid" value = "${qid}"/>
    <div style="padding-top:10px;" class="form-group row">
        <div class="col-lg-12 input-group-lg">
            <input style="width:100%;" class="form-control" type="text" placeholder="Question"
            name = "question" value ="${question}"/>
        </div>
    </div>

    <div style="padding-top:10px;" class="form-group row">
        <div style="padding-right:10px;float:left;width:50%;" class="col-lg-6  input-group-lg">
            <input class="form-control" type="text" placeholder="Option 1" name = "option1" value = "${option1}"/>
        </div>
        <div style="padding-left:10px; float:right;width:50%;" class="col-lg-6  input-group-lg">
            <input class="form-control" type="text" placeholder="Option 2" name = "option2" value = "${option2}"/>

        </div>
    </div>

    <div style="padding-top:10px;" class="form-group row">
        <div style="padding-right:10px; float:left;width:50%;" class="col-lg-6  input-group-lg">
            <input class="form-control" type="text" placeholder="Option 3" name = "option3" value = "${option3}"/>
        </div>
        <div style="padding-left:10px; float:right;width:50%;" class="col-lg-6  input-group-lg">
            <input class="form-control" type="text" placeholder="Option 4" name = "option4" value = "${option4}"/>
        </div>
    </div>

    <div style="padding-top:10px;" class="form-group row">
        <div style="padding-left: 10px;" class="col-lg-12">
            <div style="float:right;" class="input-group input-group-lg">
                <input class="form-control btn btn-block btn-primary" type="button" onclick="submit();" value="Save Question">
            </div>
        </div>
    </div>
    </form>
</div>
</body>

</html>
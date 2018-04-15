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


                    <!--  This is a select dropdown that was part of a previous design of the project.
                    <select onchange="onSelectQ();">
                        <option value="default">Select a question...</option>
                       < g:each in="$ {questions}">
                            <option id="$ {it.id}">$ {it.question}</option>
                        < /g:each>
                    </select> -->

                    <div style = "margin-top:10px;margin-bottom:0px;" class="alert alert-info">
                        Make changes to the questions or options.
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
    </div>
</div>
</body>

</html>
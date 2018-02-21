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
                <h1 style = "text-align: center;"> Select Questions </h1>

                <div style="padding-top: 10px">
                    <div style="width: 70%; margin: 0 auto;">
                        <ul class="list-group">
                            <div class="checkbox">
                                <div class="list-group">
                                    <g:each in="${questions}">
                                        <li class="list-group-item">
                                            <div style="height: 75px">
                                            <g:form name="${it.id}" action="checkUpdate" params="[question:it.id, checkall:'no']">
                                                <label> <input type="checkbox" value="${it.is_selected}"
                                                               onclick="document.getElementById(${it.id}).submit()"
                                                                ${it.is_selected}/>
                                                    ${it.qst_txt}
                                                </label>
                                            </g:form>
                                            <g:link style="color: inherit; text-decoration: inherit; float: right;" action="goToEdit" params="[question:it.id]">
                                                <input class="form-control btn btn-block btn-primary" type="submit" value="Edit">
                                                </input>
                                            </g:link>
                                            </div>
                                        </li>
                                    </g:each>
                                </div>
                            </div>
                        </ul>
                    </div>
                </div>

                <div style="padding-top: 10px; width: 20%; right: 0%; margin: 0 auto;" class="form-group row">
                    <g:link style="color: inherit; text-decoration: inherit;" action="checkUpdate" params="[question:questions[0], checkall:'true']">
                        <input class="form-control btn btn-block btn-primary" type="submit" value="Check All">
                    </g:link>
                    <g:link style="color: inherit; text-decoration: inherit; padding: inherit" action="checkUpdate" params="[question:questions[0], checkall:'false']">
                        <input class="form-control btn btn-block btn-primary" type="submit" value="Uncheck All">
                    </g:link>
                </div>


            </div>
        </div>
    </div>
</body>

</html>
<html>
<asset:stylesheet src="application.css"/>
<asset:stylesheet src="bootstrap.css"/>
<asset:stylesheet href="navigation.css"/>
<asset:javascript src="navigation.js"/>

<!--Load the AJAX API-->
<script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
<script type="text/javascript">

    // Load the Visualization API and the corechart package.
    google.charts.load('current', {'packages':['corechart']});

    // Set a callback to run when the Google Visualization API is loaded.
    google.charts.setOnLoadCallback(drawChart);

    // Callback that creates and populates a data table,
    // instantiates the pie chart, passes in the data and
    // draws it.
    function drawChart() {

        // Create the data table.
        var data = new google.visualization.DataTable();
        data.addColumn('string', 'Answers');
        data.addColumn('number', 'Responses');
        row1 = [document.getElementById("option1").innerText, Number(document.getElementById("result1").innerText)];
        row2 = [document.getElementById("option2").innerText, Number(document.getElementById("result2").innerText)];
        row3 = [document.getElementById("option3").innerText, Number(document.getElementById("result3").innerText)];
        row4 = [document.getElementById("option4").innerText, Number(document.getElementById("result4").innerText)];
        console.log(row1);
        console.log(row2);
        console.log(row3);
        console.log(row4);
        data.addRows([
            row1,
            row2,
            row3,
            row4
        ]);


        // Set chart options
        var options = {
            'title': 'Results',
            vAxis: {
                format: '#,###',
                minValue: 0,
                maxValue: 5
            }
        };

        // Instantiate and draw our chart, passing in some options.
        var chart = new google.visualization.PieChart(document.getElementById('chart_div'));
        chart.draw(data, options);
        var chart = new google.visualization.ColumnChart(document.getElementById("chart_div2"));
        chart.draw(data, options);


    }

</script>

<!--navigation bar-->
<body style="background: #8a8b8c">

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
<div style="background-color: #ffffff; margin: 50px; margin-left: 90px ">
    <h1>
        <br/>
    </h1>
     <h1 style = "text-align: center; font-family: sans-serif;"> Question Results </h1>
    <div id="questionData" >
            <div class="row" style="margin-top: 50px">
                <div class ="col-2">
                <!--Div that will hold the pie chart-->
                    <div class = "input-group">

                        <select onchange="onSelectQ();">
                            <option value="default">Select a question...</option>
                            <g:each in="${questions}">
                                <option id="${it.id}">${it.qst_txt}</option>
                            </g:each>

                        </select>

                        <script>

                            function onSelectQ (){
                                tag = document.getElementsByTagName("select")[0];
                                id = tag.options[tag.selectedIndex].id;
                                location = window.location;
                                url = location.protocol + '//' + location.host + location.pathname  + "?qid=" + id;
                                window.location.href = url;
                            };

                        </script>

                </div>

                <h2 id="QuestionText" >${question}</h2>
                <ol style="float: left; font-size: 32px;">
                    <li id="option1" >${option1}</li>
                    <li id="option2" >${option2}</li>
                    <li id="option3" >${option3}</li>
                    <li id="option4" >${option4}</li>
                </ol>

                <div style = "float: right; border: thick solid #000000; background: #ffcd00;">
                    <div id="chart_div" style = "padding: 5px"></div>
                </div>
                <div class="col-1" style=" margin-top: 300px; border: thick solid #000000; background: #ffcd00; width: 1200px; ">
                    <div id="chart_div2" style = "padding: 5px; "></div>
                </div>
                </div>
            </div>
    </div>
    <h1>
        <br/>
    </h1>
</div>

<div id="result1" style="display:none">${result1}</div>
<div id="result2" style="display:none">${result2}</div>
<div id="result3" style="display:none">${result3}</div>
<div id="result4" style="display:none">${result4}</div>


</body>

</html>
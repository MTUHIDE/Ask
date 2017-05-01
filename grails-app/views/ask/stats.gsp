<html>

<asset:stylesheet src="application.css"/>


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
        var options = {'title':'Results'};

        // Instantiate and draw our chart, passing in some options.
        var chart = new google.visualization.PieChart(document.getElementById('chart_div'));
        chart.draw(data, options);
        var chart = new google.visualization.ColumnChart(document.getElementById("chart_div2"));
        chart.draw(data, options);
    }
</script>


<body>
<div style="padding-left:10%; padding-right:10%;">
    <h1 style = "text-align: center;"> Results for question </h1>

    <!--Div that will hold the pie chart-->
    <div style="float:left;">
        <h2> ${question} </h2>
        <ol style="font-size: medium;">
            <li id="option1" >${option1}</li>
            <li id="option2" >${option2}</li>
            <li id="option3" >${option3}</li>
            <li id="option4" >${option4}</li>

        </ol>
    </div>
    <div style = "float:right;">
        <div style="vertical-align:center;" id="chart_div"></div>
        <div style="vertical-align:center;" id="chart_div2"></div>
    </div>

</div>

<div id="result1" style="display:none">${result1}</div>
<div id="result2" style="display:none">${result2}</div>
<div id="result3" style="display:none">${result3}</div>
<div id="result4" style="display:none">${result4}</div>


</body>

</html>
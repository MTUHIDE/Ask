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
        data.addRows([
            ['Option 1', 3],
            ['Option 2', 1],
            ['Option 3', 2],
            ['Option 4', 6]
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
    <h1 style = "text-align: center;"> Stats on Question 1 </h1>

    <!--Div that will hold the pie chart-->
    <div style="float:left;">
        <h2> This is the question...</h2>
        <ol style="font-size: medium;">
            <li>This is Answer 1</li>
            <li>This is Answer 2</li>
            <li>This is Answer 3</li>
            <li>This is Answer 4</li>

        </ol>
    </div>
    <div style = "float:right;">
        <div style="vertical-align:center;" id="chart_div"></div>
        <div style="vertical-align:center;" id="chart_div2"></div>
    </div>

</div>

</body>

</html>
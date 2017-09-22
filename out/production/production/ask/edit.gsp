<html>

<asset:stylesheet src="application.css"/>

<body>
<div style="padding-left:10%; padding-right:10%;margin-top:50px;">


    <h1 style = "text-align: center;"> Edit a question </h1>
    <!--All the questions--->
    <div class="form-group row">
        <div class="col-lg-12 input-group-lg">
            <select>
                <option value="default">Select a question...</option>
                <g:each in="${questions}">
                    <option>${it.question}</option>
                </g:each>



            </select>
            <div style = "margin-top:10px;margin-bottom:0px;" class="alert alert-info">
                Select a question above and then make any changes to the questions or options you'd like.
            </div>
        </div>
    </div>

    <div style="padding-top:10px;" class="form-group row">
        <div class="col-lg-12 input-group-lg">
            <input style="width:100%;" class="form-control" type="text" placeholder="Question"
            value ="${params.question}"/>
        </div>
    </div>

    <div style="padding-top:10px;" class="form-group row">
        <div style="padding-right:10px;float:left;width:50%;" class="col-lg-6  input-group-lg">
            <input class="form-control" type="text" placeholder="Option 1"
                   value = "${params.option1}"/>
        </div>
        <div style="padding-left:10px; float:right;width:50%;" class="col-lg-6  input-group-lg">
            <input class="form-control" type="text" placeholder="Option 2"
                   value = "${params.option2}"/>
        </div>
    </div>

    <div style="padding-top:10px;" class="form-group row">
        <div style="padding-right:10px; float:left;width:50%;" class="col-lg-6  input-group-lg">
            <input class="form-control" type="text" placeholder="Option 3"
                   value = "${params.option3}"/>
        </div>
        <div style="padding-left:10px; float:right;width:50%;" class="col-lg-6  input-group-lg">
            <input class="form-control" type="text" placeholder="Option 4"
                   value = "${params.option4}"/>
        </div>
    </div>

    <div style="padding-top:10px;" class="form-group row">
        <div style="padding-left: 10px;" class="col-lg-12">
            <div style="float:right;" class="input-group input-group-lg">
                <input class="form-control btn btn-block btn-primary" type="button" value="Save Question">
            </div>
        </div>
    </div>

</body>

</html>
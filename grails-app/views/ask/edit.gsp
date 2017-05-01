<html>

<asset:stylesheet src="application.css"/>

<body>
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
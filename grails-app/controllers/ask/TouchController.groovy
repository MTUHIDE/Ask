package ask
import Ask.AnsKey
import Ask.CurrentQuestion

class TouchController {

    def index() {}

    def scan() {
        println "Scan"
        // if there is a card id submission
        // get the question that is currently active (the last question posted
        def q = Question.listOrderById(order: "asc", sort: "id")[-1];
        println q
        println q.id
        def v = Vote.findAllByQuestion_id(q.id.toString());
        def hasUserVotedOnThisQuestion = v.any {it.user_id == params.cardid};

        // there is a cardid and that card it hasn't already voted
        if (params.cardid && !hasUserVotedOnThisQuestion){
            // get the question id and record the card it
            def nv = new Vote(user_id:params.cardid, question_id: q.id, result:-1);
            nv.save(flush: true, failOnError:true); // will trigger an error if not saved
            println "Vote";
            println nv.id;
            def voteid = nv.id;
            println nv.id;
            println voteid;
            // redirect to vote
            //redirect(action: "vote", params:[id: q.id, vid:voteid])

            //NEW DATABASE CODE
            def questions = CurrentQuestion.listOrderById(order: "asc", sort: "id");    //all questions in new database
            println questions.qst_txt +  " the questions!!!!"       //test
            println questions.size();
            for (int i = 0; i < questions.size(); i++) {
                println questions[i].is_selected + " selected?";
                if (questions[i].is_selected == "") {
                    questions.remove(i);
                    i--;
                }
            }
            println questions.qst_txt;

            redirect(action: "vote", params:[idlist: questions.id])     //go to vote with the list of id's
        }
        else{
            // just render the page
            return
        }
    }

    def scan2() {
        println "Scan"
        // if there is a card id submission
        // get the question that is currently active (the last question posted
        def q = Question.listOrderById(order: "asc", sort: "id")[-1];
        println q
        println q.id
        def v = Vote.findAllByQuestion_id(q.id.toString());
        def hasUserVotedOnThisQuestion = v.any {it.user_id == params.cardid};

        // there is a cardid and that card it hasn't already voted

        if (params.cardid && !hasUserVotedOnThisQuestion){
            // get the question id and record the card it
            def nv = new Vote(user_id:params.cardid, question_id: q.id, result:-1);
            nv.save(flush: true, failOnError:true); // will trigger an error if not saved
            println "Vote";
            println nv.id;
            def voteid = nv.id;
            println nv.id;
            println voteid;
            // redirect to vote
            //redirect(action: "question2", params:[id: q.id, vid:voteid])

            //NEW DATABASE CODE
            def questions = CurrentQuestion.listOrderById(order: "asc", sort: "id");    //all questions in new database
            for (int i = 0; i < questions.size(); i++) {
                if (questions[i].is_selected == "") {
                    questions.remove(i);
                    i--;
                }
            }
            redirect(action: "question2", params:[idlist: questions.id])     //go to vote with the list of id's
        }
        else{
            // just render the page
            return
        }
    }

    def vote(){
//        println "Vote"
//        println params.id
//        println params.vid;
//        def q = Question.findById(params.id)
//        println q.question
//        println q.options[0]
//        println q.options[1]
//        println q.options[2]
//        println q.options[3]
//        [question: q.question,
//         option1 : q.options[0],
//         option2 : q.options[1],
//         option3 : q.options[2],
//         option4 : q.options[3],
//         vid:params.vid]

    //NEW DATABASE CODE
        println "new stuff"
       if (params.idlist && params.idlist.size() > 0) {  //if there are questions yet to be asked, display vote
           def id = params.idlist[0];   //the next question id
           def quest = CurrentQuestion.findById(id);    //the next question

           // write the question and answer text to the view
           [question: quest.qst_txt,
            option1 : quest.ans.ans_txt[0],
            option2 : quest.ans.ans_txt[1],
            option3 : quest.ans.ans_txt[2],
            option4 : quest.ans.ans_txt[3],
            vid:params.vid,
            idlist: params.idlist]
       } else {
           redirect(action: "done") //if no more questions, show "thank you" screen
       }


    }

    def vote2(){
            [question: params.question,
             option1 : params.option1,
             option2 : params.option2,
             option3 : params.option3,
             option4 : params.option4,
             vid:params.vid,
             idlist: params.idlist]
    }

    def saveResponse() {
        //NEW DATABASE CODE
        //updates result number
        def ans = AnsKey.findByAns_txt(params.option);  //get the AnsKey object that corresponds to selected answer
        println ans.ans_txt       //test
        def resultNum = ans.result_number;  //previous result number
        println ans.result_number + " before"
        ans.setResult_number(resultNum + 1);    //update result number
        println ans.result_number + " after"

        //go to next question, dropping previous question from the beginning of the idlist array
        redirect(action: "vote", params:[idlist: params.idlist.drop(1)])
    }

    def saveResponse2() {
        //NEW DATABASE CODE
        //updates result number
        def ans = AnsKey.findByAns_txt(params.option);  //get the AnsKey object that corresponds to selected answer
        println ans.ans_txt       //test
        def resultNum = ans.result_number;  //previous result number
        println ans.result_number + " before"
        ans.setResult_number(resultNum + 1);    //update result number
        println ans.result_number + " after"

        //go to next question, dropping previous question from the beginning of the idlist array
        redirect(action: "question2", params:[idlist: params.idlist.drop(1)])
    }

    def done(){
        //OLD DATABASE CODE
        // ok save the vote in the results table
        // note this means that a voter and vote aren't linked
//        def vote = Vote.findById(params.vid);
//        def question = Question.findById(vote.question_id);
//        def option_index = question.options.findIndexOf {it.contains(params.option)};
//        vote.result = option_index;
//        vote.save(flush: true, failOnError:true); // will trigger an error if not saved
//        //http://localhost:8080/touch/done?option=Pink
//        println params.option

    }

    def done2(){
        // ok save the vote in the results table
        // note this means that a voter and vote aren't linked
//        def vote = Vote.findById(params.vid);
//        def question = Question.findById(vote.question_id);
//        def option_index = question.options.findIndexOf {it.contains(params.option)};
//        vote.result = option_index;
//        vote.save(flush: true, failOnError:true); // will trigger an error if not saved
//        //http://localhost:8080/touch/done?option=Pink
//        println params.option

    }

    def question2() {
        //NEW DATABASE CODE
        println "new stuff"
        if (params.idlist && params.idlist.size() > 0) {  //if there are questions yet to be asked, display vote
            def id = params.idlist[0];   //the next question id
            def quest = CurrentQuestion.findById(id);    //the next question

            // write the question and answer text to the view
            [question: quest.qst_txt,
             option1 : quest.ans.ans_txt[0],
             option2 : quest.ans.ans_txt[1],
             option3 : quest.ans.ans_txt[2],
             option4 : quest.ans.ans_txt[3],
             vid:params.vid,
             idlist: params.idlist]
        } else {
            redirect(action: "done2") //if no more questions, show "thank you" screen
        }
    }
}

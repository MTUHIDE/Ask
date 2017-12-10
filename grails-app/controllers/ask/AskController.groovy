package ask

import Ask.AnsKey
import Ask.CurrentQuestion
import grails.converters.JSON
import org.omg.CORBA.Current

class AskController {

    def index() {
        if (params.question){
            def o1 = params.option1;
            def o2 = params.option2;
            def o3 = params.option3;
            def o4 = params.option4;

            // Old database's way of saving inqueries, left in for now to retain capabilities
            // We should be safely able to remove this code once the new tables are fully integrated
//            def q1 = new Question(question:params.question,
//                    options:[o1,o2,o3,o4])
//            q1.save()


            // Writes qst_txt to new row, adds our results to their own rows within AnsKey
            def qSave = new CurrentQuestion(qst_txt:params.question)
                .addToAns(new AnsKey(ans_txt: o1, result_number: 0))
                .addToAns(new AnsKey(ans_txt: o2, result_number: 0))
                .addToAns(new AnsKey(ans_txt: o3, result_number: 0))
                .addToAns(new AnsKey(ans_txt: o4, result_number: 0))
            qSave.save()

            /* Reads from our database and prints out the first saved item
            def testPrint = CurrentQuestion.findById(1)
            println testPrint.qst_txt + " Yes this one"
            */

            /* Test for checking if the 4th question entered matches exactly the phrase "This One". Mainly to test for multiple saves to our database.
            def MulQueryTest = CurrentQuestion.findByQst_txt("This One")
            if (MulQueryTest) {
                println MulQueryTest.id // This should always return 4
            }
            */

            /*
            // Cycles through our answers, saving each to a new row
            for (int i = 0; i < 4; i++){
                def aSave = new AnsKey(qst_number:idQuery.id,ans_txt:ans_array[i],result_number:0)
                .addTo(AnsKey)
                aSave.save()
            }
            */

            /*Testing for proper write/read to our AnsKey database
            def aQuery = AnsKey.get(4)

            if (aQuery){
                println aQuery.ans_txt + " This should be our answer text"
            }
            else {
                println "Null :("
            }
            */

            render(view:'/index')        }

        return;
    }
    def edit() {
        // get last id
        def all_questions = Question.listOrderById(order: "asc", sort: "id")
        println all_questions
        def questions = all_questions.listIterator();
        if (params.qid){
            def q = Question.findById(params.qid);
            if (q == null){
                return [questions:questions];
            }
            println q.question.toString()
            println q.options.toString()
            return [qid:params.qid,
                    questions:questions,
                    question:q.question,
                    option1: q.options[0],
                    option2: q.options[1],
                    option3: q.options[2],
                    option4: q.options[3]
            ]
        }
        if (params.cid){
            def q = Question.findById(params.cid);
            q.question = params.question;
            q.options[0] = params.option1;
            q.options[1] = params.option2;
            q.options[2] = params.option3;
            q.options[3] = params.option4;
            q.save(flush:true, failOnError:true);

        }

        return [questions:questions];
    }
    def screen() {}

    def stats() {
        // get last question
        def q = CurrentQuestion.listOrderById(order: "asc", sort: "id")
        //def q2 = CurrentQuestion.findById(1);
        def questions = q.listIterator();

        //def quest = CurrentQuestion.listOrderByAns(order: "asc", sort: "id");
        //println quest.qst_txt + " the question woah"
        //println quest.ans.ans_txt[0][3] + " ??????????"
        //def v = Vote.findAllByQuestion_id(q.id.toString());

        // Old Implementation of Stats Page
        /*
        def r1 = q2.ans.result_number[0];
        def r2 = q2.ans.result_number[1];
        def r3 = q2.ans.result_number[2];
        def r4 = q2.ans.result_number[3];

        [result1: r1,
         result2: r2,
         result3: r3,
         result4: r4,
         option1:q2.ans.ans_txt[0],
         option2:q2.ans.ans_txt[1],
         option3:q2.ans.ans_txt[2],
         option4:q2.ans.ans_txt[3],
         question:q.qst_txt,
         questions:questions
        ]
        */

        def q4 = CurrentQuestion.findById(params.qid);
        if (q4 == null){
            return [questions:questions];
        }

        return [qid:params.qid,
                questions:questions,
                question:q4.qst_txt,
                option1:q4.ans.ans_txt[0],
                option2:q4.ans.ans_txt[1],
                option3:q4.ans.ans_txt[2],
                option4:q4.ans.ans_txt[3],
                result1: q4.ans.result_number[0],
                result2: q4.ans.result_number[1],
                result3: q4.ans.result_number[2],
                result4: q4.ans.result_number[3],
        ]

    }

    def help() {}

    def checkUpdate() {
        println "checkUpdate";
        def questions = CurrentQuestion.listOrderById(order: "asc", sort: "id");
        if (params.checkall == 'true') {    //check all
            for (int i = 0; i < questions.size(); i++) {
                questions[i].is_selected = "checked";
            }
        } else if (params.checkall == 'false') {    //uncheck all
            for (int i = 0; i < questions.size(); i++) {
                questions[i].is_selected = "";
            }
        } else {    //check or uncheck a specific question
            def q = CurrentQuestion.findById(params.question);
            println q.qst_txt;
            if (q.is_selected == "") {
                q.is_selected = "checked";
            } else {
                q.is_selected = "";
            }
        }

        redirect(action: "select"); //go back to select.html
    }

    def select() {
        def questions = CurrentQuestion.listOrderById(order: "asc", sort: "id");
        println questions.qst_txt;
        //println questions.qst_txt;
        [questions: questions]
    }


}

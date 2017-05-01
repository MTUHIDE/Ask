package ask

import grails.converters.JSON

class AskController {

    def index() {
        if (params.question){
            def o1 = params.option1;
            def o2 = params.option2;
            def o3 = params.option3
            def o4 = params.option4;
            def q1 = new Question(question:params.question,
                    options:[o1,o2,o3,o4])
            q1.save()
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
        def q = Question.listOrderById(order: "asc", sort: "id")[-1];
        println q
        println q.id
        //def v = Vote.findAllByQuestion_id(q.id.toString());
        def r1 = Vote.findAllByQuestion_idAndResult(q.id.toString(), 0).size();
        def r2 = Vote.findAllByQuestion_idAndResult(q.id.toString(), 1).size();
        def r3 = Vote.findAllByQuestion_idAndResult(q.id.toString(), 2).size();
        def r4 = Vote.findAllByQuestion_idAndResult(q.id.toString(), 3).size();

        [result1: r1,
         result2: r2,
         result3: r3,
         result4: r4,
         option1:q.options[0],
         option2:q.options[1],
         option3:q.options[2],
         option4:q.options[3],
         question:q.question
        ]


    }
}

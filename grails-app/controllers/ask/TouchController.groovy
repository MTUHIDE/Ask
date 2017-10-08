package ask

class TouchController {

    def index() {}
    def index2() {}

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
            redirect(action: "vote", params:[id: q.id, vid:voteid])
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
            redirect(action: "vote2", params:[id: q.id, vid:voteid])
        }
        else{
            // just render the page
            return
        }
    }

    def vote(){
        println "Vote"
        println params.id
        println params.vid;
        def q = Question.findById(params.id)
        println q.question
        println q.options[0]
        println q.options[1]
        println q.options[2]
        println q.options[3]
        [question: q.question,
            option1 : q.options[0],
            option2 : q.options[1],
            option3 : q.options[2],
            option4 : q.options[3],
            vid:params.vid]

    }

    def vote2(){
        println "Vote"
        println params.id
        println params.vid;
        def q = Question.findById(params.id)
        println q.question
        println q.options[0]
        println q.options[1]
        println q.options[2]
        println q.options[3]
        [question: q.question,
         option1 : q.options[0],
         option2 : q.options[1],
         option3 : q.options[2],
         option4 : q.options[3],
         vid:params.vid]

    }

    def done(){
        // ok save the vote in the results table
        // note this means that a voter and vote aren't linked
        def vote = Vote.findById(params.vid);
        def question = Question.findById(vote.question_id);
        def option_index = question.options.findIndexOf {it.contains(params.option)};
        vote.result = option_index;
        vote.save(flush: true, failOnError:true); // will trigger an error if not saved
        //http://localhost:8080/touch/done?option=Pink
        println params.option
        //            def q2 = new Question(question:"What is your favorite sport?", options:["Football", "Basketball", "Soccer", "Baseball"])
        //    String user_id; // whatever is given from the card
        //String question_id; // the question the user is responding to

        //def v = new Vote(user_id: , question_id: )

    }

    def done2(){
        // ok save the vote in the results table
        // note this means that a voter and vote aren't linked
        def vote = Vote.findById(params.vid);
        def question = Question.findById(vote.question_id);
        def option_index = question.options.findIndexOf {it.contains(params.option)};
        vote.result = option_index;
        vote.save(flush: true, failOnError:true); // will trigger an error if not saved
        //http://localhost:8080/touch/done?option=Pink
        println params.option
        //            def q2 = new Question(question:"What is your favorite sport?", options:["Football", "Basketball", "Soccer", "Baseball"])
        //    String user_id; // whatever is given from the card
        //String question_id; // the question the user is responding to

        //def v = new Vote(user_id: , question_id: )

    }
}

package ask

class AskController {

    def index() { }
    def edit() {

        def q = Question.findByQuestion("What is your favorite color?");
        println q;
        println q.id
        println q.question
        println q.options
    }
    def screen() {}
    def stats() {}
}

package ask

class BootStrap {

    def init = {
        servletContext ->
            Question q = new Question(question:"What is your favorite color?", options:["Blue", "Pink", "Green", "Yellow"])
            q.save();

            println q;
    }

    def destroy = {
    }
}

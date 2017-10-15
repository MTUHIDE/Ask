package ask;

class BootStrap {

    def init = {
        servletContext ->
            def q1 = new Question(question:"What is your favorite color?", options:["Blue", "Pink", "Green", "Yellow"])
            q1.save();

            def q2 = new Question(question:"What is your favorite sport?", options:["Football", "Basketball", "Soccer", "Baseball"])
            q2.save();

            println "Test questions...."
            println q1;
            println q2;
    }

    def destroy = {
    }
}

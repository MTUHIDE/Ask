package ask

class Question {

    static constraints = {
    }

    String  question;
    String[] options;
    static hasMany = [vote : Vote];

}

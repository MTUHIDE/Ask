package Ask

class Question_New {

    static constraints = {
    }

    String  qst_txt;

    static hasMany = [ans : Ans_Key];

}

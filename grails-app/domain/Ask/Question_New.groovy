package Ask

class Question_New {

    static constraints = {
    }

    String  qst_txt; // Where the text for the input for the questions is stored and pulled from

    static hasMany = [ans : Ans_Key]; // Creates one to many link to Ans_Key table

}

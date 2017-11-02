package Ask

class CurrentQuestion {

    static constraints = {
    }

    String  qst_txt; // Where the text for the input for the questions is stored and pulled from

    static hasMany = [ans: AnsKey]; // Creates one to many link to Ans_Key table

}

package ask

class CurrentQuestion {

    static constraints = {
    }

    String  qst_txt; // Where the text for the input for the questions is stored and pulled from
    String is_selected = "checked";    //true/false value if the question is selected

    static hasMany = [ans: AnsKey]; // Creates one to many link to Ans_Key table

}

package Ask

class Ans_Key {

    static constraints = {
    }

    Integer qst_number; // Upon row creation, should be populated with Question_New primary key
    String ans_txt; // Actual text for the question answers
    Integer result_number; // Increasing number for the amount of correct responses

    static belongsTo = [qst : Question_New]

}

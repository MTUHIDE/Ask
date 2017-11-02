package Ask

class AnsKey {

    static constraints = {
    }

    String ans_txt; // Actual text for the question answers
    Integer result_number; // Increasing number for the amount of correct responses

    static belongsTo = [qst_number: CurrentQuestion] // Creates a dependency on the Question_New table, and populates this table with our Question ID

}
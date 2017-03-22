package ask

class TouchController {

    def index() { }
    def scan() {
        // if there is a card id submission
        println(params);
        if (params.cardid){
            redirect(action: "vote")
        }
        else{
            // just render the page
            return
        }

    }

    def vote(){

    }

    def done(){

    }
}

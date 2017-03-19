package ask
import grails.plugin.springsecurity.authentication.encoding.BCryptPasswordEncoder;

class TouchController {

    def index() { }
    def scan() {
        // if there is a card id submission

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

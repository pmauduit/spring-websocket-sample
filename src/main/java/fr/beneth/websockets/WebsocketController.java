package fr.beneth.websockets;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class WebsocketController {

    @RequestMapping("wstest")
    public ModelAndView webSocket() {
        return new ModelAndView("wstest");
    }
}

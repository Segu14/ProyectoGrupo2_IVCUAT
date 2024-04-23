package proyectog2.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class InformacionController {
    
    @RequestMapping("/informacion")
    public String contenido(Model model) {
        return "/informacion/contenido";
    }
    
}

package home.spmvcjsp;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class FirstController {

    @RequestMapping("/test")
    public String test() {
        return "test"; // Ім'я JSP файлу без розширення
    }
    @RequestMapping("/users")
    public String users() {
        return "users"; // Ім'я JSP файлу без розширення
    }
}

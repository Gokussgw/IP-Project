package my.utm.ip.spring_jdbc.controller;

import my.utm.ip.spring_jdbc.entity.User;
import my.utm.ip.spring_jdbc.service.*;
import java.sql.SQLException;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/mbip")
public class MBIPController {

    @Autowired
    private UserService userService; // Assuming UserService handles user authentication

    // Default route to display the login form
    @GetMapping("/")
    public String showLoginForm() {
        return "login"; // The name of the JSP file for the login form
    }

    // Process the login form submission
    @PostMapping("/login")
    public String processLogin(@RequestParam("email") String email, 
                               @RequestParam("password") String password, 
                               Model model) throws SQLException {
        boolean isAuthenticated = userService.authenticate(email, password);
        
        if (isAuthenticated) {
            User user = userService.findUserByEmail(email); // Assuming such a method exists in UserService
            model.addAttribute("user", user);
    
            // Redirect based on user role
            if ("admin".equals(user.getRole())) {
                return "redirect:/index"; // Redirect to index.jsp for admins
            } else {
                model.addAttribute("message", "Welcome " + user.getEmail());
                return "HomePage"; // Redirect to user dashboard for regular users
            }
        } else {
            model.addAttribute("loginError", "Invalid email or password");
            return "login";
        }
    }
    

    // Additional mappings for other functionalities
}    

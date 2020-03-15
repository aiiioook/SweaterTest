package com.example.sweater2.Controller;

import com.example.sweater2.domain.Role;
import com.example.sweater2.domain.User;
import com.example.sweater2.repos.UserRepo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import java.util.Collections;
import java.util.Map;

@Controller
public class RegistrationController {
    @Autowired
    private UserRepo userRepo;

@GetMapping("/registration")
public String registration(){
    return "registration";
}
@PostMapping("/registration")
    public String addUser(User user, Map<String, Object> model){
    User userFromDB = userRepo.findByUsername(user.getUsername());
    if (userFromDB != null){
        model.put("message", "User is exist");
        return "registration";
    }

    user.setActive(true);
    user.setRole(Collections.singleton(Role.USER));
    userRepo.save(user);
    return "redirect:/login";

}
}

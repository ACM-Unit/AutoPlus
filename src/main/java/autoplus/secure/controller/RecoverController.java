package autoplus.secure.controller;

import autoplus.secure.entity.User;
import autoplus.secure.service.UserService;
import autoplus.secure.service.impl.EmailService;
import org.apache.commons.lang.RandomStringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Created by Admin on 19.05.2016.
 */
@Controller
@RequestMapping("/recover-password")
public class RecoverController {

    @Autowired
    private UserService serviceUser;
    @Autowired
    private EmailService sender;

    @RequestMapping(method = RequestMethod.GET)
    public String loginPage(Model model){

        return "index";
    }
    @RequestMapping(method = RequestMethod.POST)
    public String RecoveryPage(HttpServletRequest req, HttpServletResponse resp) throws ServletException {
        String email=req.getParameter("email");


            String newPassword = RandomStringUtils.random(8, true, true);
            User user= new User();
            user.setPassword(newPassword);

            try {
                /*sender.sendMail(star.getEmail(), star, req.getServletContext().getRealPath("/template/emailRecover.html") );*/
                /*sender.sendMail(star.getEmail(), "востановление пароля", "ваш новый пароль - " + newPassword);*/
                serviceUser.editUserWithSha(user);
                req.setAttribute("status", "sendrecoverpassword");
            }catch (Exception e){
                req.setAttribute("status", "sendrecoverpassworderror1");
            }


            req.setAttribute("status", "sendrecoverpassworderror");


        return "validationMessage";
    }
}

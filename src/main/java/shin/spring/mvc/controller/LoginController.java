package shin.spring.mvc.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import shin.spring.mvc.service.LoginService;
import shin.spring.mvc.vo.LoginVO;

import javax.servlet.http.HttpSession;

@Controller
public class LoginController {

    @Autowired
    private LoginService lsrv;

    @Autowired
    private BCryptPasswordEncoder passwordEncoder;

    @GetMapping("/login/join")
    public String join(){
        return "login/join.tiles";
    }

    @PostMapping("/login/joinOK")
    public String joinOK(ModelAndView mv, LoginVO lvo){
        mv.setViewName("/joinOK.tiles");
        int result = lsrv.idCheck(lvo);
        String returnPage = "";

        if (result >= 1) {
            returnPage = "login/fail";
        }else if(result == 0){
            String inputPassword = lvo.getPassword();
            String encodedPassword = passwordEncoder.encode(inputPassword);
            lvo.setPassword(encodedPassword);
            lvo.setPasswordcheck(encodedPassword);
            lsrv.inputJoinData(lvo);
            returnPage = "login/success";
            System.out.println(encodedPassword);
        }
        return returnPage;
    }

    @GetMapping("/login/fail")
    public String fail(){
        return "login/fail.tiles";
    }

    @GetMapping("/login/success")
    public String success(){
        return "login/success.tiles";
    }


    @GetMapping("/login/login")
    public String login(){
        return "login/login.tiles";
    }

    @PostMapping("/login/loginProcess")
    public String loginProcess(LoginVO lvo, HttpSession session, RedirectAttributes redirectAttributes){
        try {

            session.getAttribute("UID");
            LoginVO login = lsrv.login(lvo);
            boolean passwordMatch = passwordEncoder.matches(lvo.getPassword(), login.getPassword());

            if (login != null && passwordMatch == true) {
                session.setAttribute("UID", login);
                System.out.println("login ok");
            } else {
                session.setAttribute("UID", null);
                redirectAttributes.addFlashAttribute("msg", false);
                System.out.println("login fail");
            }
        } catch (Exception e){
            session.setAttribute("UID", null);
            redirectAttributes.addFlashAttribute("msg", false);
            System.out.println("login fail");
        }
        finally {
            return "redirect:/list";
        }
    }


    @GetMapping("/login/logout")
    public String logout(HttpSession session) {
        session.removeAttribute("UID");
        return "redirect:/list";
    }

    @GetMapping("/login/memberInfo")
    public ModelAndView memberInfo (ModelAndView mv, HttpSession session){
        mv.setViewName("/login/memberInfo.tiles");
        LoginVO lvo = (LoginVO) session.getAttribute("UID");
        mv.addObject("data", lsrv.readOneMember(lvo));
        return mv;
    }


}

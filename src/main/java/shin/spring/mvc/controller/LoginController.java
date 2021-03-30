package shin.spring.mvc.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;
import shin.spring.mvc.service.LoginService;
import shin.spring.mvc.vo.LoginVO;

@Controller
public class LoginController {

    @Autowired
    private LoginService lsrv;

    @GetMapping("/login/join")
    public String join(){
        return "login/join.tiles";
    }

    @PostMapping("/login/joinOK")
    public ModelAndView joinOK(ModelAndView mv, LoginVO lvo){
        mv.setViewName("/joinOK.tiles");
        int cnt = lsrv.inputJoinData(lvo);

        return mv;
    }

}

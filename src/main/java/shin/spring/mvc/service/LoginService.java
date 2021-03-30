package shin.spring.mvc.service;

import shin.spring.mvc.vo.LoginVO;

public interface LoginService {
    int inputJoinData(LoginVO lvo);

    int idCheck(LoginVO lvo);

    LoginVO login(LoginVO lvo);

    LoginVO readOneMember(LoginVO lvo);
}

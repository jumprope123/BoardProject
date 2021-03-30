package shin.spring.mvc.mapper;

import shin.spring.mvc.vo.LoginVO;

public interface LoginMapper {


    int inputData(LoginVO lvo);

    int checkId(String userid);

    LoginVO readOneMember(LoginVO lvo);

    String checkEncodedPassword(String userid);

    int changeNick(LoginVO lvo);

    int changePassword(LoginVO lvo);
}

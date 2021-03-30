package shin.spring.mvc.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import shin.spring.mvc.mapper.LoginMapper;
import shin.spring.mvc.vo.LoginVO;

@Service
public class LoginServiceImpl implements LoginService{

    @Autowired
    private LoginMapper mapper;


    @Override
    public int inputJoinData(LoginVO lvo) {
        return mapper.inputData(lvo);
    }

    @Override
    public int idCheck(LoginVO lvo) {
        return mapper.checkId(lvo.getUserid());
    }

    @Override
    public LoginVO login(LoginVO lvo) {
        return mapper.readOneMember(lvo);
    }
}

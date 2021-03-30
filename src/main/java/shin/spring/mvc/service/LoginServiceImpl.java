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
        System.out.println(lvo.getUserid());
        return mapper.inputData(lvo);
    }
}

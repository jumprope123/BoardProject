package shin.spring.mvc.vo;

import lombok.Data;

@Data
public class LoginVO {

    private String userid;
    private String nickname;
    private String password;
    private String passwordcheck;

}

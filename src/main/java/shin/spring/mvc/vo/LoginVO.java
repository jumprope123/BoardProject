package shin.spring.mvc.vo;

import lombok.Data;

@Data
public class LoginVO {

    private String userid;
    private String nickname;
    private String password;
    private String passwordcheck;

    public LoginVO() {
    }

    public LoginVO(String userid, String nickname, String password, String passwordcheck) {
        this.userid = userid;
        this.nickname = nickname;
        this.password = password;
        this.passwordcheck = passwordcheck;
    }
}

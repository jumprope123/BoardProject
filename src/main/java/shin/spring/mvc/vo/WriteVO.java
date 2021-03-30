package shin.spring.mvc.vo;


import lombok.Data;

@Data
public class WriteVO {
    private int boardno;
    private String username;
    private String password;
    private String title;
    private String textforwrite;
    private int readcnt;
    private String regdate;
    private String modidate;
    private Boolean activate;

    public WriteVO() {
    }

}
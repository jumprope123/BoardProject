package shin.spring.mvc.service;

import shin.spring.mvc.vo.WriteVO;

import java.util.List;

public interface WriteService {
    int inputData(WriteVO wvo);

    List<WriteVO> readAllData(String cp);

    int readAllDataCnt();

    List<WriteVO> readFindData(String findtype, String findkey, String cp);

    int readFindCnt(String findtype, String findkey);

    WriteVO readOneData(String boardno);

    Boolean passwdCheck(String boardno, String password);

    int modiData(WriteVO wvo);

    void addViewCtn(String boardno);

    void delOneData(String boardno);
}

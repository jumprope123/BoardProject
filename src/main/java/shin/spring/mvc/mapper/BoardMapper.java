package shin.spring.mvc.mapper;

import shin.spring.mvc.vo.WriteVO;

import java.util.List;
import java.util.Map;

public interface BoardMapper {

    int delOneData(int boardno);

    int

    inputData(WriteVO wvo);

    List<WriteVO> readAllData(int snum);

    int readAllDataCnt();

    List<WriteVO> readFindData(Map<String, Object> map);

    int readFindCnt(Map<String, Object> map);

    WriteVO readOneData(int boardnoForInt);

    String passwdCheck(int parseInt);

    int modiData(WriteVO wvo);

    void addViewCtn(int parseInt);
}

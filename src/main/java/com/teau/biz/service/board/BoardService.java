package com.teau.biz.service.board;

import java.util.List;

import com.teau.biz.board.BoardVO;
import com.teau.biz.board.RBoardVO;

public interface BoardService {

    //CRUD 기능의 메소드 구현
    //글 등록
    void insertBoard(BoardVO vo);

    //글 수정
    void updateBoard(BoardVO vo);
    
    //글 댓 업뎃
    void updateReplyCount(BoardVO vo) throws Exception;

    //글 삭제
    void deleteBoard(BoardVO vo);

    //글 상세조회
    BoardVO getBoard(BoardVO vo);

    //씨앗 목록 조회
    List<BoardVO> getBoardListO(BoardVO vo);

    //새싹 목록 조회
    List<BoardVO> getBoardListB(BoardVO vo);

    //CRUD 기능의 메소드 구현
    //글 등록
    void insertBoard(RBoardVO vo);

    //글 수정
    void updateBoard(RBoardVO vo);

    //글 삭제
    void deleteBoard(RBoardVO vo);

    //글 상세조회
    RBoardVO getBoard(RBoardVO vo);

    //글 목록 조회
    List<RBoardVO> getBoardListR(RBoardVO vo);

    //글 갯수
    int totalCnt();

    int totalCntB();

}

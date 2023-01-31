package com.jth.exercise.board.dao;

import java.util.List;

import com.jth.exercise.board.vo.BoardVO;

public interface BoardDAO {
	
	int insertBoard(BoardVO boardVO);
	
	List<BoardVO> selectBoardList();
	
	BoardVO selectBoardDetail(BoardVO boardVO);
	
	int updateBoard(BoardVO boardVO);
	
	int deleteBoard(BoardVO boardVO);
	
}

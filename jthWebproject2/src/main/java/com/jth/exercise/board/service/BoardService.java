package com.jth.exercise.board.service;

import java.util.List;

import com.jth.exercise.board.vo.BoardVO;

public interface BoardService {

	public int insertBoard(BoardVO boardVO) throws Exception;

	public List<BoardVO> selectBoardList() throws Exception;
	
	public BoardVO selectBoardDetail(BoardVO boardVO) throws Exception;
	
	public int updateBoard(BoardVO boardVO) throws Exception;
	
	public int deleteBoard(BoardVO boardVO) throws Exception;
	
}

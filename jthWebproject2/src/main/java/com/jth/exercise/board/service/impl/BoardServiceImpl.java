package com.jth.exercise.board.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.jth.exercise.board.dao.BoardDAO;
import com.jth.exercise.board.service.BoardService;
import com.jth.exercise.board.vo.BoardVO;

@Service
public class BoardServiceImpl implements BoardService{

	@Autowired
	private BoardDAO boardDAO;
	
	@Override
	public int insertBoard(BoardVO boardVO) throws Exception {
		
		return boardDAO.insertBoard(boardVO);
	}

	@Override
	public List<BoardVO> selectBoardList() throws Exception {

		return boardDAO.selectBoardList();
	}

	@Override
	public BoardVO selectBoardDetail(BoardVO boardVO) throws Exception {
		
		return boardDAO.selectBoardDetail(boardVO);
	}

	@Override
	public int updateBoard(BoardVO boardVO) throws Exception {

		return boardDAO.updateBoard(boardVO);
	}

	@Override
	public int deleteBoard(BoardVO boardVO) throws Exception {
		
		return boardDAO.deleteBoard(boardVO);
	}

}

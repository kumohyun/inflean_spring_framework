package com.jth.exercise.board.dao.impl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.jth.exercise.board.dao.BoardDAO;
import com.jth.exercise.board.vo.BoardVO;

// 서비스로 넘기기전에 매핑되는 지점을 알려주는 어노테이션
@Repository
public class BoardDAOImpl implements BoardDAO{

	@Autowired
	private SqlSession session;
	
	private String namespace = "com.jth.exercise.board.mapper.";
	
	@Override
	public int insertBoard(BoardVO boardVO) {
		
		return session.insert(namespace + "insertBoard", boardVO);
	}

	@Override
	public List<BoardVO> selectBoardList() {
		
		return session.selectList(namespace + "selectBoardList");
	}

	@Override
	public BoardVO selectBoardDetail(BoardVO boardVO) {
		
		return session.selectOne(namespace +"selectBoardDetail", boardVO);
	}

	@Override
	public int updateBoard(BoardVO boardVO) {

		return session.update(namespace + "updateBoard", boardVO);
	}

	@Override
	public int deleteBoard(BoardVO boardVO) {
		
		return session.delete(namespace + "deleteBoard", boardVO);
	}
	
}

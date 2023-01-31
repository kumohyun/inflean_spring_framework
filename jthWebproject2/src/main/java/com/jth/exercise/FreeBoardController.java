package com.jth.exercise;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/*
 * 자유게시판
 * @author 구모현 
*/
@Controller
/* 
 * 지정 시 하위 Mapping에 모두 적용
 * @RequestMapping("/freeboard") */
public class FreeBoardController {
	
	private static final Logger logger = LoggerFactory.getLogger(FreeBoardController.class);
	
	/*
	 * 자유게시판
	 * @return
	 */
	@RequestMapping(value = "/freeboard/list", method = RequestMethod.GET)
	public String freeboardList() {
		return "freeBoardList";
	}
	
	/*
	 * 자유게시판 등록
	 */
	@GetMapping(value = "/freeboard/insert")
	public String freeboardInsert() {
		
		return "freeBoardInsert";
	}
	
	/*
	 * 자유게시판 수정
	 */
	@GetMapping(value = "/freeboard/modify")
	public String freeboardModify() {
		
		return "freeboard/freeBoardModify";
	}
	
}

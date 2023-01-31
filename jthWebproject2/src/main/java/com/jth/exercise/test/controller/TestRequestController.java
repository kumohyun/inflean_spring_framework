package com.jth.exercise.test.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.jth.exercise.test.vo.PurchaseRequestVo;

@Controller
public class TestRequestController {
	
	private static final Logger logger = LoggerFactory.getLogger(TestRequestController.class);
	
	@GetMapping("/test/request2/list")
	public String list() {
		
		return "test/request2/tRequestList";
		
	}
	
	@GetMapping("/test/request2/regist")
	public ResponseEntity<String> getRegist(String boardId, String boardContent, String boardWriter){
		
		ResponseEntity<String> reStr = null;
		
		logger.info("boardId : {}", boardId);
		logger.info("boardContent : {}", boardContent);
		logger.info("boardWriter : {}", boardWriter);
		
		reStr = new ResponseEntity<String>("SUCCESS", HttpStatus.OK);
		
		return reStr;
		
	}
	
	@GetMapping("/test/request2/registVO")
	@ResponseBody
	public ResponseEntity<String> getResigtVO(PurchaseRequestVo purchaseRequestVO){
		ResponseEntity<String> result = null;
		
		logger.info("purchaseRequestVO : {}", purchaseRequestVO);
		logger.info("purchaseRequestVO.toString : {}", purchaseRequestVO.toString());
		
		
		result = new ResponseEntity<String>("SUCCESS", HttpStatus.OK);
		
		return result;
		
	}
	
	
	
	
}

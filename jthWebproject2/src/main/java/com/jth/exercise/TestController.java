package com.jth.exercise;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.jth.exercise.test.vo.TestBoardVO;

@Controller
// @RequestMapping 사용 시 하위 매핑에 상속
@RequestMapping("/test")
public class TestController {
	
	private static final Logger logger = LoggerFactory.getLogger(TestController.class);
	
	@GetMapping(value ="/list")
	public String testList() {
		logger.info("TestController, testList");
		
		return "test/testList";
	}
	
	@GetMapping(value ="/detail")
	// @PathVariable을 활용한 url 변수 사용, 정보 전달

	public String testDetail(Model model) {
		logger.info("TestController, testDetail");
				
		return "test/testDetail";
	}
	
	/*
	 * Post 전송
	 * @param testBoardVO
	 * @return 
	 */
	@PostMapping("/detail/post")
	// @RequestBody 넘어온 데이터를 받음
	public ResponseEntity<String> testDetailPost(@RequestBody TestBoardVO testBoardVO){
		logger.info("TestController, testDetailPost.");
		
		if(testBoardVO != null) {
			logger.info(testBoardVO.toString());
		}
		
		ResponseEntity<String> resultEntity = null;
				try {
					resultEntity = new ResponseEntity<String>("SUCCESS", HttpStatus.OK);
				}catch (Exception e) {
					resultEntity = new ResponseEntity<String>("FAIl", HttpStatus.BAD_REQUEST);
				}
				
		return resultEntity;
	}
	/*
	 * Put전송
	 * @param testBoardVO
	 * @return  
	 */
	@RequestMapping(value = "/detail/put", method=RequestMethod.PUT)
//	@PutMapping("/detail/put")
	public ResponseEntity<String> testDetailPut(@RequestBody TestBoardVO testBoardVO){
		logger.info("TestController, testDetailPut");
		
		if(testBoardVO != null) {
			logger.info(testBoardVO.toString());
		}
		
		ResponseEntity<String> resultEntity = null;
		try {
			resultEntity = new ResponseEntity<String>("SUCCESS", HttpStatus.OK);
			throw new Exception("good day");
		} catch (Exception e) {
			resultEntity = new ResponseEntity<String>("FAIl", HttpStatus.BAD_REQUEST);
		}
		
		return resultEntity;
		
	}
	
	@PostMapping("/detail/xml")
	public ResponseEntity<String> testDetailXml(@RequestBody TestBoardVO testBoardVO){
		logger.info("TestController, testDetailXml");
		
		if(testBoardVO != null) {
			logger.info(testBoardVO.toString());
		}
		
		ResponseEntity<String> resultEntity = null;
		try {
			resultEntity = new ResponseEntity<String>("SUCCESS", HttpStatus.OK);
		} catch (Exception e) {
			resultEntity = new ResponseEntity<String>("FAIl", HttpStatus.BAD_REQUEST);
		}
		
		return resultEntity;
		
	}
	
	// method에 post, get 명시
	@RequestMapping(value ="/insert", method=RequestMethod.POST)
	public String testInsert() {
		logger.info("TestController, testInsert");
	
		return "test/testInsert";
	}
	
	// @PostMapping 사용 시 method 값 지정 안해도 됨.
	@PostMapping(value ="/update")
	public String testUpdate() {
		logger.info("TestController, testUpdate");
		
		return "test/testUpdate";
	}

	@PostMapping(value ="/delete")
	public String testDelete() {
		logger.info("TestController, testDelete");
		
		return "test/testDelete";
	}
	
}

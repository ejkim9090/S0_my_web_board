package kh.book.b29.common.controller;

import java.io.PrintWriter;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;

import kh.book.b29.board.model.service.BoardService;
import kh.book.b29.board.model.vo.Board;
import kh.book.b29.member.model.service.MemberService;
import kh.book.b29.member.model.vo.Member;

@Controller
public class AjaxTest {
	
	@Autowired
	private MemberService serviceMember;
	@Autowired
	private BoardService serviceBoard;

	@RequestMapping(value = "/ajaxtest", method = RequestMethod.GET)
	public String ajaxtest1(ModelAndView mv) {
//		mv.setViewName("ajaxtest");
//		return mv;
		return "ajaxtest";
	}
	
	@RequestMapping("/ajaxResponse")
	// ajax response 방법 1 - Servlet 방식과 동일
	public void ajaxResponse_1(HttpServletResponse response
			, @RequestParam("id") String id
			, @RequestParam("searchword") String searchword
			) throws Exception{
		System.out.println("ajaxResponse_1");
		
		Member mvo = serviceMember.checkIdDup(id);
		List<Board> bvolist = serviceBoard.selectListBoard();
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("memberVo", mvo);
		map.put("boardList", bvolist);
		map.put("aaa", 111);
		map.put("bbb", "추가데이터");
		
		PrintWriter out = response.getWriter();
		out.append(new Gson().toJson(map));
		out.flush();
		out.close();
	}
	
	@RequestMapping("/ajaxResponse2")
	// ajax response 방법 2 
	@ResponseBody
	public String ajaxResponse_2(
			@RequestParam("id") String id
			, @RequestParam("searchword") String searchword
			) throws Exception{
		System.out.println("ajaxResponse_2");
		
		Member mvo = serviceMember.checkIdDup(id);
		List<Board> bvolist = serviceBoard.selectListBoard();
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("memberVo", mvo);
		map.put("boardList", bvolist);
		map.put("aaa", 111);
		map.put("bbb", "추가데이터");
		return new Gson().toJson(map);		
	}
	
	@RequestMapping("/ajaxResponse3")
	// ajax response 방법 3
	public ModelAndView ajaxResponse_3(
			@RequestParam("id") String id
			, @RequestParam("searchword") String searchword
			, ModelAndView mv
			) throws Exception{
		System.out.println("ajaxResponse_3");
		
		Member mvo = serviceMember.checkIdDup(id);
		List<Board> bvolist = serviceBoard.selectListBoard();
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("memberVo", mvo);
		map.put("boardList", bvolist);
		map.put("aaa", 111);
		map.put("bbb", "추가데이터");
		
		mv.addAllObjects(map);
		mv.setViewName("jsonView");  // ajax로 Json형태로 전달할 수 있도록 bean id jsonView으로 return함
		return mv;
	}
	@RequestMapping("/ajaxResponse4")
	// ajax response 방법 3
	@ResponseBody
	public ResponseEntity<String> ajaxResponse_4(
			@RequestParam("id") String id
			, @RequestParam("searchword") String searchword
			, ModelAndView mv
			) throws Exception{
		System.out.println("ajaxResponse_3");
		
		Member mvo = serviceMember.checkIdDup(id);
		List<Board> bvolist = serviceBoard.selectListBoard();
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("memberVo", mvo);
		map.put("boardList", bvolist);
		map.put("aaa", 111);
		map.put("bbb", "추가데이터");
		
		return new ResponseEntity<String>(new Gson().toJson(map), HttpStatus.OK);
	}
	
	@ExceptionHandler
	public ResponseEntity<String> exceptionHandler(Exception e) {
		e.printStackTrace();
		
		return new ResponseEntity<String>(HttpStatus.NOT_ACCEPTABLE);
	}
}














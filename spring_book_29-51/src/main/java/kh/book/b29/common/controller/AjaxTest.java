package kh.book.b29.common.controller;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
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
//		Board bvo = serviceBoard.selectBoard(1);
		
		PrintWriter out = response.getWriter();
		out.append(new Gson().toJson(mvo));
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
		
		return new Gson().toJson(mvo);		
	}
	
	
	@ExceptionHandler
	public void exceptionHandler(Exception e) {
		e.printStackTrace();
	}
}













package kh.book.b29.common.controller;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class AjaxTest {

	@RequestMapping(value = "/ajaxtest", method = RequestMethod.GET)
	public String ajaxtest1(ModelAndView mv) {
//		mv.setViewName("ajaxtest");
//		return mv;
		return "ajaxtest";
	}
	
	@RequestMapping("/ajaxResponse")
	// ajax response 방법 1 - Servlet 방식과 동일
	public void ajaxResponse_1(HttpServletResponse response) throws Exception{
		System.out.println("ajaxResponse_1");
		PrintWriter out = response.getWriter();
		out.append("답변");
		out.flush();
		out.close();
	}
	
	@RequestMapping("/ajaxResponse")
	// ajax response 방법 2 
	@ResponseBody
	public String ajaxResponse_2() throws Exception{
		System.out.println("ajaxResponse_2");
		return "답변2";		
	}
	
	
	@ExceptionHandler
	public void exceptionHandler(Exception e) {
		e.printStackTrace();
	}
}














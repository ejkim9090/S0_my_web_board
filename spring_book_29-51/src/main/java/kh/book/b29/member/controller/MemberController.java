package kh.book.b29.member.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import kh.book.b29.member.model.service.MemberService;
import kh.book.b29.member.model.service.MemberServiceImpl;
import kh.book.b29.member.model.vo.Member;

@Controller
@RequestMapping("/member")
public class MemberController {
	@Autowired
	private MemberService service;

	@GetMapping("/insert")
	public /*ModelAndView*/ void insert(/* ModelAndView mv */) {
//		mv.setViewName("/member/insert");
//		return mv;
	}

	@PostMapping("/insert")
	public /*ModelAndView*/String doInsert(Member vo/* , ModelAndView mv */) {
		int result = service.insertMember(vo);
//		mv.setViewName("redirect:/");
//		return mv;
		return "redirect:/";
	}
	
	
	@GetMapping("/info")
	public ModelAndView info(HttpSession session, ModelAndView mv) {
		String id = (String)session.getAttribute("ssInfoId");
		
		// 비추 ModelAndView mv = new ModelAndView();
		if(id != null) {
			mv.addObject("myinfo", service.checkIdDup(id));
			mv.setViewName("/member/info");
		} else {
			mv.setViewName("redirect:/");
		}
		return mv;
	}
	@PostMapping("/login")
	public ModelAndView dologin(Member mvo, HttpSession session, ModelAndView mv) {
		Member vo = service.selectMember(mvo);
		if(vo != null) {
			session.setAttribute("ssInfoId", vo.getId());
		}
		mv.setViewName("redirect:/");
		return mv;
	}
	@GetMapping("/login")
	public String login() {
//		return "member_c";  // mapping 형태 ViewResolver 사용에 대한 예
		return "/member/login";
	}
}

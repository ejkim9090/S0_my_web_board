package kh.book.b29.board.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import kh.book.b29.board.model.service.BoardService;
import kh.book.b29.board.model.vo.Board;

@Controller
@RequestMapping("/board")
public class BoardController {
	@Autowired
	private BoardService service;

	@GetMapping("/insert")
	public String insert() {
		return "/board/insert";
	}
	
	@PostMapping("/insert")
	public String insert(Board bvo) {
		int result = service.insertBoard(bvo);
		
		return "redirect:/board/list";
	}
	@GetMapping("/list")
	public ModelAndView list(ModelAndView mv
			, @RequestParam(name = "page", defaultValue = "1") String currentPageNumStr
			) throws Exception {
		int currentPageNum = Integer.parseInt(currentPageNumStr);
		mv.addObject("boardlist", service.selectListBoard(currentPageNum));
		mv.setViewName("/board/list");
		return mv;
	}
	
	@ExceptionHandler
	public ModelAndView handlerBoardException(Exception e/* 오류발생 ,ModelAndView mv  */) {
		ModelAndView mv = new ModelAndView(); 
		mv.addObject("errMsg", e.getMessage());
		mv.setViewName("/error/500error");
		return mv;
	}
}


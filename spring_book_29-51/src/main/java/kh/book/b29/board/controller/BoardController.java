package kh.book.b29.board.controller;

import java.sql.SQLException;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataIntegrityViolationException;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
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
	
	@GetMapping
	public ModelAndView board(ModelAndView mv
			) throws Exception {
		mv.addObject("boardlist", service.selectListBoard());
		mv.setViewName("/board/list");
		return mv;
	}

	@GetMapping("/insert.abc")
	public void insert() {
		return;
	}
	
	@PostMapping("/insert")
	public String insert(Board bvo)  throws Exception {
		int result = service.insertBoard(bvo);
		
		return "redirect:/board/list";
	}
	
	@GetMapping("/list")
	public ModelAndView list(ModelAndView mv
			, @RequestParam(name = "page", defaultValue = "1") String currentPageNumStr
			) throws Exception {
		int currentPageNum = Integer.parseInt(currentPageNumStr);
		int limits = 3;
		mv.addObject("boardlist", service.selectListBoard(currentPageNum, limits));
		mv.setViewName("/board/list");
		return mv;
	}
	
	
	@ExceptionHandler(NumberFormatException.class)
	public ModelAndView handlerBoardNumberFormatException(NumberFormatException e/* 오류발생 ,ModelAndView mv  */) {
		ModelAndView mv = new ModelAndView(); 
		mv.addObject("errMsg", "숫자만입력해야합니다.");
		mv.setViewName("/error/NFerror");
		return mv;
	}
	@ExceptionHandler(DataIntegrityViolationException.class)
	public ModelAndView handlerBoardSQLException(DataIntegrityViolationException e/* 오류발생 ,ModelAndView mv  */) {
		ModelAndView mv = new ModelAndView(); 
		mv.addObject("errMsg", "올바르지 않은 데이터로 전송에 실패했습니다.");
		mv.setViewName("/error/NFerror");
		return mv;
	}
	
//	@ExceptionHandler
	@ExceptionHandler(Exception.class)
	public ModelAndView handlerBoardException(Exception e/* 오류발생 ,ModelAndView mv  */) {
		ModelAndView mv = new ModelAndView(); 
		mv.addObject("errMsg", e.getMessage());
		mv.setViewName("/error/500error");
		return mv;
	}
}


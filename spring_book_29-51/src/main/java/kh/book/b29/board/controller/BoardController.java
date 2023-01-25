package kh.book.b29.board.controller;


import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.PropertySource;
import org.springframework.core.env.Environment;
import org.springframework.dao.DataIntegrityViolationException;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import kh.book.b29.board.model.service.BoardService;
import kh.book.b29.board.model.vo.Board;
import kh.book.b29.common.FileSaveService;

@Controller
@RequestMapping("/board")
public class BoardController {
	@Autowired
	private BoardService service;
	@Autowired
	private FileSaveService fileSaveService;
	@GetMapping
	public ModelAndView board(ModelAndView mv
			) throws Exception {
		service.selectBoardCount();
		mv.addObject("boardlist", service.selectListBoard());
//		mv.addObject("startPage", 1);
//		mv.addObject("endPage", 10);
		mv.setViewName("/board/list");
		return mv;
	}

	@GetMapping("/insert")
	public void insert() {
		return;
	}
	
	
	
	
	@PostMapping("/insert")
	public String insert(Board bvo
// 오류 name 없다면 오류			, @RequestParam(name="abc") String abc
			, @RequestParam(name="abc", required = false) String abc
			, @RequestParam(name="report",required = false) MultipartFile multipartFile
			, HttpServletRequest request
			)  throws Exception {
		
		String savedFileName = fileSaveService.saveFile(multipartFile, FileSaveService.FILE_BOARD_PATH, request);
		bvo.setBoardRenameFileName(FileSaveService.FILE_BOARD_PATH+savedFileName);
		bvo.setBoardOriginalFileName(FileSaveService.FILE_BOARD_PATH+multipartFile.getOriginalFilename());
		int result = service.insertBoard(bvo);
		return "redirect:/board";
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
//		mv.addObject("errMsg", "숫자만입력해야합니다.");
//		mv.setViewName("/error/NFerror");
		mv.setViewName("redirect:/board");
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
		e.printStackTrace();
		ModelAndView mv = new ModelAndView(); 
		mv.addObject("errMsg", e.getMessage());
		mv.setViewName("/error/500error");
		return mv;
	}
}


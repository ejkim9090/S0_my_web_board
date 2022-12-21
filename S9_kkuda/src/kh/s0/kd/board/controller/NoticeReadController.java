package kh.s0.kd.board.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kh.s0.kd.board.model.BoardService;
import kh.s0.kd.board.model.BoardVo;

/**
 * Servlet implementation class NoticeReadController
 */
@WebServlet("/noticeRead")
public class NoticeReadController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public NoticeReadController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String bnoStr = request.getParameter("bno");
		int bno = 0;
		try {
			bno = Integer.parseInt(bnoStr);
			BoardVo vo = new BoardService().selectOne(bno);
			request.setAttribute("board", vo);
		}catch (Exception e) {
			request.setAttribute("msg", "없는 글입니다.\n 목록에서 다시 읽을 글을 선택해주세요.");
		} finally {
			String viewPath = "/WEB-INF/view/board/read.jsp";
			request.getRequestDispatcher(viewPath).forward(request, response);
		}
	}

}














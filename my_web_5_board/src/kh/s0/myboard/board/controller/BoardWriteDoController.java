package kh.s0.myboard.board.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kh.s0.myboard.board.model.BoardService;
import kh.s0.myboard.board.model.BoardVo;

/**
 * Servlet implementation class BoardWriteDoController
 */
@WebServlet("/board/write.do")
public class BoardWriteDoController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public BoardWriteDoController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
//	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//		// TODO Auto-generated method stub
//		response.getWriter().append("Served at: ").append(request.getContextPath());
//	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	    String btitle = request.getParameter("btitle");
	    String bcontent = request.getParameter("bcontent");
//		System.out.println(btitle);
//		System.out.println(bcontent);
		
		
		BoardService service = new BoardService();
	    BoardVo vo = new BoardVo();
	    vo.setBtitle(btitle);
	    vo.setBcontent(bcontent);
	    
	    
	    int result = service.insert(vo);
		System.out.println(result);
	}

}

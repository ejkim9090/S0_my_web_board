package kh.s0.kd.board.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kh.s0.kd.board.model.BoardService;
import kh.s0.kd.board.model.BoardVo;
import kh.s0.kd.member.model.MemberVo;

/**
 * Servlet implementation class NoticeWriteController
 */
@WebServlet("/noticeWrite")
public class NoticeWriteController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public NoticeWriteController() {
        super();
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String bnoStr = request.getParameter("bno");
		int bno = 0;
		try {
			bno = Integer.parseInt(bnoStr);
			System.out.println("bno 특정 숫자가 제대로 들어온다면 --> 답글본쓰기로 인식함");
			request.setAttribute("bno", bno);
			BoardVo vo = new BoardService().selectOne(bno);
			request.setAttribute("board", vo);
		}catch (Exception e) {
			System.out.println("bno가 없거나 이상한 문자가 들어왔다면 --> 원글본쓰기로 인식함");
		}finally {
			String viewPath = "/WEB-INF/view/board/write.jsp";
			request.getRequestDispatcher(viewPath).forward(request, response);
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// 로그인이 안되어있다면 로그인 하고 글쓰기 하도록 유도함.
		MemberVo loginSsInfo = (MemberVo)request.getSession().getAttribute("loginSsInfo");
		String bwriter = null;
		if(loginSsInfo == null) {
			response.sendRedirect(request.getContextPath()+"/login");
			return;
		} else {
			//로그인 상태라면
			bwriter = loginSsInfo.getMid();
		}
		String btitle = request.getParameter("btitle");
	    String bcontent = request.getParameter("bcontent");
		
		BoardService service = new BoardService();
	    BoardVo vo = new BoardVo();
	    vo.setBtitle(btitle);
	    vo.setBcontent(bcontent);
	    vo.setBwriter(bwriter);
	    
	    String bnoStr = request.getParameter("bno");
		int bno = 0;
		try {
			bno = Integer.parseInt(bnoStr);
		}catch (Exception e) {
		} 
	    vo.setBno(bno);  // 답글인 경우 몇번글의 답글인지를 작성해둠. 원본글이라면 0가 들어있게됨.
	    
	    int result = service.insert(vo);
		System.out.println(result);
		if(result >0) {
			// web page로 1회성 전달 방법
			//session의 유지기간 lifecycle : 브라이져창닫힘. removeAttribute() / invalidate() contextPath단위로 + tomcat reload되면
//					request.getSession().setAttribute("result", "게시글 등록되었습니다.");
//					request.setAttribute("result", "게시글 등록되었습니다.");
			
			response.sendRedirect(request.getContextPath()+"/notice");
		} else {
//					response.sendRedirect(request.getContextPath()+"/board/write");
			request.setAttribute("msg", "게시글 등록에 실패하였습니다. 다시 글쓰기를 시도해주세요.");
			request.getRequestDispatcher("/WEB-INF/view/error/alert.jsp").forward(request, response);
		}
		
		
	}

}

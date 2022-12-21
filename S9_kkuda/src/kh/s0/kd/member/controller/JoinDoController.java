package kh.s0.kd.member.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kh.s0.kd.member.model.MemberService;
import kh.s0.kd.member.model.MemberVo;


/**
 * Servlet implementation class LoginDoController
 */
@WebServlet("/join.do")
public class JoinDoController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public JoinDoController() {
        super();
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String mid = request.getParameter("id");
		String mpwd = request.getParameter("pw");
		String mname = request.getParameter("user_name");
		String memail = request.getParameter("user_name");
		MemberVo vo = new MemberVo();
		vo.setMid(mid);
		vo.setMpwd(mpwd);
		vo.setMemail(memail);
		
		System.out.println(vo);
		int result = new MemberService().insert(vo);
		if (result > 0) {
			System.out.println("회원가입 성공");
			response.sendRedirect(request.getContextPath()+"/login");
		} else {
			System.out.println("회원가입 실패");
			response.sendRedirect(request.getContextPath()+"/main");
		}
		
	}

}













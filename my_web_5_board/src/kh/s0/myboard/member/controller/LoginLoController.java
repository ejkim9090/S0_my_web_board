package kh.s0.myboard.member.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kh.s0.myboard.member.model.MemberService;
import kh.s0.myboard.member.model.MemberVo;

/**
 * Servlet implementation class LoginLoController
 */
@WebServlet("/login.lo")
public class LoginLoController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginLoController() {
        super();
        // TODO Auto-generated constructor stub
    }


	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//ajax에서는 response.sendRedirect  / request.getRequestDispatcher(path).forward(); 사용불가
		//ajax 경우는 페이지이동 코드 작성하면 안됨!
		//ajax 경우는 데이터전달 가능함.
		PrintWriter out = response.getWriter();
//				out.append("a");
//				out.println("b");

		
		String mid = request.getParameter("mid2");
		String mpwd = request.getParameter("mpwd2");
		
		MemberService service = new MemberService();
		MemberVo loginInfo = service.login(mid, mpwd);
		if(loginInfo == null) {
			System.out.println("로그인 실패. id/pw 다시 확인하고 로그인해주세요");
			out.println("fail");
		} else {
			if(loginInfo.getMauthcode().equals("1") ) {
				System.out.println("로그인 성공");
				request.getSession().setAttribute("loginSsInfo", loginInfo);
				out.println("OK");				
			} else if (loginInfo.getMauthcode().equals("0") ) {
				System.out.println("로그인 인증전");
				out.println("authcode0");
			} else {
				System.out.println("이메일을 통한 인증코드를 확인");
				out.println("authcode1");
			}
		}


		
		out.flush();
		out.close();
	}

}

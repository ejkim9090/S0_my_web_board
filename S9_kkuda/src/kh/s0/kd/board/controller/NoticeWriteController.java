package kh.s0.kd.board.controller;

import java.io.File;
import java.io.IOException;
import java.util.Enumeration;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

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
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		// 로그인이 안되어있다면 로그인 하고 글쓰기 하도록 유도함.
		// TODO:
		String bwriter = "user1";
//		MemberVo loginSsInfo = (MemberVo)request.getSession().getAttribute("loginSsInfo");
//		String bwriter = null;
//		if(loginSsInfo == null) {
//			response.sendRedirect(request.getContextPath()+"/login");
//			return;
//		} else {
//			//로그인 상태라면
//			bwriter = loginSsInfo.getMid();
//		}
		String saveFolder = "/upload/";
		
		String savePath = request.getServletContext().getRealPath(saveFolder);
		System.out.println("ejkim 여기여기######");
		System.out.println(request.getServletContext().getRealPath(""));
		System.out.println(request.getServletContext().getRealPath("upload"));		
		
		try {
			// savePath 폴더가 없다면 폴더생성
			File path = new File(savePath);
			System.out.println("path: " + path);
			if( !path.exists()  ) {
				path.mkdirs();
			}	
		}catch (Exception e) {
			e.printStackTrace();
		}
		
		// savePath에 file 저장완료
		MultipartRequest multi = new MultipartRequest(request, savePath
				, 10*1024*1024
				, "UTF-8"
				, new DefaultFileRenamePolicy() );
		
		// 저장된 file 의 정보(file 경로 + file name) 를 읽어오기  --> DB에 저장할 내용임
		String fileName = "";
		Enumeration<String> files = multi.getFileNames();
		while(files.hasMoreElements()) {
			String name = (String) files.nextElement();   // input type="file" name="xxxxxxx", 즉 bfilepath 와 bfilepaths
			fileName = multi.getFilesystemName(name);    // 서버에 저장된 파일이름
			System.out.println("fileName:"+ fileName);
			File f1 = multi.getFile(name);   // 서버에 file이 정상적으로 저장되어있는지 다시 읽어와서 확인함.
			if(f1 ==null) {
				System.out.println("파일 업로드 실패");
			} else {
				System.out.println("파일 업로드 성공 : "+f1.length());   // 파일 크기 확인
			}
		}
		
		
		
		String btitle = multi.getParameter("btitle");
	    String bcontent = multi.getParameter("bcontent");
	 // multi.getParameter("uploadFile");은 null
//	    String uploadFile = multi.getFilesystemName("uploadFile");
////	    multi.getFileNames();
//	    System.out.println("uploadFile: "+uploadFile);
//	    String dbFilePath = saveFolder + uploadFile;
	    
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

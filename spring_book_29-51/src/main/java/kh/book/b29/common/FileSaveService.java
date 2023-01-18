package kh.book.b29.common;

import java.io.File;
import java.io.IOException;
import java.text.DecimalFormat;
import java.util.Calendar;
import java.util.Map;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;
import org.springframework.web.multipart.MultipartFile;

import com.cloudinary.Cloudinary;
import com.cloudinary.SingletonManager;
import com.cloudinary.utils.ObjectUtils;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.PropertySource;
import org.springframework.core.env.Environment;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;

@Service("fileSaveService")
public class FileSaveService {
	
	public static String FILE_BOARD_PATH = "/resources/board/";
	public static String FILE_PROFILE_PATH = "/resources/profile/";



	// MultipartFile 형태에서 file을 file Server/web Server 어딘가에 저장하고 저장한 file의 이름을 return 하도록 함.
	public String saveFile(MultipartFile multipartFile
			, String filepath
			, HttpServletRequest request
			) throws Exception
	{
		String savedFileName = null;
		
		// 0. 저장할 폴더 경로 확인
		String path = request.getSession().getServletContext().getRealPath("");
		path += filepath;
		File folder = new File(path);
		if(folder.exists() == false) {
			folder.mkdirs();
		}
		// 폴더별 file 갯수로 새폴더 생성하는 방법
//		if(folder.listFiles().length > 300) {		
//		}
		// 날짜별 폴더로 
//		Calendar calendar = Calendar.getInstance();
//		String yearPath = File.separator + calendar.get(Calendar.YEAR);
//		String monthPath = yearPath + File.separator + new DecimalFormat("00").format(calendar.get(Calendar.MONTH) + 1);
//		String datePath = monthPath + File.separator + new DecimalFormat("00").format(calendar.get(Calendar.DATE));
//		if (new ) {
//		}
		
		//1-1파일명 중복 방지를 위한 Rename 하기 - time 활용
		long renameByTime = System.currentTimeMillis();
		savedFileName =  renameByTime +"_"+ multipartFile.getOriginalFilename();
		//1-2. 파일명 중복 방지를 위한 Rename 하기 - UUID 활용
//		savedFileName = UUID.randomUUID().toString() +"_"+multipartFile.getOriginalFilename();
		
		
		// 2. 저장하기
		File newFile=null;
		try {
			newFile = new File(path+savedFileName);
			multipartFile.transferTo(newFile);
		} catch (IllegalStateException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
		
		
		
		return savedFileName;
	}

}

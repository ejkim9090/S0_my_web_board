package kh.b23.air.controller;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.google.gson.JsonArray;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.google.gson.JsonParser;

import kh.b23.air.model.dto.AirDto;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
@Controller
public class AirController {

	@GetMapping("/air.do")
	public ModelAndView getAirInfo(ModelAndView mv
			//1. 전달받은 데이터 읽기
//			, @RequestParam("location") String location
			, String location 
			, String param
			) {
		//2. DB 다녀오기
		List<AirDto> airlist = getAirData(location, param);
		
		//3. [페이지 이동] + 데이터 전송
//		List<AirDto>
		mv.addObject("list", airlist);
		mv.setViewName("result");
		return mv;		
	}
	
	 private List<AirDto> getAirData(String location, String param)  {
		List<AirDto> list = null;
//		요청주소 http://apis.data.go.kr/B552584/ArpltnInforInqireSvc/getCtprvnRltmMesureDnsty
//		요청주소 http://apis.data.go.kr/B552584/ArpltnInforInqireSvc/getMinuDustFrcstDspth
//		http://openapi.airkorea.or.kr/openapi/services/rest/ArpltnInforInqireSvc/getCtprvnRltmMesureDnsty?serviceKey="
		
		HttpURLConnection conn = null;
        BufferedReader rd = null;
        try {
        	StringBuilder urlBuilder = new StringBuilder("http://apis.data.go.kr/B552584/ArpltnInforInqireSvc/getCtprvnRltmMesureDnsty"); /*URL*/
        	urlBuilder.append("?" + URLEncoder.encode("serviceKey","UTF-8") + "=" + URLEncoder.encode("t0AUyWBLB4/6G8QnmNB9b9EFoBQkHSVO/L0Rdx6f4FbNjsi/D8jmfiKA6vxXbTS8N4zDjeYUpww2/g3LMoI0yQ==", "UTF-8")); /*Service Key*/
        	urlBuilder.append("&" + URLEncoder.encode("returnType","UTF-8") + "=" + URLEncoder.encode(param, "UTF-8")); /*xml 또는 json*/
        	urlBuilder.append("&" + URLEncoder.encode("numOfRows","UTF-8") + "=" + URLEncoder.encode("100", "UTF-8")); /*한 페이지 결과 수*/
        	urlBuilder.append("&" + URLEncoder.encode("pageNo","UTF-8") + "=" + URLEncoder.encode("1", "UTF-8")); /*페이지번호*/
        	urlBuilder.append("&" + URLEncoder.encode("sidoName","UTF-8") + "=" + URLEncoder.encode(location, "UTF-8")); /*시도 이름(전국, 서울, 부산, 대구, 인천, 광주, 대전, 울산, 경기, 강원, 충북, 충남, 전북, 전남, 경북, 경남, 제주, 세종)*/
        	urlBuilder.append("&" + URLEncoder.encode("ver","UTF-8") + "=" + URLEncoder.encode("1.0", "UTF-8")); /*버전별 상세 결과 참고*/
        	URL url = new URL(urlBuilder.toString());
            conn = (HttpURLConnection) url.openConnection();
            conn.setRequestMethod("GET");
            conn.setRequestProperty("Content-type", "application/json");
            System.out.println("Response code: " + conn.getResponseCode());
            if(conn.getResponseCode() >= 200 && conn.getResponseCode() <= 300) {
                rd = new BufferedReader(new InputStreamReader(conn.getInputStream()));
            } else {
                rd = new BufferedReader(new InputStreamReader(conn.getErrorStream()));
            }
            StringBuilder sb = new StringBuilder();
            String line;
            while ((line = rd.readLine()) != null) {
                sb.append(line);
            }
            System.out.println(sb.toString());
            
            list = new ArrayList<AirDto>();
            
//            AirDto[] airArr = new Gson().fromJson(sb.toString(), AirDto[].class);
//            list = Arrays.asList(airArr);
//            System.out.println(list);
            Gson gson = new Gson();
            JsonElement toJson = JsonParser.parseString(sb.toString());
    		JsonArray jsonArray = toJson.getAsJsonObject().get("response").getAsJsonObject().get("body").getAsJsonObject().get("items").getAsJsonArray();
    		for (JsonElement item : jsonArray) {
    			JsonObject object = item.getAsJsonObject();
    			System.out.println(object);
    			list.add( gson.fromJson(object, AirDto.class) );			
    		}
    		System.out.println(list);
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			try {
				if(rd !=null) rd.close();
			} catch (IOException e) {
				e.printStackTrace();
			}
			conn.disconnect();
		}
        
//        System.out.println(sb.toString());
        
        return list;
    }
	
	
	
	
	
	
	
	
	
}

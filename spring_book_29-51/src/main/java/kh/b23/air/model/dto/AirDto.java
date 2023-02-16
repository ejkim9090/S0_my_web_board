package kh.b23.air.model.dto;

public class AirDto {
//	결과코드	resultCode	2	필수	00	결과코드
//	결과메시지	resultMsg	50	필수	NORMAL SERVICE	결과메시지
//	한 페이지 결과 수	numOfRows	4	필수	100	한 페이지 결과 수
//	페이지 번호	pageNo	4	필수	1	페이지번호
//	전체 결과 수	totalCount	4	필수	40	전체 결과 수
//	목록	items	0	옵션	-	목록
//	측정소명	stationName	30	필수	중구	측정소명
//	측정망 정보	mangName	10	필수	도시대기	측정망 정보(도시대기, 도로변대기, 국가배경농도, 교외대기, 항만)
//	측정일시	dataTime	20	필수	2020-11-25 11:00	오염도 측정 연-월-일 시간:분
//	아황산가스 농도	so2Value	10	필수	0.007	아황산가스 농도(단위: ppm)
//	일산화탄소 농도	coValue	10	필수	0.7	일산화탄소 농도(단위: ppm)
//	오존 농도	o3Value	10	필수	0.043	오존 농도(단위: ppm)
//	이산화질소 농도	no2Value	10	필수	0.043	이산화질소 농도(단위: ppm)
//	미세먼지(PM10) 농도	pm10Value	10	필수	68	미세먼지(PM10) 농도(단위: ug/m3)
//	미세먼지(PM10) 24시간 예측이동농도	pm10Value24	10	필수	56	미세먼지(PM10) 24시간 예측이동농도(단위: ug/m3)
//	초미세먼지(PM2.5) 농도	pm25Value	10	필수	39	초미세먼지(PM2.5) 농도(단위: ug/m3)
//	초미세먼지(PM2.5) 농도24시간 예측이동농도	pm25Value24	10	필수	26	초미세먼지(PM2.5) 농도24시간 예측이동농도(단위: ug/m3)
//	통합대기환경수치	khaiValue	10	필수	76	통합대기환경수치
//	통합대기환경지수	khaiGrade	10	필수	2	통합대기환경지수
//	아황산가스 지수	so2Grade	10	필수	1	아황산가스 지수
//	일산화탄소 지수	coGrade	10	필수	1	일산화탄소 지수
//	오존 지수	o3Grade	10	필수	2	오존 지수
//	이산화질소 지수	no2Grade	10	필수	2	이산화질소 지수
//	미세먼지(PM10) 24시간 등급자료	pm10Grade	10	필수	2	미세먼지(PM10) 24시간 등급자료
//	초미세먼지(PM2.5) 24시간 등급자료	pm25Grade	10	필수	2	초미세먼지(PM2.5) 24시간 등급자료
//	미세먼지(PM10) 1시간 등급자료	pm10Grade1h	10	필수	2	미세먼지(PM10) 1시간 등급자료
//	초미세먼지(PM2.5) 1시간 등급자료	pm25Grade1h	10	필수	2	초미세먼지(PM2.5) 1시간 등급자료
//	아상산가스 플래그	so2Flag	10	필수	장비점검	측정자료 상태정보(점검및교정, 장비점검, 자료이상, 통신장애)
//	일산화탄소 플래그	coFlag	10	필수	장비점검	측정자료 상태정보(점검및교정, 장비점검, 자료이상, 통신장애)
//	오존 플래그	o3Flag	10	필수	자료이상	측정자료 상태정보(점검및교정, 장비점검, 자료이상, 통신장애)
//	이산화질소 플래그	no2Flag	10	필수	통신장애	측정자료 상태정보(점검및교정, 장비점검, 자료이상, 통신장애)
//	미세먼지(PM10) 플래그	pm10Flag	10	필수	점검및교정	측정자료 상태정보(점검및교정, 장비점검, 자료이상, 통신장애)
//	초미세먼지(PM2.5) 플래그	pm25Flag	10	필수	점검및교정	측정자료 상태정보(점검및교정, 장비점검, 자료이상, 통신장애)
//	<item>
//    <so2Grade>1</so2Grade>
//    <coFlag/>
//    <khaiValue>58</khaiValue>
//    <so2Value>0.002</so2Value>
//    <coValue>0.4</coValue>
//    <pm25Flag/>
//    <pm10Flag/>
//    <o3Grade>2</o3Grade>
//    <pm10Value>27</pm10Value>
//    <khaiGrade>2</khaiGrade>
//    <pm25Value>19</pm25Value>
//    <sidoName>서울</sidoName>
//    <no2Flag/>
//    <no2Grade>1</no2Grade>
//    <o3Flag/>
//    <pm25Grade>2</pm25Grade>
//    <so2Flag/>
//    <dataTime>2023-02-16 19:00</dataTime>
//    <coGrade>1</coGrade>
//    <no2Value>0.015</no2Value>
//    <stationName>도봉구</stationName>
//    <pm10Grade>1</pm10Grade>
//    <o3Value>0.039</o3Value>
//  </item>
//	private int so2Grade;
//	private int coFlag;
//	private int khaiValue;
//	private double so2Value;
//	private double coValue;
//	private String pm25Flag;
//	private String pm10Flag;
//	private String o3Grade;
//	private int pm10Value;
//	private int khaiGrade;
//	private int pm25Value;
//	private int sidoName;
//	private int no2Flag;
//	private int no2Grade;
//	private int o3Flag;
//	private int pm25Grade;
//	private int so2Flag;
//	private int dataTime;
//	private int coGrade;
//	private int no2Value;
//	private int stationName;
//	private int pm10Grade;
//	private int o3Value;
//	
	
	private String stationName;
	private String mangName;
	private String dataTime;
	private int khaiGrade;
	private String khaiValue;
	private int pm10Grade;
	private int pm10Grade1h;
	private int pm10Value;
	private int pm10Value24;
	private int pm25Grade;
	private int pm25Grade1h;
	private int pm25Value;
	private int pm25Value24;
	private int coGrade;
	private int no2Grade;
	private int o3Grade;
	private int so2Grade;
	private double coValue;
	private double no2Value;
	private double o3Value;
	private double so2Value;
	
	public AirDto() {
		super();
	}

	public AirDto(String stationName, String mangName, String dataTime, int khaiGrade, String khaiValue, int pm10Grade,
			int pm10Grade1h, int pm10Value, int pm10Value24, int pm25Grade, int pm25Grade1h, int pm25Value,
			int pm25Value24, int coGrade, int no2Grade, int o3Grade, int so2Grade, double coValue, double no2Value,
			double o3Value, double so2Value) {
		super();
		this.stationName = stationName;
		this.mangName = mangName;
		this.dataTime = dataTime;
		this.khaiGrade = khaiGrade;
		this.khaiValue = khaiValue;
		this.pm10Grade = pm10Grade;
		this.pm10Grade1h = pm10Grade1h;
		this.pm10Value = pm10Value;
		this.pm10Value24 = pm10Value24;
		this.pm25Grade = pm25Grade;
		this.pm25Grade1h = pm25Grade1h;
		this.pm25Value = pm25Value;
		this.pm25Value24 = pm25Value24;
		this.coGrade = coGrade;
		this.no2Grade = no2Grade;
		this.o3Grade = o3Grade;
		this.so2Grade = so2Grade;
		this.coValue = coValue;
		this.no2Value = no2Value;
		this.o3Value = o3Value;
		this.so2Value = so2Value;
	}

	@Override
	public String toString() {
		return "AirDto [stationName=" + stationName + ", mangName=" + mangName + ", dataTime=" + dataTime
				+ ", khaiGrade=" + khaiGrade + ", khaiValue=" + khaiValue + ", pm10Grade=" + pm10Grade
				+ ", pm10Grade1h=" + pm10Grade1h + ", pm10Value=" + pm10Value + ", pm10Value24=" + pm10Value24
				+ ", pm25Grade=" + pm25Grade + ", pm25Grade1h=" + pm25Grade1h + ", pm25Value=" + pm25Value
				+ ", pm25Value24=" + pm25Value24 + ", coGrade=" + coGrade + ", no2Grade=" + no2Grade + ", o3Grade="
				+ o3Grade + ", so2Grade=" + so2Grade + ", coValue=" + coValue + ", no2Value=" + no2Value + ", o3Value="
				+ o3Value + ", so2Value=" + so2Value + "]";
	}

	public String getStationName() {
		return stationName;
	}

	public void setStationName(String stationName) {
		this.stationName = stationName;
	}

	public String getMangName() {
		return mangName;
	}

	public void setMangName(String mangName) {
		this.mangName = mangName;
	}

	public String getDataTime() {
		return dataTime;
	}

	public void setDataTime(String dataTime) {
		this.dataTime = dataTime;
	}

	public int getKhaiGrade() {
		return khaiGrade;
	}

	public void setKhaiGrade(int khaiGrade) {
		this.khaiGrade = khaiGrade;
	}

	public String getKhaiValue() {
		return khaiValue;
	}

	public void setKhaiValue(String khaiValue) {
		this.khaiValue = khaiValue;
	}

	public int getPm10Grade() {
		return pm10Grade;
	}

	public void setPm10Grade(int pm10Grade) {
		this.pm10Grade = pm10Grade;
	}

	public int getPm10Grade1h() {
		return pm10Grade1h;
	}

	public void setPm10Grade1h(int pm10Grade1h) {
		this.pm10Grade1h = pm10Grade1h;
	}

	public int getPm10Value() {
		return pm10Value;
	}

	public void setPm10Value(int pm10Value) {
		this.pm10Value = pm10Value;
	}

	public int getPm10Value24() {
		return pm10Value24;
	}

	public void setPm10Value24(int pm10Value24) {
		this.pm10Value24 = pm10Value24;
	}

	public int getPm25Grade() {
		return pm25Grade;
	}

	public void setPm25Grade(int pm25Grade) {
		this.pm25Grade = pm25Grade;
	}

	public int getPm25Grade1h() {
		return pm25Grade1h;
	}

	public void setPm25Grade1h(int pm25Grade1h) {
		this.pm25Grade1h = pm25Grade1h;
	}

	public int getPm25Value() {
		return pm25Value;
	}

	public void setPm25Value(int pm25Value) {
		this.pm25Value = pm25Value;
	}

	public int getPm25Value24() {
		return pm25Value24;
	}

	public void setPm25Value24(int pm25Value24) {
		this.pm25Value24 = pm25Value24;
	}

	public int getCoGrade() {
		return coGrade;
	}

	public void setCoGrade(int coGrade) {
		this.coGrade = coGrade;
	}

	public int getNo2Grade() {
		return no2Grade;
	}

	public void setNo2Grade(int no2Grade) {
		this.no2Grade = no2Grade;
	}

	public int getO3Grade() {
		return o3Grade;
	}

	public void setO3Grade(int o3Grade) {
		this.o3Grade = o3Grade;
	}

	public int getSo2Grade() {
		return so2Grade;
	}

	public void setSo2Grade(int so2Grade) {
		this.so2Grade = so2Grade;
	}

	public double getCoValue() {
		return coValue;
	}

	public void setCoValue(double coValue) {
		this.coValue = coValue;
	}

	public double getNo2Value() {
		return no2Value;
	}

	public void setNo2Value(double no2Value) {
		this.no2Value = no2Value;
	}

	public double getO3Value() {
		return o3Value;
	}

	public void setO3Value(double o3Value) {
		this.o3Value = o3Value;
	}

	public double getSo2Value() {
		return so2Value;
	}

	public void setSo2Value(double so2Value) {
		this.so2Value = so2Value;
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
}

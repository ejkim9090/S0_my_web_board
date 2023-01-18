package kh.book.b29.common;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.PropertySource;
import org.springframework.core.env.Environment;

import com.cloudinary.Cloudinary;
import com.cloudinary.SingletonManager;
import com.cloudinary.utils.ObjectUtils;

@Configuration
@PropertySource("classpath:cloudinary.properties")
public class CloudinaryConfig {
	@Autowired
	private Environment env;
	
	@Bean("cloudinary")
	public Cloudinary CloudinarySetting() {
		Cloudinary cloudinary = new Cloudinary(ObjectUtils.asMap("cloud_name", env.getProperty("cloud_name")
				, "api_key", env.getProperty("api_key")
				, "api_secret", env.getProperty("api_secret")
				, "secure", true));
		SingletonManager manager = new SingletonManager();
		manager.setCloudinary(cloudinary);
		manager.init();
		System.out.println("################# 여기 cloudinary 생성 정보 확인 ");
		System.out.println(cloudinary);
		System.out.println("################# 여기까지 ");
		return cloudinary;		
	}
	

}

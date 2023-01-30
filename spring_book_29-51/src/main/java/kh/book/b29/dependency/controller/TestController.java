package kh.book.b29.dependency.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.context.support.AbstractApplicationContext;
import org.springframework.context.support.GenericXmlApplicationContext;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.servlet.ModelAndView;

import kh.book.b29.person.model.vo.Person;

@Controller
public class TestController {
	private static final Logger logger = LoggerFactory.getLogger(TestController.class);
	
	@GetMapping("/testdi")
	public ModelAndView testDiMethod(ModelAndView mv) {
		logger.info( "testDiMethod run.....");
		// XML 파일을 참조할수 있도록 함.
//		GenericXmlApplicationContext cntx1 = new GenericXmlApplicationContext("sampleContext.xml");
		AbstractApplicationContext cntx = new GenericXmlApplicationContext("sampleContext.xml");
		Person p1 = (Person)(cntx.getBean("samp"));
		Person p2 = cntx.getBean("samp2", Person.class);
		mv.addObject("samp", p2);
		mv.setViewName("ajaxtest");
		return mv;
	}
}

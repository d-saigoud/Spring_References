package com.sai;

import org.springframework.context.support.ClassPathXmlApplicationContext;

public class AnnotationBeanScopeDemoApp {

	public static void main(String[] args) {

		ClassPathXmlApplicationContext context = new ClassPathXmlApplicationContext("applicationContext.xml");
		
		Coach coach1 = context.getBean("tennisCoach", Coach.class);
//		Coach coach2 = context.getBean("tennisCoach", Coach.class);
//		
//		System.out.println(coach1 == coach2);
//		System.out.println("Coach1: " + coach1);
//		System.out.println("Coach2: " + coach2);
		
		context.close();
		
	}

}

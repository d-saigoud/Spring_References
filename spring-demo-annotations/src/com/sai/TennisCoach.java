package com.sai;

import javax.annotation.PostConstruct;
import javax.annotation.PreDestroy;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Component;

@Component
//@Scope("prototype")
public class TennisCoach implements Coach {

	@Autowired
	@Qualifier("randomFortuneService")
	public FortuneService fortuneService;
	
	public TennisCoach() {
		System.out.println("TennisCoach Constructor");
	}
	
//	//Constructor Injection
//	@Autowired
//	public TennisCoach(FortuneService fortuneService) {
//		this.fortuneService = fortuneService;
//	}
	
//	//Setter injection
//	@Autowired
//	public void setFortuneService(FortuneService fortuneService) {
//		this.fortuneService = fortuneService;
//		System.out.println("TennisCoach setFortuneService");
//	}
	
//	//Any method injection
//	@Autowired
//	public void customMethod(FortuneService fortuneService) {
//		this.fortuneService = fortuneService;
//		System.out.println("TennisCoach customMethod");
//	}

	@Override
	public String getDailyWorkout() {
		return "Practice back hand volley";
	}

	@Override
	public String getDailyFortune() {
		return fortuneService.getFortune();
	}
	
	@PostConstruct
	public void doInitLogic() {
		System.out.println("TennisCoach doInitLogic()");
	}
	
	@PreDestroy
	public void doCleanUpLogic() {
		System.out.println("TennisCoach doCleanUpLogic()");
	}
	
	

}

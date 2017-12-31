package com.sai;

public class TrackCoach implements Coach {

	private FortuneService fortuneService;
	
	public TrackCoach() {
		
	}
	
	public TrackCoach(FortuneService fortuneService) {
		this.fortuneService = fortuneService;
	}
	
	@Override
	public String getDailyWorkout() {
		return "Run a hard 5k";
	}

	@Override
	public String getDailyFortune() {
		return "Just Do IT: " + this.fortuneService.getFortune();
	}
	
	public void doStartUpStuff() {
		System.out.println("Init Called");
	}
	
	public void doDestroyStuff() {
		System.out.println("Destroy Called");
	}

}

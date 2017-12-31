package com.sai;

import java.util.Random;

import org.springframework.stereotype.Component;

@Component
public class RandomFortuneService implements FortuneService {

	
	private String[] fortunes = {
		"Beware of Something",
		"Today is better than yesterday",
		"You will keep smiling"
	};
	
	private Random myRandom = new Random();
	
	@Override
	public String getFortune() {
		int no = myRandom.nextInt(3);
		return fortunes[no];
	}

}

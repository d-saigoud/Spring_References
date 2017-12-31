package com.sai.mvc;

import java.util.LinkedHashMap;

public class Student {

	private String firstname;
	private String lastname;
	private String country;
	private String favouriteLanguage;
	
	private LinkedHashMap<String, String> countryOptions;
	private LinkedHashMap<String, String> favouriteLanguageOptions;
	
	private String[] operatingSystems;
	
	public Student() {
		countryOptions = new LinkedHashMap<>();
		
		countryOptions.put("BR", "Brazil");
		countryOptions.put("FR", "France");
		countryOptions.put("DE", "Germany");
		countryOptions.put("IN", "India");
		countryOptions.put("US", "United States");
		
		favouriteLanguageOptions = new LinkedHashMap<>();
		
		favouriteLanguageOptions.put("JAVA", "JAVA");
		favouriteLanguageOptions.put("C#", "C#");
		favouriteLanguageOptions.put("PHP", "PHP");
		favouriteLanguageOptions.put("Python", "Python");
		
	}
	
	public String getFirstname() {
		return firstname;
	}
	public void setFirstname(String firstname) {
		this.firstname = firstname;
	}
	public String getLastname() {
		return lastname;
	}
	public void setLastname(String lastname) {
		this.lastname = lastname;
	}
	
	public String getCountry() {
		return country;
	}

	public void setCountry(String country) {
		this.country = country;
	}

	public LinkedHashMap<String, String> getCountryOptions() {
		return countryOptions;
	}

	public String getFavouriteLanguage() {
		return favouriteLanguage;
	}

	public void setFavouriteLanguage(String favouriteLanguage) {
		this.favouriteLanguage = favouriteLanguage;
	}

	public LinkedHashMap<String, String> getFavouriteLanguageOptions() {
		return favouriteLanguageOptions;
	}

	public String[] getOperatingSystems() {
		return operatingSystems;
	}

	public void setOperatingSystems(String[] operatingSystems) {
		this.operatingSystems = operatingSystems;
	}
	
}

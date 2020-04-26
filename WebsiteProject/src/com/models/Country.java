package com.models;

import javax.xml.bind.annotation.XmlRootElement;

@XmlRootElement
public class Country {
	private int countryId;
	private String countryName;
	private int cases;
	private int todayCases;
	private int deaths;
	private int todayDeaths;
	private int recovered;
	private int active;
	private int critical;
	private double casesPerOneMillion;
	private double deathsPerOneMillion;
	private double totalTests;
	private double testsPerOneMillion;

	public Country() {
	}

	public Country(String countryName, int cases, int todayCases, int deaths, int todayDeaths, int recovered,
			int active, int critical, double casesPerOneMillion, double deathsPerOneMillion, double totalTests,
			double testsPerOneMillion) {
		this.countryName = countryName;
		this.cases = cases;
		this.todayCases = todayCases;
		this.deaths = deaths;
		this.todayDeaths = todayDeaths;
		this.recovered = recovered;
		this.active = active;
		this.critical = critical;
		this.casesPerOneMillion = casesPerOneMillion;
		this.deathsPerOneMillion = deathsPerOneMillion;
		this.totalTests = totalTests;
		this.testsPerOneMillion = testsPerOneMillion;
	}

	public Country(int countryId, String countryName, int cases, int todayCases, int deaths, int todayDeaths,
			int recovered, int active, int critical, double casesPerOneMillion, double deathsPerOneMillion,
			double totalTests, double testsPerOneMillion) {
		this.countryId = countryId;
		this.countryName = countryName;
		this.cases = cases;
		this.todayCases = todayCases;
		this.deaths = deaths;
		this.todayDeaths = todayDeaths;
		this.recovered = recovered;
		this.active = active;
		this.critical = critical;
		this.casesPerOneMillion = casesPerOneMillion;
		this.deathsPerOneMillion = deathsPerOneMillion;
		this.totalTests = totalTests;
		this.testsPerOneMillion = testsPerOneMillion;
	}

	public Country(int countryId, String countryName, int cases, int deaths, int recovered, int active) {
		this.countryId = countryId;
		this.countryName = countryName;
		this.cases = cases;
		this.deaths = deaths;
		this.recovered = recovered;
		this.active = active;
	}

	public int getCountryId() {
		return countryId;
	}

	public void setCountryId(int countryId) {
		this.countryId = countryId;
	}

	public String getCountryName() {
		return countryName;
	}

	public void setCountryName(String countryName) {
		this.countryName = countryName;
	}

	public int getCases() {
		return cases;
	}

	public void setCases(int cases) {
		this.cases = cases;
	}

	public int getTodayCases() {
		return todayCases;
	}

	public void setTodayCases(int todayCases) {
		this.todayCases = todayCases;
	}

	public int getDeaths() {
		return deaths;
	}

	public void setDeaths(int deaths) {
		this.deaths = deaths;
	}

	public int getTodayDeaths() {
		return todayDeaths;
	}

	public void setTodayDeaths(int todayDeaths) {
		this.todayDeaths = todayDeaths;
	}

	public int getRecovered() {
		return recovered;
	}

	public void setRecovered(int recovered) {
		this.recovered = recovered;
	}

	public int getActive() {
		return active;
	}

	public void setActive(int active) {
		this.active = active;
	}

	public int getCritical() {
		return critical;
	}

	public void setCritical(int critical) {
		this.critical = critical;
	}

	public double getCasesPerOneMillion() {
		return casesPerOneMillion;
	}

	@Override
	public String toString() {
		return "Country [countryId=" + countryId + ", countryName=" + countryName + ", cases=" + cases + ", todayCases="
				+ todayCases + ", deaths=" + deaths + ", todayDeaths=" + todayDeaths + ", recovered=" + recovered
				+ ", active=" + active + ", critical=" + critical + ", casesPerOneMillion=" + casesPerOneMillion
				+ ", deathsPerOneMillion=" + deathsPerOneMillion + ", totalTests=" + totalTests
				+ ", testsPerOneMillion=" + testsPerOneMillion + "]";
	}

	public void setCasesPerOneMillion(double casesPerOneMillion) {
		this.casesPerOneMillion = casesPerOneMillion;
	}

	public double getDeathsPerOneMillion() {
		return deathsPerOneMillion;
	}

	public void setDeathsPerOneMillion(double deathsPerOneMillion) {
		this.deathsPerOneMillion = deathsPerOneMillion;
	}

	public double getTotalTests() {
		return totalTests;
	}

	public void setTotalTests(double totalTests) {
		this.totalTests = totalTests;
	}

	public double getTestsPerOneMillion() {
		return testsPerOneMillion;
	}

	public void setTestsPerOneMillion(double testsPerOneMillion) {
		this.testsPerOneMillion = testsPerOneMillion;
	}

}

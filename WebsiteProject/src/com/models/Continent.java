package com.models;

public class Continent {
	private int continentId;
	private String continentName;
	private int continentCases;
	private int continentTodayCases;
	private int continentDeaths;
	private int continentRecovered;
	private int continentTodayRecovered;
	private int continentActive;
	private int continentCritical;

	public Continent(int continentId, String continentName, int continentCases, int continentTodayCases,
			int continentDeaths, int continentRecovered, int continentTodayRecovered, int continentActive,
			int continentCritical) {
		this.continentId = continentId;
		this.continentName = continentName;
		this.continentCases = continentCases;
		this.continentTodayCases = continentTodayCases;
		this.continentDeaths = continentDeaths;
		this.continentRecovered = continentRecovered;
		this.continentTodayRecovered = continentTodayRecovered;
		this.continentActive = continentActive;
		this.continentCritical = continentCritical;
	}

	public Continent(String continentName, int continentCases, int continentTodayCases, int continentDeaths,
			int continentRecovered, int continentTodayRecovered, int continentActive, int continentCritical) {
		this.continentName = continentName;
		this.continentCases = continentCases;
		this.continentTodayCases = continentTodayCases;
		this.continentDeaths = continentDeaths;
		this.continentRecovered = continentRecovered;
		this.continentTodayRecovered = continentTodayRecovered;
		this.continentActive = continentActive;
		this.continentCritical = continentCritical;
	}

	public Continent() {
		super();
	}

	public int getContinentId() {
		return continentId;
	}

	public void setContinentId(int continentId) {
		this.continentId = continentId;
	}

	public String getContinentName() {
		return continentName;
	}

	public void setContinentName(String continentName) {
		this.continentName = continentName;
	}

	public int getContinentCases() {
		return continentCases;
	}

	public void setContinentCases(int continentCases) {
		this.continentCases = continentCases;
	}

	public int getContinentTodayCases() {
		return continentTodayCases;
	}

	public void setContinentTodayCases(int continentTodayCases) {
		this.continentTodayCases = continentTodayCases;
	}

	public int getContinentDeaths() {
		return continentDeaths;
	}

	public void setContinentDeaths(int continentDeaths) {
		this.continentDeaths = continentDeaths;
	}

	public int getContinentRecovered() {
		return continentRecovered;
	}

	public void setContinentRecovered(int continentRecovered) {
		this.continentRecovered = continentRecovered;
	}

	public int getContinentTodayRecovered() {
		return continentTodayRecovered;
	}

	public void setContinentTodayRecovered(int continentTodayRecovered) {
		this.continentTodayRecovered = continentTodayRecovered;
	}

	public int getContinentActive() {
		return continentActive;
	}

	public void setContinentActive(int continentActive) {
		this.continentActive = continentActive;
	}

	public int getContinentCritical() {
		return continentCritical;
	}

	public void setContinentCritical(int continentCritical) {
		this.continentCritical = continentCritical;
	}

}

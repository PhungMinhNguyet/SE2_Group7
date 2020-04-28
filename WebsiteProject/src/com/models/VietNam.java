package com.models;
import javax.xml.bind.annotation.XmlRootElement;

@XmlRootElement
public class VietNam {
	private int cityId;
	private String cityName;
	private int cityCases;
	private int beingTreated;
	private int cityRecovered;
	private int cityDeath;

	public VietNam() {

	}

	public VietNam(int cityId, String cityName, int cityCases, int beingTreated, int cityRecovered, int cityDeath) {
		this.cityId = cityId;
		this.cityName = cityName;
		this.cityCases = cityCases;
		this.beingTreated = beingTreated;
		this.cityRecovered = cityRecovered;
		this.cityDeath = cityDeath;
	}
	
	public VietNam(String cityName, int cityCases, int beingTreated, int cityRecovered, int cityDeath) {
		this.cityName = cityName;
		this.cityCases = cityCases;
		this.beingTreated = beingTreated;
		this.cityRecovered = cityRecovered;
		this.cityDeath = cityDeath;
	}

	public int getCityId() {
		return cityId;
	}

	@Override
	public String toString() {
		return "VietNam [cityId=" + cityId + ", cityName=" + cityName + ", cityCases=" + cityCases + ", beingTreated="
				+ beingTreated + ", cityRecovered=" + cityRecovered + ", cityDeath=" + cityDeath + "]";
	}

	public void setCityId(int cityId) {
		this.cityId = cityId;
	}

	public String getCityName() {
		return cityName;
	}

	public void setCityName(String cityName) {
		this.cityName = cityName;
	}

	public int getCityCases() {
		return cityCases;
	}

	public void setCityCases(int cityCases) {
		this.cityCases = cityCases;
	}

	public int getBeingTreated() {
		return beingTreated;
	}

	public void setBeingTreated(int beingTreated) {
		this.beingTreated = beingTreated;
	}

	public int getCityRecovered() {
		return cityRecovered;
	}

	public void setCityRecovered(int cityRecovered) {
		this.cityRecovered = cityRecovered;
	}

	public int getCityDeath() {
		return cityDeath;
	}

	public void setCityDeath(int cityDeath) {
		this.cityDeath = cityDeath;
	}

}

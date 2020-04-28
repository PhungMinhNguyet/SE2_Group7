package com.resource;


import java.sql.SQLException;
import java.util.List;

import javax.ws.rs.Consumes;
import javax.ws.rs.DELETE;
import javax.ws.rs.GET;
import javax.ws.rs.POST;
import javax.ws.rs.PUT;
import javax.ws.rs.Path;
import javax.ws.rs.PathParam;
import javax.ws.rs.Produces;
import javax.ws.rs.core.MediaType;
import com.models.Country;
import com.service.CountryService;

@Path("countries")
public class CountryResource {
	CountryService c = new CountryService();

	@GET
	@Produces({ MediaType.APPLICATION_JSON, MediaType.APPLICATION_XML })
	public List<Country> getCountry() {
		return c.getAllCountry();
	}
	
	@GET
	@Path("country/{id}")
	@Produces({ MediaType.APPLICATION_JSON, MediaType.APPLICATION_XML })
	public Country getCountry(@PathParam("id") int id) {
		return c.selectCountry(id);
	}

	@POST
	@Path("country")
	@Consumes({ MediaType.APPLICATION_JSON, MediaType.APPLICATION_XML })
	public Country createCountry(Country c1) {
		System.out.println(c1);
		try {
			c.insertCountry(c1);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return c1;
	}

	@PUT
	@Path("country")
	@Consumes({ MediaType.APPLICATION_JSON, MediaType.APPLICATION_XML })
	public Country updateCountry(Country c1) {
		System.out.println(c1);
		if (c.selectCountry(c1.getCountryId()).getCountryId() == 0) {
			try {
				c.insertCountry(c1);
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		} else {
			try {
				c.updateCountry(c1);
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		return c1;
	}

	@DELETE
	@Path("country/{id}")
	public Country deleteMovie(@PathParam("id") int id) {
		Country c1 = c.selectCountry(id);
		if (c1.getCountryId() != 0) {
			c.delete(id);
		}
		return c1;
	}
}

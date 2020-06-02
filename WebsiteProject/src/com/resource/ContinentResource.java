package com.resource;

import java.sql.SQLException;
import java.util.List;

import javax.ws.rs.Consumes;
import javax.ws.rs.GET;
import javax.ws.rs.POST;
import javax.ws.rs.PUT;
import javax.ws.rs.Path;
import javax.ws.rs.PathParam;
import javax.ws.rs.Produces;
import javax.ws.rs.core.MediaType;

import com.models.Continent;
import com.service.ContinentService;


@Path("continents")
public class ContinentResource {
	ContinentService c = new ContinentService();

	@GET
	@Produces({ MediaType.APPLICATION_JSON, MediaType.APPLICATION_XML })
	public List<Continent> getContinent() {
		return c.getAllContinent();
	}
	
	@GET
	@Path("continent/{id}")
	@Produces({ MediaType.APPLICATION_JSON, MediaType.APPLICATION_XML })
	public Continent getContinent(@PathParam("id") int id) {
		return c.selectContinent(id);
	}
	
	@POST
	@Path("continent")
	@Consumes({ MediaType.APPLICATION_JSON, MediaType.APPLICATION_XML })
	public Continent createContinent(Continent c1) {
		System.out.println(c1);
		try {
			c.insertContinent(c1);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return c1;
	}
	
	@PUT
	@Path("continent")
	@Consumes({ MediaType.APPLICATION_JSON, MediaType.APPLICATION_XML })
	public Continent updateContinent(Continent c1) {
		System.out.println(c1);
		if (c.selectContinent(c1.getContinentId()).getContinentId() == 0) {
			try {
				c.insertContinent(c1);
			} catch (SQLException e) {
				e.printStackTrace();
			}
		} else {
			try {
				c.updateContinent(c1);
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		return c1;
	}
}

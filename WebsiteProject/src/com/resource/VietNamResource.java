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
import com.models.VietNam;
import com.service.VietNamService;

@Path("vn")
public class VietNamResource {
	VietNamService vn = new VietNamService();

	@GET
	@Produces({ MediaType.APPLICATION_JSON, MediaType.APPLICATION_XML })
	public List<VietNam> getAll() {
		return vn.getAllCity();
	}

	@GET
	@Path("cities/{id}")
	@Produces({ MediaType.APPLICATION_JSON, MediaType.APPLICATION_XML })
	public VietNam getCity(@PathParam("id") int id) {
		return vn.selectCity(id);
	}
	
	@POST
	@Path("cities")
	@Consumes({ MediaType.APPLICATION_JSON, MediaType.APPLICATION_XML })
	public VietNam createCity(VietNam vn1) {
		System.out.println(vn1);
		try {
			vn.insertCity(vn1);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return vn1;
	}
	
	@PUT
	@Path("cities")
	@Consumes({ MediaType.APPLICATION_JSON, MediaType.APPLICATION_XML })
	public VietNam updateCity(VietNam vn1) {
		System.out.println(vn1);
		if(vn.selectCity(vn1.getCityId()).getCityId() == 0) {
			try {
				vn.insertCity(vn1);
			} catch (SQLException e) {
				e.printStackTrace();
			}
		} else {
			try {
				vn.updateCity(vn1);
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		return vn1;
	}
	
	@DELETE
	@Path("cities/{id}")
	public VietNam deleteCity(@PathParam("id") int id) {
		VietNam vn1 = vn.selectCity(id);
		if(vn1.getCityId() != 0) {
			vn.delete(id);
		}
		return vn1;
	}
}

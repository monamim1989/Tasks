package com.demo.controller;

import java.util.ArrayList;

import javax.ws.rs.Consumes;
import javax.ws.rs.DELETE;
import javax.ws.rs.GET;
import javax.ws.rs.POST;
import javax.ws.rs.PUT;
import javax.ws.rs.Path;
import javax.ws.rs.PathParam;
import javax.ws.rs.Produces;
import javax.ws.rs.core.MediaType;
import javax.ws.rs.core.Response;

import org.codehaus.jackson.map.ObjectMapper;

import com.demo.model.Product;

@Path("/products")
public class ProductController {
	
	static ArrayList<Product> list = new ArrayList<Product>();
	
	static {
		Product p1 = new Product(1,"USB 32GB",12.99);
		Product p2 = new Product(2,"WD 2TB",65.50);
		
		list.add(p1);
		list.add(p2);
	}
	@GET
	@Path("/viewall")
	@Produces(MediaType.APPLICATION_JSON)
	public ArrayList<Product> viewAllProducts(){
		return list;
	}
	@GET
	@Path("/view/{id}")
	@Produces(MediaType.APPLICATION_JSON)
	public Product viewById(@PathParam("id") int id) {
		return list.get(id-1);
	}
	
	@POST
	@Path("/create")
	public Response createProduct(Product product) {
		String output = "";
		ObjectMapper mapper = new ObjectMapper();
		list.add(product);
		
		try {
			output = mapper.writeValueAsString(product);
		}catch(Exception e) {
			e.printStackTrace();
		}
		return Response.status(201).entity(output).build();
	}
	
	@PUT
	@Path("/update/{id}")
	//@Consumes(MediaType.APPLICATION_JSON)
	public Response createItem(@PathParam("id") int id, Product product) {
		String output = "";
		ObjectMapper mapper = new ObjectMapper();
		list.set(id-1,product);
		try {
			output = mapper.writeValueAsString(product);
		}catch(Exception e) {
			e.printStackTrace();
		}
		return Response.status(200).entity(output).build();
	}
	
	@DELETE
	@Path("/delete/{id}")
	public void deleteProduct(@PathParam("id") int id) {
		try {
			list.remove(id-1);
		}catch(Exception e) {
			e.printStackTrace();
		}
	}
}

package com.crud.repository;

import java.util.List;

import com.crud.entities.ThingsAttribute;

public interface ThingsAttributeDAO {

	public void saveProduct(ThingsAttribute item);

	public void updateProduct(ThingsAttribute item);

	public ThingsAttribute deleteProduct(int id);

	public ThingsAttribute getProduct(int id);

	public List<ThingsAttribute> getAllProducts();
}

package com.crud.service;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.crud.entities.ThingsAttribute;
import com.crud.repository.ThingsAttributeDAO;

@Service
public class FavoriteThingsService {

	@Autowired
	private ThingsAttributeDAO dao;

	public void saveProduct(ThingsAttribute item) {
		dao.saveProduct(item);
	}

	public void updateProduct(ThingsAttribute item) {
		dao.updateProduct(item);
	}

	public void deleteProduct(int id) {
		ThingsAttribute result = dao.deleteProduct(id);
		if (result == null) {
			throw new NullPointerException("Mentioned product not found");
		}
	}

	public ThingsAttribute getProduct(int id) {
		return dao.getProduct(id);
	}

	public List<ThingsAttribute> getAllProducts() {
		return dao.getAllProducts();
	}
}

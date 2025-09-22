package com.crud.repository;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Repository;

import com.crud.entities.ThingsAttribute;

@Repository
public class FavoriteThingDAO implements ThingsAttributeDAO {

	@Autowired
	private HibernateTemplate template;

	@Transactional
	@Override
	public void saveProduct(ThingsAttribute item) {
		template.save(item);
	}

	@Transactional
	@Override
	public void updateProduct(ThingsAttribute item) {
		template.update(item);
	}

	@Transactional
	@Override
	public ThingsAttribute deleteProduct(int id) {
		ThingsAttribute item = template.load(ThingsAttribute.class, id);
		template.delete(item);
		return item;
	}

	@Override
	public ThingsAttribute getProduct(int id) {
		return template.get(ThingsAttribute.class, id);
	}

	@Override
	public List<ThingsAttribute> getAllProducts() {
		return template.loadAll(ThingsAttribute.class);
	}

}

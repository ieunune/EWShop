package com.model2.mvc.service.product.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import com.model2.mvc.common.Search;
import com.model2.mvc.service.domain.Product;
import com.model2.mvc.service.domain.User;
import com.model2.mvc.service.product.ProductDao;
import com.model2.mvc.service.product.ProductService;

// ��ǰ���� ���� ����
@Service("productServiceImpl")
public class ProductServiceImpl implements ProductService{
	
	// �ʵ�
	@Autowired
	@Qualifier("productDaoImpl")
	private ProductDao productDao;
	
	public void setProductDao(ProductDao productDao) {
		this.productDao = productDao; 
	}
	
	// ������
	public ProductServiceImpl() {
		System.out.println(" ProductServiceImpl ������ ");
	}
	
	
	// �޼ҵ�
	@Override
	public void addProduct(Product product) throws Exception {
		productDao.insertProdct(product);
		
	}

	@Override
	public Product getProduct(int prodNo) throws Exception {
		return productDao.getProduct(prodNo);
	}

	@Override
	public Map<String, Object> getProductList(Map<String, Object> searchMap) throws Exception {
		System.out.println(" 5 " + searchMap.get("order"));
		Map<String,Object> map1= productDao.getProductList(searchMap);
		System.out.println(" List 1 : " + map1.get("list"));
		
		Search search = (Search)searchMap.get("search");
		System.out.println(" 5 : " + search);
		int totalCount = productDao.getTotalCount(search);
		
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("list", map1.get("list"));
		map.put("totalCount", totalCount);
		
		return map;
	}
	
	

	@Override
	public void updateProduct(Product product) throws Exception {
		System.out.println("4");
		productDao.updateProduct(product);
	}

	@Override
	public List<String> getProductSearchList(Map<String, Object> searchMap) throws Exception {
		List<String> resultList = productDao.getProductSearchList(searchMap);
		//resultMap.put("list", resultMap.get("list"));
		return resultList;
	}

	@Override
	public void updateProdAmount(Product product) throws Exception {
		productDao.updateAmountProduct(product);
	}

} // Ŭ������ ��

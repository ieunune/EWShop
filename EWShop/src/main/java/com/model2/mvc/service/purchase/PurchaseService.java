package com.model2.mvc.service.purchase;

import java.util.HashMap;

import java.util.Map;

import com.model2.mvc.common.Search;
import com.model2.mvc.service.domain.Purchase;
import com.model2.mvc.service.domain.User;

public interface PurchaseService {

	public void addPurchase(Purchase purchase) throws Exception;
	
	public Purchase getPurchase(int tranNo) throws Exception;
	
	public void getPurchase2(int ProdNo) throws Exception;
	
	public HashMap<String,Object> getPurchaseList(Search search,Map<String, Object> map) throws Exception;
	
	public HashMap<String,Object> getSaleList(Search search) throws Exception;
	
	public void updatePurcahse(Purchase purchaseVO) throws Exception;
	
	public void updateTranCode(int prodNo) throws Exception;

	public void updateTranCodeByTranNo(Map<String, Object> map);
	
}
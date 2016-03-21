package com.crunchify.controller.dbtest;
public interface StockDao {
	
	void save(Stock stock);
	void update(Stock stock);
	void delete(Stock stock);
	Stock findByStockCode(String stockCode);

}
package dao;

import java.util.List;

import model.Product;

public interface IProductDAO extends GenericDAO<Product> {
	
	List<Product> searchByName(String productName);
	
	List<Product> searchByPrice(String productPrice);
	
	List<Product> searchByDescription(String productDes);
	
	List<Product> searchByBrand(String productBrand);
	
	int getTotalPages();
	
	List<Product> getProductsPerPage(int currentPage);
	
	List<Product> getProducts(int id);
	
	int getProductsPerPageConstant();
}

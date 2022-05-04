package com.bookworm.service;

import com.bookworm.model.Category;
import com.bookworm.model.Seller;
import com.bookworm.model.Product;

import java.util.List;

public interface ProductService {
    List<Product> getAll();

    Product findById(Long id);

    Product save(Product product);

    void delete(Product product);

    List<Product> getProductsByCategory(Category category);

    List<Product> getProductsBySeller(Seller seller);

    List<Product> getProductsByName(String name);
}

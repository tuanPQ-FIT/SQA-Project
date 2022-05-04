package com.bookworm.service;

import com.bookworm.model.Category;

import java.util.List;

public interface CategoryService {
    List<Category> getCategories();
    Category getCategoryById(Long id);
}

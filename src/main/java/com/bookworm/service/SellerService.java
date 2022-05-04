package com.bookworm.service;

import com.bookworm.model.Buyer;
import com.bookworm.model.Seller;
import com.bookworm.model.User;

import java.util.List;

public interface SellerService {
    Seller getSellerById(Long id);
    Seller save(Seller seller);
    Seller getSellerByUser(User user);
    List<Buyer> getFollowers(Long sellerId);
    Seller updateSeller(Seller seller);
    List<Seller> getAllSellers();
}

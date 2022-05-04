package com.bookworm.service.impl;

import com.bookworm.repository.SellerRepository;
import com.bookworm.model.Buyer;
import com.bookworm.model.Seller;
import com.bookworm.model.User;
import com.bookworm.service.SellerService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class SellerServiceImpl implements SellerService {
    @Autowired
    SellerRepository sellerRepository;

    @Override
    public Seller getSellerById(Long id) {
        return sellerRepository.findById(id).get();
    }

    @Override
    public Seller save(Seller seller) {
        return sellerRepository.save(seller);
    }

    @Override
    public Seller getSellerByUser(User user) {
        return sellerRepository.findSellerByUser(user);
    }

    @Override
    public List<Buyer> getFollowers(Long sellerId) {
        return sellerRepository.findById(sellerId).get().getBuyers();
    }

    public Seller updateSeller(Seller seller) {
        Seller selectSeller = sellerRepository.findById(seller.getId()).get();
        selectSeller.setName(seller.getName());
        selectSeller.setDescription(seller.getDescription());
        selectSeller.setPicture(seller.getPicture());
        return sellerRepository.save(selectSeller);
    }

    @Override
    public List<Seller> getAllSellers() {
        return (List) sellerRepository.findAll();
    }
}

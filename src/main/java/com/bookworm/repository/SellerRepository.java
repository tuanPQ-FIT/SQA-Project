package com.bookworm.repository;

import com.bookworm.model.Seller;
import com.bookworm.model.User;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface SellerRepository extends CrudRepository<Seller, Long> {
    Seller findSellerByUser(User user);
}

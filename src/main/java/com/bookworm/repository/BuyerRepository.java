package com.bookworm.repository;

import com.bookworm.model.Buyer;
import com.bookworm.model.User;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface BuyerRepository extends CrudRepository<Buyer, Long> {
    Buyer findBuyerByUser(User user);

}

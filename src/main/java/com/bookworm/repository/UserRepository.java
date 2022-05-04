package com.bookworm.repository;

import com.bookworm.model.Message;
import com.bookworm.model.User;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface UserRepository extends CrudRepository<User, Long> {

    // find user by email
    User findByEmail(String email);

    // get last 5 unread notify message of user by email.
    @Query(value = "select * from Message m join User u on m.user_id = u.id where m.read = 0 and u.email = ?1 order by m.received_date desc limit 5", nativeQuery = true)
    List<Message> getLast5UnreadNotifyMessageByUserEmail(String email);

}

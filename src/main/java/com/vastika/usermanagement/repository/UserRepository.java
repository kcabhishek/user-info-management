package com.vastika.usermanagement.repository;

import com.vastika.usermanagement.model.User;

import java.util.List;

public interface UserRepository {

    void saveUser(User user);

    void updateUser(User user);

    void deleteUser(int id);

    User getUserById (int id);

    List<User> getAllUser();

}

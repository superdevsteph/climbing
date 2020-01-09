package fr.climbing.service;

import java.util.List;

import fr.climbing.model.User;

public interface UserService {
    
	void saveUser(User user);

    void saveUser2(User user);
    
    User findByUsername(String username);

	User findUser(Long id);

	User findUser1(Long id);

	List<User> listUserInfos();

	void deleteUser(Long id);
}

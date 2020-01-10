package fr.climbing.service;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import fr.climbing.model.User;
import fr.climbing.repository.RoleRepository;
import fr.climbing.repository.UserRepository;

@Service
public class UserServiceImpl implements UserService {

	@Autowired
	private SessionFactory sessionFactory;

	@Autowired
	private UserRepository userRepository;
	@Autowired
	private RoleRepository roleRepository;
	@Autowired
	private BCryptPasswordEncoder bCryptPasswordEncoder;

	private Session openSession() {
        return sessionFactory.getCurrentSession();
    }
	
	public User getUser(String username) {
        List<User> userList = new ArrayList<User>();
        Query query = openSession().createQuery("from User u where u.username = :username");
        query.setParameter("username", username);
        userList = query.list();
        if (userList.size() > 0)
            return userList.get(0);
        else
            return null;    
    }
	 @Override
	    public void save(User user) {
	        user.setPassword(bCryptPasswordEncoder.encode(user.getPassword()));
	        user.setRoles(new HashSet<>(roleRepository.findAll()));
	        userRepository.save(user);
	    }

	    @Override
	    public User findByUsername(String username) {
	        return userRepository.findByUsername(username);
	    }
	
	/*
	 * @Override public User findUser(Long id) { Session session =
	 * sessionFactory.getCurrentSession(); Criteria crit =
	 * session.createCriteria(User.class); crit.add(Restrictions.eq("id", id));
	 * return (User) crit.uniqueResult(); }
	 * 
	 * 
	 * @Override public User findUser1(Long id) { User user = this.findUser(id); if
	 * (user == null) { return null; } return new User(user.getId(),
	 * user.getUsername(), user.getPassword()); }
	 * 
	 * 
	 * 
	 * @SuppressWarnings("unchecked")
	 * 
	 * @Transactional
	 * 
	 * @Override public List<User> listUserInfos() { String sql = "Select new " +
	 * User.class.getName()// + "(a.id,  a.username, a.password) "// + " from " +
	 * User.class.getName() + " a "; Session session =
	 * sessionFactory.getCurrentSession(); Query query = session.createQuery(sql);
	 * return query.list(); }
	 * 
	 */

	/*
	 * public void saveUser(User User) { Long id = User.getId(); User user = null;
	 * if (id != null) { User = this.findUser(id); } boolean isNew = false; if (User
	 * == null) { isNew = true; User = new User();
	 * 
	 * }
	 * 
	 * User.setUsername(User.getUsername());
	 * 
	 * User.setPassword(User.getPassword());
	 * 
	 * if (isNew) { Session session = this.sessionFactory.getCurrentSession();
	 * session.persist(User); } }
	 * 
	 * @Override public void deleteUser(Long id) { User User = this.findUser(id); if
	 * (User != null) { this.sessionFactory.getCurrentSession().delete(User); } }
	 * 
	 * public void saveUser2(User User) { Long id = User.getId(); User user = null;
	 * if (id != null) { User = this.findUser(id); } boolean isNew = false; if (User
	 * == null) { isNew = true; User = new User();
	 * 
	 * } User.setUsername(User.getUsername()); User.setPassword(User.getPassword());
	 * 
	 * if (isNew) { Session session = this.sessionFactory.getCurrentSession();
	 * session.persist(User); } }
	 */

	
}

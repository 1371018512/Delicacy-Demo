package zstu.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;
import org.springside.modules.security.utils.Digests;
import org.springside.modules.utils.Encodes;

import zstu.dao.UserDao;
import zstu.entity.User;
@Component
@Transactional
public class Userservice extends CrudService<User, UserDao> {
	@Autowired
	private UserDao userDao;
	@Override
	protected UserDao getDao() {
		// TODO Auto-generated method stub
		return userDao;
	}
	public User findByLoginName(String loginName) {
		// TODO Auto-generated method stub
		return this.getDao().findByLoginName(loginName);
	}
	public void signinsave(User user) {
		// TODO Auto-generated method stub
		byte[] salts=Digests.generateSalt(8);
		//产生随机秘钥
		String salt=Encodes.encodeHex(salts);
		user.setSalt(salt);
		byte[] hashPassword=Digests.sha1(user.getPassword().getBytes(),salts,1024);
		String pwd=Encodes.encodeHex(hashPassword);
		user.setPassword(pwd);
		this.save(user);
	}

}

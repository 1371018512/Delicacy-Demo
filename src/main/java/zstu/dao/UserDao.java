package zstu.dao;

import zstu.entity.User;

public interface UserDao extends BaseDao<User> {

	User findByLoginName(String loginName);

}

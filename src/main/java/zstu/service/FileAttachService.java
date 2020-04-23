package zstu.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;
import org.springside.modules.security.utils.Digests;
import org.springside.modules.utils.Encodes;

import zstu.dao.FileAttachDao;
import zstu.dao.UserDao;
import zstu.entity.FileAttach;
import zstu.entity.User;
@Component
@Transactional
public class FileAttachService extends CrudService<FileAttach, FileAttachDao> {
	@Autowired
	private FileAttachDao dao;
	@Override
	protected FileAttachDao getDao() {
		// TODO Auto-generated method stub
		return dao;
	}


}

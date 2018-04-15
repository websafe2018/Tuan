package service.impl;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import dao.RoleDao;
import entity.Role;
import service.RoleService;
@Service
public class RoleServiceImpl implements RoleService{

	@Resource
	private RoleDao rdao;
	@Override
	public Role findRoleById(int id) {
		return rdao.findRoleById(id);
	}

}

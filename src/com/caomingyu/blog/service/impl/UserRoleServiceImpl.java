package com.caomingyu.blog.service.impl;

import com.caomingyu.blog.mapper.UserRoleMapper;
import com.caomingyu.blog.pojo.UserRole;
import com.caomingyu.blog.service.UserRoleService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class UserRoleServiceImpl implements UserRoleService {
    @Autowired
    UserRoleMapper userRoleMapper;
    @Override
    public void add(UserRole userRole) {
        userRoleMapper.insert(userRole);
    }

    @Override//根据uid,删除User_Role表中的数据
    public void delete(int id) {
        userRoleMapper.deleteByUid(id);
    }

    @Override
    public void update(UserRole userRole) {

    }

    @Override
    public UserRole get(int id) {
        return null;
    }
}
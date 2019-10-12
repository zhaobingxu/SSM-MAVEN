package com.zhiyou100.model;

import java.io.Serializable;

public class RolePermission implements Serializable{
    private Integer id;

    private Integer role_id;

    private Integer permission_id;

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public Integer getRole_id() {
		return role_id;
	}

	public void setRole_id(Integer role_id) {
		this.role_id = role_id;
	}

	public Integer getPermission_id() {
		return permission_id;
	}

	public void setPermission_id(Integer permission_id) {
		this.permission_id = permission_id;
	}

	@Override
	public String toString() {
		return "RolePermission [id=" + id + ", role_id=" + role_id + ", permission_id=" + permission_id + "]";
	}

   
}
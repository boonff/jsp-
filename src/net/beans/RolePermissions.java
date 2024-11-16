package net.beans;

public class RolePermissions {
	String role;
	boolean read_permission;
	boolean write_permission;
	boolean delete_permission;

	public RolePermissions() {
		super();
		// TODO Auto-generated constructor stub
	}

	public RolePermissions(String role, boolean read_permission, boolean write_permission, boolean delete_permission) {
		super();
		this.role = role;
		this.read_permission = read_permission;
		this.write_permission = write_permission;
		this.delete_permission = delete_permission;
	}

	public String getRole() {
		return role;
	}

	public void setRole(String role) {
		this.role = role;
	}

	public boolean isRead_permission() {
		return read_permission;
	}

	public void setRead_permission(boolean read_permission) {
		this.read_permission = read_permission;
	}

	public boolean isWrite_permission() {
		return write_permission;
	}

	public void setWrite_permission(boolean write_permission) {
		this.write_permission = write_permission;
	}

	public boolean isDelete_permission() {
		return delete_permission;
	}

	public void setDelete_permission(boolean delete_permission) {
		this.delete_permission = delete_permission;
	}

}

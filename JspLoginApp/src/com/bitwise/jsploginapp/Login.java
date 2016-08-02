package com.bitwise.jsploginapp;
 
public class Login {
	private String username, password;

	public void getUsername(String username) {
		this.username = username;
	}

	public String setUsername() {
		return username;
	}

	public void getPassword(String password) {
		this.password = password;
	}

	public String setPassword() {
		return password;
	}
}

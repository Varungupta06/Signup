package com.app.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.app.model.*;

public class UserDao {
private Connection con;

public UserDao(Connection con) {
	this.con = con;
}

//method to insert user to database

public boolean saveUser(User user) {
	boolean f = false;
	try {
		
		String query = "insert into signup(firstName ,lastName , email ,phone ,password) values(?,?,?,?,?)";
		PreparedStatement ps = this.con.prepareStatement(query);
		ps.setString(1, user.getFirstName());
		ps.setString(2, user.getLastName());
		ps.setString(3, user.getEmail());
		ps.setString(4, user.getpNumber());
		ps.setString(5, user.getPassword());
		
		ps.executeUpdate();
		f=true;
	} catch (Exception e) {
		e.printStackTrace();
}
	return f;

}
}

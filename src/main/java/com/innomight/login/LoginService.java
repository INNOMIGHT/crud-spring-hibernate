package com.innomight.login;

import org.springframework.stereotype.Service;

@Service
public class LoginService {

	public boolean validateUser(String name, String password) {
		if(name.equals("Vaibhav") && password.equals("somepassword")) {
			return true;
		}
		return false;

	}

}

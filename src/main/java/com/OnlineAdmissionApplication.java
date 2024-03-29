package com;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.Bean;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
@SpringBootApplication
public class OnlineAdmissionApplication {

	public static void main(String[] args) {
		SpringApplication.run(OnlineAdmissionApplication.class, args);
	}
	
	// create method that will return your object ->

		@Bean
		public BCryptPasswordEncoder createPasswordEncoder() {
			BCryptPasswordEncoder passwordEncoder = new BCryptPasswordEncoder();
			return passwordEncoder;
		}
}

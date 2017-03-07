package com.demo;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class HelloController {

	@RequestMapping("/")
	public String sayHi() {
		return "<h1>Update 52 - Phoenix is cool!</h1>";
		
	}
	
}

package com.pomelo.Pomelomysqltest;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@SpringBootApplication
@RestController
public class PomeloMysqlTestApplication {

  @RequestMapping("/")
  public String home() {
    return "Hello DevOps-EKS BKK-Thai World From Ashish Karpe !!! I love Bkk Now It worked after terraform update";
  }
	public static void main(String[] args) {
		SpringApplication.run(PomeloMysqlTestApplication.class, args);
	}

}

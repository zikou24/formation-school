package com.example.demo;

import java.util.Properties;

import org.springframework.boot.SpringApplication;

import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.context.properties.ConfigurationProperties;
import org.springframework.context.annotation.Bean;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.JavaMailSenderImpl;

@SpringBootApplication(scanBasePackages="Controlle")
public class TastyMeallApplication {

	public static void main(String[] args) {
		SpringApplication.run(TastyMeallApplication.class, args);
	}
	@Bean
	public JavaMailSender getJavaMailSender() {
	    JavaMailSenderImpl mailSender = new JavaMailSenderImpl();
	    mailSender.setHost("smtp.gmail.com");
	    mailSender.setPort(587);
	      
	    mailSender.setUsername("zikoubouregbi@gmail.com");
	    mailSender.setPassword("zikou19992016");
	      
	    Properties props = mailSender.getJavaMailProperties();
	    props.put("mail.transport.protocol", "smtp");
	    props.put("mail.smtp.auth", "true");
	    props.put("mail.smtp.ssl.trust", "smtp.gmail.com");
	    props.put("mail.smtp.starttls.enable", "true");
	    props.put("mail.debug", "true");
	      
	    return mailSender;

}
	
	


	
	

	
	
	
	
	}





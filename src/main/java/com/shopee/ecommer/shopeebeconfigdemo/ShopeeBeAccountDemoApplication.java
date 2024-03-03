package com.shopee.ecommer.shopeebeconfigdemo;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.cloud.config.server.EnableConfigServer;

@SpringBootApplication
@EnableConfigServer
public class ShopeeBeAccountDemoApplication {

	public static void main(String[] args) {
		SpringApplication.run(ShopeeBeAccountDemoApplication.class, args);
	}

}

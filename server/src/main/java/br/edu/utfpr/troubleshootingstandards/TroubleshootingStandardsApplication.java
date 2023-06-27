package br.edu.utfpr.troubleshootingstandards;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.EnableAutoConfiguration;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.transaction.annotation.EnableTransactionManagement;

@SpringBootApplication
@EnableTransactionManagement
public class TroubleshootingStandardsApplication{

    public static void main(String[] args) {
        SpringApplication.run(TroubleshootingStandardsApplication.class, args);
    }

}

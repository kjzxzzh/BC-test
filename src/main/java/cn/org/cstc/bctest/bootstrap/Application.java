package cn.org.cstc.bctest.bootstrap;


import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.ComponentScan;

@SpringBootApplication
@ComponentScan("cn.*")
public class Application {
    public static void main(String[] args) throws InterruptedException {
    	Object[] sources = {Application.class};
    	System.out.println("version7 unsleep mysql 1");
//    	Thread.sleep(10000);
        SpringApplication.run(sources, args);
        
    }
}

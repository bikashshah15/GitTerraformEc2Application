package com.project.gitterraformec2;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@SpringBootApplication
@Controller
public class GitTerraformEc2Application {

    @GetMapping("/")
    public String home(){
        return "index";
    }

    public static void main(String[] args) {
        SpringApplication.run(GitTerraformEc2Application.class, args);
    }

}

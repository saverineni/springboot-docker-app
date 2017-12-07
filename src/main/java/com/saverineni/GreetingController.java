package com.saverineni;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class GreetingController {

    @RequestMapping("/greeting")
    public String sayGreetings() {
        return "Hello!!! Christmas is in the air.";
    }
}

package com.my;

import javax.jws.WebService;

@WebService
public class MyServiceImple implements MyService {

    @Override
    public String doMasg() {
        System.out.print("123");
        return "123";
    }
}

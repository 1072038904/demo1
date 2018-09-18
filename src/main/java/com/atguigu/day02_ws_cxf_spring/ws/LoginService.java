package com.atguigu.day02_ws_cxf_spring.ws;

import javax.jws.WebParam;
import javax.jws.WebService;

/**
 * @author pzj
 *
 */
@WebService
public interface LoginService {
    
    String login(@WebParam(name="name")String name,@WebParam(name="password")String password);
}
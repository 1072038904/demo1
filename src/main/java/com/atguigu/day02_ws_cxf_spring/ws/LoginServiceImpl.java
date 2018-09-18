package com.atguigu.day02_ws_cxf_spring.ws;

import javax.jws.WebService;
/**
 * @author pzj 2017年5月16日 下午4:58:43
 *
 */
@WebService(endpointInterface="com.atguigu.day02_ws_cxf_spring.ws.LoginService")
public class LoginServiceImpl implements LoginService {

    /* (non-Javadoc)
     * @see com.bigbang.cxf.LoginService#login(java.lang.String, java.lang.String)
     */
    @Override
    public String login(String name, String password) {
        return name+"登录成功！密码是："+password;
    }

}
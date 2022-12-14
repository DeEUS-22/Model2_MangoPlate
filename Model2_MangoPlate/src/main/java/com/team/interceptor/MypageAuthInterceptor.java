package com.team.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import com.mangoplate.vo.SessionVO;

public class MypageAuthInterceptor extends HandlerInterceptorAdapter {
	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
		    					throws Exception {
		
		//세션을 체크하는 로직 구현
		//1. request 객체를 통해 session 정보를 가져오기
		HttpSession session = request.getSession();
		
		//2. 로그인 성공 시 session에 로그인 인증키(sid) 담아 클라이언트에게 전송
		SessionVO svo = (SessionVO)session.getAttribute("svo"); //로그인한 계정 : 자신의ID , 로그인하지 않은 사용자:null
		if(svo == null) {
			//로그인하지 않은 사용자 : null
			response.sendRedirect("http://localhost:9000/mangoplate/index.do?auth=fail");
			
			return false;
		}
		
			return true;
	}
}

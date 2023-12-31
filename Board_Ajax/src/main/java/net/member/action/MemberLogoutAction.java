package net.member.action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class MemberLogoutAction implements Action {
	public ActionForward execute(HttpServletRequest request,HttpServletResponse response)throws ServletException, IOException{
		
		HttpSession session = request.getSession();
		
		session.invalidate();
		
		ActionForward forward = new ActionForward();
		forward.setPath("login.net");
		forward.setRedirect(true);
		
		
		return forward;
	}
}

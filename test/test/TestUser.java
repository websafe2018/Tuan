package test;

import static org.junit.Assert.*;

import java.util.Enumeration;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpSession;
import javax.servlet.http.HttpSessionContext;

import org.junit.Test;

import control.UsersControl;
import entity.Users;
import service.UsersService;
import service.impl.UsersServiceImpl;

public class TestUser {

	
	@Test
	public void testUpdateVIP() {
		UsersService us = new UsersServiceImpl();
		Users u = new Users();
		u.setEmail("123");
		u.setId(10);
		try {
			System.out.println(us.updateVIP(u, null,null));
		} catch (Exception e) {
			
			e.printStackTrace();
		}
	}

	public void testGetVipCount() {
		UsersService us = new UsersServiceImpl();
		try {
			System.out.println(us.getVipCount(null, null, null));
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	@Test
	public void testMyAcc() {
		int uid=24;
		UsersControl u=new UsersControl();
		try {
			HttpSession session=new HttpSession() {
				
				@Override
				public void setMaxInactiveInterval(int arg0) {
					// TODO Auto-generated method stub
					
				}
				
				@Override
				public void setAttribute(String arg0, Object arg1) {
					arg0="users";
					Users u=new Users();
					u.setId(24);
					arg1=u;
					
				}
				@Override
				public void removeValue(String arg0) {
					// TODO Auto-generated method stub
					
				}
				
				@Override
				public void removeAttribute(String arg0) {
					// TODO Auto-generated method stub
					
				}
				
				@Override
				public void putValue(String arg0, Object arg1) {
					// TODO Auto-generated method stub
					
				}
				
				@Override
				public boolean isNew() {
					// TODO Auto-generated method stub
					return false;
				}
				
				@Override
				public void invalidate() {
					// TODO Auto-generated method stub
					
				}
				
				@Override
				public String[] getValueNames() {
					// TODO Auto-generated method stub
					return null;
				}
				
				@Override
				public Object getValue(String arg0) {
					// TODO Auto-generated method stub
					return null;
				}
				
				@Override
				public HttpSessionContext getSessionContext() {
					// TODO Auto-generated method stub
					return null;
				}
				
				@Override
				public ServletContext getServletContext() {
					// TODO Auto-generated method stub
					return null;
				}
				
				@Override
				public int getMaxInactiveInterval() {
					// TODO Auto-generated method stub
					return 0;
				}
				
				@Override
				public long getLastAccessedTime() {
					// TODO Auto-generated method stub
					return 0;
				}
				
				@Override
				public String getId() {
					// TODO Auto-generated method stub
					return null;
				}
				
				@Override
				public long getCreationTime() {
					// TODO Auto-generated method stub
					return 0;
				}
				
				@Override
				public Enumeration<String> getAttributeNames() {
					// TODO Auto-generated method stub
					return null;
				}
				
				@Override
				public Object getAttribute(String arg0) {
					// TODO Auto-generated method stub
					return null;
				}
			};
			String abc=u.myAcc(session);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
}

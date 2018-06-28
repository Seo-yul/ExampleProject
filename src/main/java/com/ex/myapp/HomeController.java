package com.ex.myapp;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import dao.MemberDao;
import vo.Member;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	
	@Autowired
	SqlSession sqlSession;

	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String ghome(HttpSession session) {
		
		return phome(session);
	}
	
	@RequestMapping(value = "/", method = RequestMethod.POST)
	public String phome(HttpSession session) {
		
		return "home";
	}

	@RequestMapping(value = "/signUp", method = RequestMethod.POST)
	public String mSignUp(String address1, String address2, Member member) {
//		Member member =  new Member();
		String address = address1 + address2;
		member.setAddress(address);
		System.out.println(member);
		MemberDao mDao = sqlSession.getMapper(MemberDao.class);
		mDao.insertMember(member);
		return "redirect:/";
	}
	
	@RequestMapping(value = "/signIn", method = RequestMethod.POST)
	public String mSignIn(String ID, String pass, HttpSession session, Model model) {
		Member member =  new Member();
		String userid = ID;
		String userpwd = pass;
		member.setUserid(userid);
		member.setUserpwd(userpwd);
		MemberDao mDao = sqlSession.getMapper(MemberDao.class);
		try {
			member = mDao.selectMember(member);
			session.setAttribute("userId", member.getUserid());
		} catch (Exception e) {
			System.out.println(member);
			e.printStackTrace();
			member = null;
			boolean signinfail = true;
			model.addAttribute("signinfail", signinfail );
			return "home";
		}
		
		return "redirect:mainhome";
	}
	
	@RequestMapping(value = "mainhome", method = RequestMethod.GET)
	public String mainhome() {
		return "main";
	}
	
	@RequestMapping(value = "mainabout", method = RequestMethod.GET)
	public String mainabout() {
		return "about";
	}
	
	@RequestMapping(value = "mainboard", method = RequestMethod.GET)
	public String mainboard() {
		return "board";
	}
	
	@RequestMapping(value = "maincontact", method = RequestMethod.GET)
	public String maincontact() {
		return "contact";
	}
	
	@RequestMapping(value = "mainwrite", method = RequestMethod.GET)
	public String mainwrite() {
		return "write";
	}
	
	@RequestMapping(value = "/asdasd", method = RequestMethod.POST)
	public String postmainhome() {
		return "main";
	}
}

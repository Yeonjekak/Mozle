package com.kh.mozle.member.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.kh.mozle.member.model.service.MemberService;
import com.kh.mozle.member.model.vo.Member;

@Controller
public class MemberController {
    @Autowired
    MemberService service;
    
    
    @RequestMapping("memberlogin.do")
    public String memberLoginForm(){
       return "member/login";
    }
    @RequestMapping("agreement.do")
    public String agreement(){
       return "member/agreement";
    }
    
    @RequestMapping("memberJoin.do")
    public String memberJoinForm(){
       return "member/memberJoinForm";
    }
    
    @RequestMapping(value="insertMember.do")
      public String insertMember(Member member){
         
       System.out.println(member);
       
       
       int result = service.insertMember(member);
       
         return "redirect:index.do";
         
      }
    @RequestMapping("naverLogin.do")
    public String naverLogin(Member member,@RequestParam("email") String email,HttpSession session){
    	member.setM_email(email);
    	Member user=service.selectEmailMember(member);
    	if(user.getM_id().equals("")){
    		return "member/memberJoinForm";
    	}
    	
    	session.setAttribute("user", user);
    
    	System.out.println(user);
    	
       return "index";
    }
    
 
    
    
/*    @RequestMapping(value="login.do", method =RequestMethod.POST)
      public String login(Member member, HttpSession session){
         
         Member user = service.selectMember(member);
         
         System.out.println(user);
         if(user!= null && user.getPassword().equals(member.getPassword())){
            session.setAttribute("user", user);
         }else{
            System.out.println("로그인 실패");
         }
         return "index";
      }*/
}
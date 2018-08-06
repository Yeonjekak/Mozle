package com.kh.mozle.member.model.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.mozle.member.model.dao.MemberDao;
import com.kh.mozle.member.model.vo.Member;

@Service
public class MemberService {
   
   @Autowired
   MemberDao dao;

   public Member selectMember(Member member) {
      //System.out.println(member);
      return dao.selectMember(member);
   }

   public int insertMember(Member member) {
      return dao.insertMember(member);
   }

public Member selectEmailMember(Member member) {
	// TODO Auto-generated method stub
	 return dao.selectEmailMember(member);
	
}

}
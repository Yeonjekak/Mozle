package com.kh.mozle.club.model.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.mozle.club.model.dao.ClubMainDao;
import com.kh.mozle.club.model.vo.ClubMain;
import com.kh.mozle.member.model.dao.MemberDao;
import com.kh.mozle.member.model.vo.Member;

@Service
public class ClubMainService {
   
   @Autowired
   ClubMainDao dao;

public List<ClubMain> getClubList(ClubMain cm) {
	// TODO Auto-generated method stub
	
	return dao.selectClubList(cm);
}

  

/*public Member selectEmailMember(Member member) {
	// TODO Auto-generated method stub
	 return dao.selectEmailMember(member);
	
}*/

}
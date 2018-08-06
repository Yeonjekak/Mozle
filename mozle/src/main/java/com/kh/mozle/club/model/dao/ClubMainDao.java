package com.kh.mozle.club.model.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kh.mozle.club.model.vo.ClubMain;
import com.kh.mozle.member.model.vo.Member;

@Repository
public class ClubMainDao {

	@Autowired
	public SqlSessionTemplate sqlSession;

	public List<ClubMain> selectClubList(ClubMain cm) {
		// TODO Auto-generated method stub
		return sqlSession.selectList("clubMapper.selectClubList",cm);
	}

	/*public Member selectEmailMember(Member member) {
		// TODO Auto-generated method stub
		System.out.println(member);
		return sqlSession.selectOne("MemberMapper.selecteMemberEmail", member);
	}*/

}
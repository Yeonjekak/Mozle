package com.kh.mozle.member.model.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kh.mozle.member.model.vo.Member;

@Repository
public class MemberDao {


   @Autowired
   public SqlSessionTemplate sqlSession;
   
   
   public Member selectMember(Member member) {
      return sqlSession.selectOne("MemberMapper.selectMemberId", member);
   }


   public int insertMember(Member member) {
      return sqlSession.insert("MemberMapper.insertMember", member);
   }


public Member selectEmailMember(Member member) {
	// TODO Auto-generated method stub
	System.out.println(member);
	return sqlSession.selectOne("MemberMapper.selecteMemberEmail", member);
}

}
package com.myshop.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;

import com.myshop.dto.MemberDto;
import com.myshop.mapper.MemberMapper;

@Service
public class MemberServiceImpl implements MemberService{

	@Autowired
	MemberMapper membermapper;
	
	/* 회원가입 */
	@Override
	public void memberJoin(MemberDto member) throws Exception {
		
		membermapper.memberJoin(member);
		
	}
	
	/* 아이디 중복 검사 */
	@Override
	public int idCheck(String memberId) throws Exception {
		
		return membermapper.idCheck(memberId);
	}
	
    /* 로그인 */
    @Override
    public MemberDto memberLogin(MemberDto member) throws Exception {
        
        return membermapper.memberLogin(member);
    }
    
    /* 암호화 */
    @Bean
    public BCryptPasswordEncoder getPasswordEncoder() throws Exception {
      return new BCryptPasswordEncoder();
    }
}
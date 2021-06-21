package com.myshop.service;

import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;

import com.myshop.dto.MemberDto;

public interface MemberService {
	/* 회원가입 */
	public void memberJoin(MemberDto member) throws Exception;
	
	/* 아이디 중복 검사 */
	public int idCheck(String memberId) throws Exception;
	
	/* 로그인 */
    public MemberDto memberLogin(MemberDto member) throws Exception;
    
    /* 암호화 */
    public BCryptPasswordEncoder getPasswordEncoder() throws Exception;
}
package com.myshop.mapper;

import com.myshop.dto.MemberDto;

public interface MemberMapper {
	/* 회원가입 */
	public void memberJoin(MemberDto member);
	/* 아이디 중복 검사 */
	public int idCheck(String memberId);
    /* 로그인 */
    public MemberDto memberLogin(MemberDto member);
}

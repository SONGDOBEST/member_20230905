package com.icia.member.model;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class MemberService {
    @Autowired
    private MemberRepository memberRepository;

    public boolean save(MemberDTO memberDTO){
        int result = memberRepository.save(memberDTO);
        if(result > 0){
            return true;
        }else{
            return false;
        }
    }

    public List<MemberDTO> findAll(){
        return memberRepository.findAll();
    }

    public MemberDTO findById(Long id){
        return memberRepository.findById(id);
    }
    public MemberDTO findByEmail(String email){
        return memberRepository.findByEmail(email);
    }

    public void update(MemberDTO memberDTO){
        memberRepository.update(memberDTO);
    }

    public void delete(Long id){
        memberRepository.delete(id);
    }

    public boolean login(MemberDTO memberDTO){
        /*
            1. 이메일, 비밀번호 두 값 모두 일치하는 db 조회결과를 가져옴(조회결과 있으면 성공)
            2. 이메일로 DB에서 조회해서 서비스에서 비밀번호를 서로 비교하여 일치하면 로그인 성공
         */
        MemberDTO DTO = memberRepository.login(memberDTO);
        if(DTO != null){
            return true;
        }else{
            return false;
        }
    }
}

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

    public void update(MemberDTO memberDTO){
        memberRepository.update(memberDTO);
    }

    public void delete(Long id){
        memberRepository.delete(id);
    }
}

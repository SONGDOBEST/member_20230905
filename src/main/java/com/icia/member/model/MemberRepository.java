package com.icia.member.model;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class MemberRepository {
    @Autowired
    private SqlSessionTemplate sql;

    public int save(MemberDTO memberDTO){
        return sql.insert("Member.save", memberDTO);
    }

    public List<MemberDTO> findAll(){
        return sql.selectList("Member.findAll");
    }

    public MemberDTO findById(Long id){
        return sql.selectOne("Member.findById", id);
    }

    public MemberDTO findByEmail(String email){
        return sql.selectOne("Member.findByEmail", email);
    }
    public void update(MemberDTO memberDTO){
        sql.update("Member.update", memberDTO);
    }

    public void delete(Long id){
        sql.delete("Member.delete", id);
    }

    public MemberDTO login(MemberDTO memberDTO) {
        return sql.selectOne("Member.login", memberDTO);
    }
}

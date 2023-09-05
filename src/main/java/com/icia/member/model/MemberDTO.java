package com.icia.member.model;

public class MemberDTO {
    private int id;
    private String memberEmail;
    private String memberPass;
    private String memberName;
    private String memberBirth;
    private String memberMobile;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getMemberEmail() {
        return memberEmail;
    }

    public void setMemberEmail(String memberEmail) {
        this.memberEmail = memberEmail;
    }

    public String getMemberPass() {
        return memberPass;
    }

    public void setMemberPass(String memberPass) {
        this.memberPass = memberPass;
    }

    public String getMemberName() {
        return memberName;
    }

    public void setMemberName(String memberName) {
        this.memberName = memberName;
    }

    public String getMemberBirth() {
        return memberBirth;
    }

    public void setMemberBirth(String memberBirth) {
        this.memberBirth = memberBirth;
    }

    public String getMemberMobile() {
        return memberMobile;
    }

    public void setMemberMobile(String memberMobile) {
        this.memberMobile = memberMobile;
    }

    @Override
    public String toString() {
        return "MemberDTO{" +
                "id=" + id +
                ", memberEmail='" + memberEmail + '\'' +
                ", memberPass='" + memberPass + '\'' +
                ", memberName='" + memberName + '\'' +
                ", memberBirth='" + memberBirth + '\'' +
                ", memberMobile='" + memberMobile + '\'' +
                '}';
    }
}

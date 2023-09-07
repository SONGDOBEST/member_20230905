package com.icia.member.controller;

import com.icia.member.model.MemberDTO;
import com.icia.member.model.MemberService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
public class MemberController {
    @Autowired
    private MemberService memberService;

    @GetMapping("/save")
    public String saveForm() {
        return "memberSave";
    }

    @PostMapping("/save")
    public String save(@ModelAttribute MemberDTO memberDTO) {
        boolean result = memberService.save(memberDTO);
        if (result) {
            System.out.println("회원 등록 성공");
            System.out.println("memberDTO = " + memberDTO);
            return "memberLogin"; //성공하면 메인 화면(index.jsp)로 돌아가도록 함
        } else {
            System.out.println("회원 등록 실패");
            return "memberSave";  //실패하면 다시 등록하도록 함
        }
    }

    @GetMapping("/members")
    public String findAll(Model model){
        List<MemberDTO> memberDTOList = memberService.findAll();
        model.addAttribute("memberList", memberDTOList);
        return "memberList";
    }

    @GetMapping("/member")
    public String findById(@RequestParam("id") Long id, Model model){
        MemberDTO memberDTO = memberService.findById(id);
        model.addAttribute("member", memberDTO);
        return "memberDetail";
    }
    @GetMapping("/memberemail")
    public String findById(@RequestParam("email") String email, Model model){
        MemberDTO memberDTO = memberService.findByEmail(email);
        model.addAttribute("member", memberDTO);
        return "memberDetail";
    }

    @GetMapping("/update")
    public String updateForm(@RequestParam("id") Long id, Model model){
        MemberDTO memberDTO = memberService.findById(id);
        model.addAttribute("member", memberDTO);
        return "memberUpdate";
    }

    @PostMapping("/update")
    public String update(@ModelAttribute MemberDTO memberDTO, Model model){
        memberService.update(memberDTO);
        List<MemberDTO> memberDTOList = memberService.findAll();
        model.addAttribute("memberList", memberDTOList);
        return "memberDetail";
    }

    @PostMapping("/login")
    public String login(@ModelAttribute MemberDTO memberDTO, HttpSession session, Model model){
        boolean loginresult = memberService.login(memberDTO);
        if (loginresult){
            // 로그인 성공시 'session'에 이메일을 저장
            session.setAttribute("loginEmail", memberDTO.getMemberEmail());
            // model에 저장
            model.addAttribute("email", memberDTO.getMemberEmail());
            return "memberMain";
        }else{
            return "memberLogin";
        }
    }
    @GetMapping("/login")
    public String loginForm(){
        return "memberLogin";
    }

    @GetMapping("/logout")
    public String logout(HttpSession session){
        //해당 파라미터만 없앨경우
        session.removeAttribute("loginEmail");
        //세션을 없앨경우
        //session.invalidate();
        return "redirect:/";
    }
    @GetMapping("/delete")
    public String delete(@RequestParam("id") Long id){
        memberService.delete(id);
        return "redirect:/members";
    }

}

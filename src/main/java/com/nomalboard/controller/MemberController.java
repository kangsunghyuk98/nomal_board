package com.nomalboard.controller;

import com.nomalboard.dto.MemberTO;
import com.nomalboard.service.MemberService;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

@Controller
@RequiredArgsConstructor
public class MemberController {

    private final MemberService memberService;

    @GetMapping("/login")
    public String loginView () {
        return "member/loginpage";
    }

    @PostMapping("/join")
    public String joinProccessing(MemberTO to, Model model) {
        model.addAttribute("flag", memberService.memberJoin(to));
        return "member/joinok";
    }

    @GetMapping("/member/mypage")
    public String mypageView() {
        return "mypage";
    }


}

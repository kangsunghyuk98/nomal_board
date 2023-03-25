package com.nomalboard.controller;

import com.nomalboard.dto.MemberTO;
import com.nomalboard.service.MemberService;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

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

    @GetMapping("/findid")
    public String findId() {
        return "/member/findidpage";
    }

    @PostMapping("/findid")
    public String findId(@RequestParam("email") String email, @RequestParam("password") String password, Model model) {
        String username = memberService.findId(email, password);

        model.addAttribute("username", username);

        return "/member/findidok";
    }

    @GetMapping("/updatepassword")
    public String updatePassword() {
        return "/member/updatepasswordpage";
    }

    @PostMapping("/updatepassword")
    public String updatePassword(MemberTO to, Model model) {

        int flag = memberService.updatePassword(to);
        model.addAttribute("flag", flag);

        return "/member/updatepasswordok";
    }

}

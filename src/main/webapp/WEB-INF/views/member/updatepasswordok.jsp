<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%

  int flag = (int) request.getAttribute("flag");

  out.print("<script>");
  if (flag == 0) {
    out.print("alert('비밀번호 재설정 되었습니다. 다시 로그인 해주세요.');");
    out.print("location.href = '/login';");
  } else {
    out.print("alert('입력하신 정보와 일치하는 사용자가 없습니다.');");
    out.print("location.href = '/login';");
  }
  out.print("</script>");

%>

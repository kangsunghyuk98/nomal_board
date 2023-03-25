<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%

  String username = (String) request.getAttribute("username");

  out.print("<script>");
  if (username.equals("x")) {
    out.print("alert('서버에 없는 정보입니다.');");
    out.print("location.href = '/login';");
  } else {
    out.print("alert('서버에 저장된 아이디는 "+username+" 입니다.');");
    out.print("location.href = '/login';");
  }
  out.print("</script>");

%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>
<%@page session="true"%>
<html>
   <head>
      <title>ROLE_ADMIN -sivu</title>
   </head>
   <body>
      <h2>ROLE_ADMIN -sivu</h2>
      <h3>Tälle sivulle pääsee vain ROLE_ADMIN -roolilla.</h3>
      <c:if test="${pageContext.request.userPrincipal.name != null}">
         <h3>
            Tervetuloa, ${pageContext.request.userPrincipal.name}
         </h3>
      </c:if>
      <form action="logout" method="post">
         <input type="submit" value="Kirjaudu ulos" />
         <sec:csrfInput />
      </form>
   </body>
</html>
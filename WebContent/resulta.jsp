<%@ page contentType="text/html; charset=UTF-8" import="java.util.LinkedList,java.util.List"
pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<html>
<head>
<style type="text/css">
	body{
		background-image:url(1.jpg);
		background-size:100% 100%;
		}
	</style>
</head>
<body>
    <h2>
        <s:property value="username"/>作品如下：
    </h2>
    <center>书籍名称</center>
<table border="1" align="center">
<tr>
    <%List<String> list = (List<String>)session.getAttribute("list");
    String username = (String)session.getAttribute("username");
    for (int i = 0; i < list.size(); i++) {
  out.print("<td align=\"center\"><a href=Detail?title="+list.get(i)+"&username="+username+">"+list.get(i)+"</td>");
} %>
</tr>
</table>
<a href=Login><button type="button">返回主页</button></a>
</body>
</html>
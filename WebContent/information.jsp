<%@ page contentType="text/html; charset=UTF-8" import="java.util.LinkedList,java.util.List"
pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<html>
<head>
<link rel="stylesheet" href="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/css/bootstrap.min.css">  
	<script src="http://cdn.static.runoob.com/libs/jquery/2.1.1/jquery.min.js"></script>
	<script src="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<style type="text/css">
	body{
		background-image:url(5.jpg);
		background-size:100% 100%;
		}
	</style>
</head>
<body>
<div class="container">
	<div class="row clearfix">
		<div class="col-md-12 column">
			<div class="panel-group" id="panel-775337">
				<div class="panel panel-default">
					<div class="panel-heading">
						 <a class="panel-title" data-toggle="collapse" data-parent="#panel-775337" href="#panel-element-779869"><s:property value="username"/>详细信息</a>
					</div>
					<div id="panel-element-779869" class="panel-collapse in">
						<div class="panel-body">
							<table border="1" align="center">
							<tr>
							    <td>编号</td>
							    <td>姓名</td>
							    <td>年龄</td>
							    <td>国家</td>
							<tr>
							    <%List<String> list0 = (List<String>)session.getAttribute("list0");
							    for (int i = 0; i < list0.size(); i++) {
							  out.print("<td align=\"center\">"+list0.get(i)+"</td>");
							} %>
							</tr>
							</table>
						</div>
					</div>
				</div>
				<div class="panel panel-default">
					<div class="panel-heading">
						 <a class="panel-title collapsed" data-toggle="collapse" data-parent="#panel-775337" href="#panel-element-134802">书籍详细信息</a>
					</div>
					<div id="panel-element-134802" class="panel-collapse collapse">
						<div class="panel-body">
							<table border="1" align="center">
							<tr>
							    <td>ISBN</td>
							    <td>书名</td>
							    <td>作者编号</td>
							    <td>出版社</td>
							    <td>出版日期</td>
							    <td>价格</td>
							    <td>修改</td>
							    <td>删除</td>
							<tr>
							    <%List<String> list = (List<String>)session.getAttribute("list");
							    for (int i = 0; i < list.size(); i+=6) {
							  out.print("<td align=\"center\">"+list.get(i)+"</td>");
							  out.print("<td align=\"center\">"+list.get(i+1)+"</td>");
							  out.print("<td align=\"center\">"+list.get(i+2)+"</td>");
							  out.print("<td align=\"center\">"+list.get(i+3)+"</td>");
							  out.print("<td align=\"center\">"+list.get(i+4)+"</td>");
							  out.print("<td align=\"center\">"+list.get(i+5)+"</td>");
							  out.print("<td align=\"center\"><a href=Gotoedit?isbn="+list.get(i)+"><button type=\"button\">修改</button></a></td>");
							  out.print("<td align=\"center\"><a href=Delete?isbn="+list.get(i)+"><button type=\"button\">删除</button></a></td>");} %>
							</tr>
							</table>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
<a href=Login><button type="button">返回主页</button></a>
</body>
</html>
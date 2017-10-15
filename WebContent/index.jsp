<%@ page contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<html>
<head>
<link rel="stylesheet" href="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/css/bootstrap.min.css">  
	<script src="http://cdn.static.runoob.com/libs/jquery/2.1.1/jquery.min.js"></script>
	<script src="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<style type="text/css">
	body{
		background-image:url(7.jpg);
		background-size:100% 100%;
		}
	</style>	
</head>
<body>
<div class="container">
	<div class="row clearfix">
		<div class="col-md-12 column">
			<div class="page-header">
				<h1>
					欢迎来到图书管理系统
				</h1>
			</div>
			<div class="tabbable" id="tabs-731156">
				<ul class="nav nav-tabs">
					<li class="active">
						 <a href="#panel-683763" data-toggle="tab">查询图书</a>
					</li>
					<li>
						 <a href="#panel-423189" data-toggle="tab">添加图书</a>
					</li>
				</ul>
				<div class="tab-content">
					<div class="tab-pane active" id="panel-683763">
						<p>
					    <s:form action="Search">
        				<s:textfield name="username" label="作家名"/><s:submit value="查询"/>
    					</s:form>
						</p>
					</div>
					<div class="tab-pane" id="panel-423189">
						<p>
					   <center>
   					   <s:form action="Addbook">
       					 <s:textfield name="isbn" label="ISBN"/>
       					 <s:textfield name="title" label="书名"/>
      					 <s:textfield name="name" label="作家名"/>
       					 <s:textfield name="publisher" label="出版社"/>
      					 <s:textfield name="publishdate" label="出版日期"/>
      					 <s:textfield name="price" label="价格"/>
      					 <s:submit value="添加"/>
  					  </s:form>
  					  </center>
						</p>
					</div>
				</div>
			</div>
			<div class="jumbotron well">
				<h1>
					用户你好
				</h1>
				<p>本系统可进行查询(作者名为英文)，展示，添加，更新，删除图书功能</p>

			</div>
		</div>
	</div>
</div>
    
</body>
</html>
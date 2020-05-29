<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'head.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
    <link rel="stylesheet" href="css/login.css"  type="text/css" />
<link rel="stylesheet" href="css/bootstrap.min.css"  type="text/css" />
<script language="JavaScript" src="js/jquery-3.2.1.min.js"></script>
<script language="JavaScript" src="js/popper.min.js"></script>
<nav class="navbar navbar-expand-md bg-dark navbar-dark">
    <a class="navbar-brand" href="main.jsp">Library</a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#collapsibleNavbar">
        <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="collapsibleNavbar">
        <ul class="navbar-nav">
            <li class="nav-item">
                <a class="nav-link" href="main.jsp">首页&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a>
            </li>
            <li class="nav-item dropdown">
                <a class="nav-link dropdown-toggle" href="" id="navbardrop" data-toggle="dropdown">
                    图书管理&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                </a>
                <div class="dropdown-menu">
                    <a class="dropdown-item" href="BookAction?action=getall">查看图书总表</a>
                    <a class="dropdown-item" href="AddBook.jsp">添加书本</a>
                    <a class="dropdown-item" href="BookAction?action=gettemp">查看预添加书本列表</a>
                </div>
            </li>
            <li class="nav-item dropdown">
                <a class="nav-link dropdown-toggle" href="" id="navbardrop" data-toggle="dropdown">
                    借书与还书&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                </a>
                <div class="dropdown-menu">
                    <a class="dropdown-item" href="borrow.jsp">借书</a>
                    <a class="dropdown-item" href="return.jsp">还书</a>
                </div>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="IOAction?action=getlog">图书进出记录&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="ReaderAction?action=GetAllReader">用户管理&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a>
            </li>
            <li class="nav-item dropdown" align="right">
                <a class="nav-link dropdown-toggle" href="" id="navbardrop" data-toggle="dropdown">
                    管理员&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                </a>
                <div class="dropdown-menu">
                    <a class="dropdown-item" href="LoginAction?action=logout">注销</a>
                </div>
            </li>
        </ul>


    </div>
</nav>
  </body>
</html>

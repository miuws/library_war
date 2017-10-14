
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="miao.dao.DBUtils" %>

<!doctype html>
<html class="no-js" lang="">
<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>图书列表</title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <link rel="apple-touch-icon" href="apple-touch-icon.png">
    <!-- Place favicon.ico in the root directory -->
    <link href="Project Template one/css/bootstrap.css" rel="stylesheet">
    <link href="Project Template one/css/signin.css" rel="stylesheet">
    <link href="Project Template one/css/bootstrap.min.css" rel="stylesheet">
    <script src="Project Template one/js/vendor/modernizr-2.8.3.min.js"></script>
    <script src="Project Template one/js/vendor/jquery-1.12.0.min"></script>
    <script src="Project Template one/css/bootstrap.min.js"></script>
    <!-- Bootstrap core CSS -->
    <link href="Project Template one/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="Project Template one/css/cover.css" rel="stylesheet">

    <!-- Just for debugging purposes. Don't actually copy these 2 lines! -->
    <!--[if lt IE 9]><script src="../../assets/js/ie8-responsive-file-warning.js"></script><![endif]-->
    <script src="js/ie-emulation-modes-warning.js"></script>

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
    <script src="http://cdn.bootcss.com/html5shiv/3.7.0/html5shiv.js"></script>
    <script src="http://cdn.bootcss.com/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>
<body>
<div class="site-wrapper">

    <div class="site-wrapper-inner">

        <div class="cover-container">

            <div class="masthead clearfix">
                <div class="inner">


                    <h3 class="masthead-brand">图书管理</h3>
                    <ul class="nav masthead-nav">
                        <li><a href="BookList.jsp">返回图书列表</a></li>
                        <li><a href="welcom.jsp">返回主界面</a></li>
                    </ul>

                    <form action="delete" method="post">
                        <h1> 查询到的书籍 </h1> <br/>
                        <%
                            String sql = null;
                            DBUtils db = new DBUtils();
                            String name = request.getParameter("name");
                            if(name.isEmpty()){
                                sql="select * from book";
                            }else{
                                sql="select * from book where AuthorID in (select AuthorID from Author where Name='"+name+"')";
                            }
                            db.getConnect();
                            ResultSet rs = db.getResult(sql);
                        %>
                        <table class="table table-condensed">
                            <tr >
                                <td width="100">ISBN</td>
                                <td width="100">Title</td>
                                <td width="100">AuthorID</td>
                                <td width="100">Publisher</td>
                                <td width="100">PublishDate</td>
                                <td width="100">Price</td>
                                <td width="100">操作</td>
                            </tr>
                            <%
                                while(rs.next()){
                            %>
                            <tr>
                                <td width="100"><%=rs.getString("ISBN")%></td>
                                <td width="100"><%=rs.getString("Title")%></td>
                                <td width="100"><%=rs.getString("AuthorID")%></td>
                                <td width="100"><%=rs.getString("Publisher")%></td>
                                <td width="100"><%=rs.getString("PublisherDate")%></td>
                                <td width="100"><%=rs.getDouble("Price")%></td>
                                <td width="100">
                                    <a href="delete?ISBN=<%=rs.getString("ISBN")%>">删除</a>
                                </td>
                            </tr>
                            <%
                                }
                            %>
                        </table>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>


<!-- Bootstrap core JavaScript
================================================== -->
<!-- Placed at the end of the document so the pages load faster -->
<script src="http://cdn.bootcss.com/jquery/1.11.1/jquery.min.js"></script>
<script src="Project Template one/js/bootstrap.min.js"></script>
<script src="Project Template one/js/docs.min.js"></script>
<!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
<script src="Project Template one/js/ie10-viewport-bug-workaround.js"></script>
</body>
</html>

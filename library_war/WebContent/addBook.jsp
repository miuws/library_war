

<%@ page language="java" pageEncoding="UTF-8"%>
<!doctype html>
<html class="no-js" lang="">
<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>新增图书</title>
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
<body >
<div class="site-wrapper">

    <div class="site-wrapper-inner">

        <div class="cover-container">

            <div class="masthead clearfix">
                <div class="inner">

                    <h3 class="masthead-brand">按照要求添加信息</h3>
                    <ul class="nav masthead-nav">
                        <li><a href="BookList.jsp">图书列表</a></li>
                    </ul>

                    <form method = "post" action="add">
                        <table class="table table-condensed">
                            <tr>
                                <td>ISBN：<input type="text" class="form-control" name="ISBN"></td>
                            </tr>
                            <tr>
                                <td>Title：<input type="text" class="form-control" name="Title"></td>
                            </tr>
                            <tr>
                                <td>AuthorID：<input type="text" class="form-control" name="AuthorID"></td>
                            </tr>
                            <tr>
                                <td>Publisher：<input type="text" class="form-control" name="Publisher"></td>
                            </tr>
                            <tr>
                                <td>PublishDate：<input type="text" class="form-control" name="PublisherDate"></td>
                            </tr>
                            <tr>
                                <td>Price：<input type="text" class="form-control" name="Price"></td>
                            </tr>

                            <tr>
                                <td><input class="btn btn-lg btn-primary btn-block" type="submit" value="提交"/></td>
                            </tr>
                            <tr>
                                <td><input class="btn btn-lg btn-primary btn-block" type="reset" value="重置"/></td>
                            </tr>



                        </table>
                    </form>



                </div>
            </div>
        </div>
    </div>
</div>


<script src="http://cdn.bootcss.com/jquery/1.11.1/jquery.min.js"></script>
<script src="Project Template one/js/bootstrap.min.js"></script>
<script src="Project Template one/js/docs.min.js"></script>
<!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
<script src="Project Template one/js/ie10-viewport-bug-workaround.js"></script>
</body>
</html>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c"
           uri="http://java.sun.com/jsp/jstl/core" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://"
            + request.getServerName() + ":" + request.getServerPort()
            + path + "/";
%>
<!DOCTYPE html>
<html lang="en">

<head>
    <base href="<%=basePath%>"/>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>navigation</title>
    <link href="css/lib/bootstrap.css" rel="stylesheet">
    <script src="http://libs.baidu.com/jquery/2.0.0/jquery.js"></script>
    <script src="https://cdn.bootcss.com/bootstrap/3.0.1/js/bootstrap.js"></script>
</head>

<body>
    <div class="container">
        <div class="row clearfix">
            <div class="col-md-12 column">
                <nav class="navbar navbar-default" role="navigation">
                    <div class="navbar-header">
                         <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1"> <span class="sr-only">Toggle navigation</span><span class="icon-bar"></span><span class="icon-bar"></span><span class="icon-bar"></span></button> <a class="navbar-brand" href="#">Brand</a>
                    </div>
                    
                    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                        <ul class="nav navbar-nav">
                            <li class="active">
                                 <a href="#">Link</a>
                            </li>
                            <li>
                                 <a href="#">Link</a>
                            </li>
                            <li class="dropdown">
                                 <a href="#" class="dropdown-toggle" data-toggle="dropdown">Dropdown<strong class="caret"></strong></a>
                                <ul class="dropdown-menu">
                                    <li>
                                         <a href="#">Action</a>
                                    </li>
                                    <li>
                                         <a href="#">Another action</a>
                                    </li>
                                    <li>
                                         <a href="#">Something else here</a>
                                    </li>
                                    <li class="divider">
                                    </li>
                                    <li>
                                         <a href="#">Separated link</a>
                                    </li>
                                    <li class="divider">
                                    </li>
                                    <li>
                                         <a href="#">One more separated link</a>
                                    </li>
                                </ul>
                            </li>
                        </ul>
                        <form class="navbar-form navbar-left" role="search">
                            <div class="form-group">
                                <input type="text" class="form-control" />
                            </div> <button type="submit" class="btn btn-default">Submit</button>
                        </form>
                        <ul class="nav navbar-nav navbar-right">
                            <li>
                                 <a href="#">Link</a>
                            </li>
                            <li class="dropdown">
                                 <a href="#" class="dropdown-toggle" data-toggle="dropdown">Dropdown<strong class="caret"></strong></a>
                                <ul class="dropdown-menu">
                                    <li>
                                         <a href="#">Action</a>
                                    </li>
                                    <li>
                                         <a href="#">Another action</a>
                                    </li>
                                    <li>
                                         <a href="#">Something else here</a>
                                    </li>
                                    <li class="divider">
                                    </li>
                                    <li>
                                         <a href="#">Separated link</a>
                                    </li>
                                </ul>
                            </li>
                        </ul>
                    </div>
                    
                </nav>
                <ul class="breadcrumb">
                    <li>
                         <a href="#">Home</a>
                    </li>
                    <li>
                         <a href="#">Library</a>
                    </li>
                    <li class="active">
                        Data
                    </li>
                </ul>
                <div class="row clearfix">
                    <div class="col-md-6 column">
                        <h3>
                            <strong>范围阈值管理</strong>
                        </h3>
                    </div>
                    <div class="col-md-6 column">
                         <button type="button" class="btn btn-default">编辑</button>
                    </div>
                </div>
                <table class="table table-bordered">
                    <thead>
                        <tr>
                            <th>
                                编号
                            </th>
                            <th>
                                X
                            </th>
                            <th>
                                Y
                            </th>
                            <th>
                                所属区域
                            </th>
                            <th>
                                编辑
                            </th>
                            <th>
                                删除
                            </th>
                        </tr>
                    </thead>
                    <tbody>
                    <c:forEach items="${rangePage.lists}" var="ran" varStatus="sta">
                        <tr >
                            <td>
                                    ${sta.index+1}
                            </td>
                            <td>
                                    ${ran.x}
                            </td>
                            <td>
                                    ${ran.y}
                            </td>
                            <td>
                                    ${ran.rangeName}
                            </td>
                            <td >
                                <a id="modal-9251" href="#modal-container-9251" role="button" class="btn" data-toggle="modal">编辑</a>
                            </td>
                            <td>
                                DELETE
                            </td>
                        </tr>
                        <div class="modal fade" id="modal-container-9251" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
                            <div class="modal-dialog">
                                <div class="modal-content">
                                    <div class="modal-header">
                                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                                        <h4 class="modal-title" id="myModalLabel">
                                            标题
                                        </h4>
                                    </div>
                                    <div class="modal-body">
                                        <form class="form-horizontal" role="form">
                                            <div class="form-group">
                                                <label for="inputEmail3" class="col-sm-2 control-label">x：</label>
                                                <div class="col-sm-10">
                                                    <input type="email" class="form-control" id="inputEmail3" placeholder="${ran.x}"/>
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label for="inputPassword3" class="col-sm-2 control-label">y：</label>
                                                <div class="col-sm-10">
                                                    <input type="password" class="form-control" id="inputPassword3" placeholder="${ran.y}"/>
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label for="inputRangeName3" class="col-sm-2 control-label">范围名称：</label>
                                                <div class="col-sm-10">
                                                    <input type="password" class="form-control" id="inputRangeName3" placeholder="${ran.rangeName}" />
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button> <button type="button" class="btn btn-primary">保存</button>
                                            </div>
                                        </form>
                                    </div>

                                </div>

                            </div>

                        </div>
                    </c:forEach>
                    </tbody>
                </table>
                <ul class="pagination">
                    <li>
                        <a>当前页：${rangePage.currPage}</a>
                    </li>
                    <li>
                        <c:if test="${rangePage.currPage>1}">
                         <a href="<%=basePath%>range/getRangeByPage?currentPage=${rangePage.currPage-1}">上一页</a>
                        </c:if>
                    </li>
                    <li>
                         <a href="<%=basePath%>range/getRangeByPage?currentPage=1">1</a>
                    </li>
                    <li>
                         <a href="<%=basePath%>range/getRangeByPage?currentPage=2">2</a>
                    </li>
                    <li>
                         <a >...</a>
                    </li>
                    <li>
                         <a href="<%=basePath%>range/getRangeByPage?currentPage=${rangePage.totalPage}">${rangePage.totalPage}</a>
                    </li>
                    <li>
                        <c:if test="${rangePage.currPage<rangePage.totalPage}">
                         <a href="<%=basePath%>range/getRangeByPage?currentPage=${rangePage.currPage+1}">下一页</a>
                        </c:if>
                    </li>
                </ul>
                <div class="row clearfix">
                    <div class="col-md-6 column">
                        <h3>
                            <strong>时间阈值管理</strong>
                        </h3>
                    </div>
                </div>
                <table class="table table-bordered">
                    <thead>
                        <tr>
                            <th>
                                编号
                            </th>
                            <th>
                                活动名称
                            </th>
                            <th>
                                时间范围
                            </th>
                            <th>
                                时间差值
                            </th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td>
                                1
                            </td>
                            <td>
                                TB - Monthly
                            </td>
                            <td>
                                01/04/2012
                            </td>
                            <td>
                                Default
                            </td>
                        </tr>
                        <tr class="success">
                            <td>
                                1
                            </td>
                            <td>
                                TB - Monthly
                            </td>
                            <td>
                                01/04/2012
                            </td>
                            <td>
                                Approved
                            </td>
                        </tr>
                        <tr class="error">
                            <td>
                                2
                            </td>
                            <td>
                                TB - Monthly
                            </td>
                            <td>
                                02/04/2012
                            </td>
                            <td>
                                Declined
                            </td>
                        </tr>
                        <tr class="warning">
                            <td>
                                3
                            </td>
                            <td>
                                TB - Monthly
                            </td>
                            <td>
                                03/04/2012
                            </td>
                            <td>
                                Pending
                            </td>
                        </tr>
                        <tr class="info">
                            <td>
                                4
                            </td>
                            <td>
                                TB - Monthly
                            </td>
                            <td>
                                04/04/2012
                            </td>
                            <td>
                                Call in to confirm
                            </td>
                        </tr>
                    </tbody>
                </table>
                <ul class="pagination">
                    <li>
                         <a href="#">Prev</a>
                    </li>
                    <li>
                         <a href="#">1</a>
                    </li>
                    <li>
                         <a href="#">2</a>
                    </li>
                    <li>
                         <a href="#">3</a>
                    </li>
                    <li>
                         <a href="#">4</a>
                    </li>
                    <li>
                         <a href="#">5</a>
                    </li>
                    <li>
                         <a href="#">Next</a>
                    </li>
                </ul>
                <div class="jumbotron">
                    <h1>
                        Hello, world!
                    </h1>
                    <p>
                        This is a template for a simple marketing or informational website. It includes a large callout called the hero unit and three supporting pieces of content. Use it as a starting point to create something more unique.
                    </p>
                    <p>
                         <a class="btn btn-primary btn-large" href="#">Learn more</a>
                    </p>
                </div>
            </div>
        </div>
        <div class="row clearfix">
            <div class="col-md-4 column">
                <h2>
                    Heading
                </h2>
                <p>
                    Donec id elit non mi porta gravida at eget metus. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Etiam porta sem malesuada magna mollis euismod. Donec sed odio dui.
                </p>
                <p>
                     <a class="btn" href="#">View details »</a>
                </p>
            </div>
            <div class="col-md-4 column">
                <h2>
                    Heading
                </h2>
                <p>
                    Donec id elit non mi porta gravida at eget metus. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Etiam porta sem malesuada magna mollis euismod. Donec sed odio dui.
                </p>
                <p>
                     <a class="btn" href="#">View details »</a>
                </p>
            </div>
            <div class="col-md-4 column">
                <h2>
                    Heading
                </h2>
                <p>
                    Donec id elit non mi porta gravida at eget metus. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Etiam porta sem malesuada magna mollis euismod. Donec sed odio dui.
                </p>
                <p>
                     <a class="btn" href="#">View details »</a>
                </p>
            </div>
        </div>
    </div>
    <script type="text/javascript">
        var size = ${rangePage.lists.size()}
        for(var i=0;i<size;i++){
            var edname = "e"+i;
          $("#"+edname).click(function () {
              window.open ("<%=basePath%>range/editRange", "newwindow", "height=100, width=400, top=0, left=0, toolbar=no, menubar=no, scrollbars=no, resizable=no,location=no, status=no")
          });
        }
    </script>
</body>

</html>
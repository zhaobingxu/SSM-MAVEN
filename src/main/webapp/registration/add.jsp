<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <title>更改挂号-- -2015</title>
    <meta charset="UTF-8">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/Css/bootstrap.css" />
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/Css/bootstrap-responsive.css" />
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/Css/style.css" />
    <script type="text/javascript" src="${pageContext.request.contextPath }/Js/jquery.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath }/Js/jquery.sorted.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath }/Js/bootstrap.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath }/Js/ckform.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath }/Js/common.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath }/Js/ckeditor/ckeditor.js"></script>
 

    <style type="text/css">
        body {
            padding-bottom: 40px;
        }
        .sidebar-nav {
            padding: 9px 0;
        }

        @media (max-width: 980px) {
            /* Enable use of floated navbar text */
            .navbar-text.pull-right {
                float: none;
                padding-left: 5px;
                padding-right: 5px;
            }
        }


    </style>
    <script type="text/javascript">
    $(function () {       
		$('#backid').click(function(){
				window.location.href="${pageContext.request.contextPath }/list.do";
		 });
    });
    </script>
</head>
<body>
<form action="${pageContext.request.contextPath }/add.do" method="post" class="definewidth m20">
<table class="table table-bordered table-hover definewidth m10">
    <tr>
        <td width="10%" class="tableleft">姓名</td>
        <td><input type="text" name="name" value=""/></td>
    </tr>
    <tr>
        <td width="10%" class="tableleft">证件类型</td>
        <td><select name="certificate_type"><option value="0">身份证</option><option value="1"> 护照</option><option value="2">军人证</option></select></td>
    </tr>
    <tr>
        <td width="10%" class="tableleft">证件号</td>
        <td><input type="text" name="ID_num" value=""/></td>
    </tr>
    <tr>
        <td width="10%" class="tableleft">社保号</td>
        <td><input type="text" name="social_safe_num" value=""/></td>
    </tr>
    <tr>
        <td width="10%" class="tableleft">挂号费</td>
        <td><input type="text" name="noted" value=""/>元</td>
    </tr>
    <tr>
        <td width="10%" class="tableleft">联系电话</td>
        <td><input type="text" name="phone" value=""/></td>
    </tr>
    <tr>
        <td width="10%" class="tableleft">是否自费</td>
        <td><input type="radio" name="self_paying" value="" checked/>否&nbsp;&nbsp;&nbsp;<input type="radio" name="pname0" value=""/>是</td>
    </tr>
    <tr>
        <td width="10%" class="tableleft">性别</td>
        <td><input type="radio" name="sex" value="" checked/>男&nbsp;&nbsp;&nbsp;<input type="radio" name="pname" value=""/>女</td>
    </tr>
    <tr>
        <td width="10%" class="tableleft">年龄</td>
        <td><input type="text" name="age" value=""/></td>
    </tr>
    <tr>
        <td width="10%" class="tableleft">职业</td>
        <td><input type="text" name="career" value=""/></td>
    </tr>
    <tr>
        <td width="10%" class="tableleft">初复诊</td>
        <td><input type="radio" name="" value="" checked/>初诊&nbsp;&nbsp;&nbsp;<input type="radio" name="" value=""/>复诊</td>
    </tr>
    <tr>
        <td width="10%" class="tableleft">所挂科室</td>
        <td><select name="section_id"><option value="4">急诊科</option><option value="2">骨科</option><option value="1">血液科</option></select></td>
    </tr>
    <tr>
        <td width="10%" class="tableleft">指定医生</td>
        <td><select name="doctor_id"><option value="1">华佗</option><option value="2">扁鹊</option><option value="3">李时珍</option></select></td>
    </tr>
	<tr>
        <td width="10%" class="tableleft">备注</td>
       <td><input type="text" name="status" value=""/></td>
        
	</tr>
    <tr>
        <td colspan="2">
			<center>
				<button type="submit" class="btn btn-primary" type="button">保存</button> &nbsp;&nbsp;<button type="button" class="btn btn-success" name="backid" id="backid">返回列表</button>
			</center>
		</td>
    </tr>
</table>
</form>
                                                                                            
</body>
</html>
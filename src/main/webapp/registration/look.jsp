<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <title>查看-- -2015</title>
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
<form action="index.jsp" method="post" class="definewidth m20">
<table class="table table-bordered table-hover definewidth m10">
    <tr>
        <td width="10%" class="tableleft">姓名</td>
        <td>${ud.name }</td>
    </tr>
    <tr>
        <td width="10%" class="tableleft">证件类型</td>
        <td>${ud.certificate_type }</td>
    </tr>
    <tr>
        <td width="10%" class="tableleft">证件号</td>
        <td>${ud.ID_num }</td>
    </tr>
    <tr>
        <td width="10%" class="tableleft">挂号费</td>
        <td>${ud.noted }</td>
    </tr>
    <tr>
        <td width="10%" class="tableleft">社保号</td>
        <td>${ud.social_safe_num }</td>
    </tr>
    <tr>
        <td width="10%" class="tableleft">联系电话</td>
        <td>${ud.phone}</td>
    </tr>
    <tr>
        <td width="10%" class="tableleft">是否自费</td>
        <td>${ud.self_paying }</td>
    </tr>
    <tr>
        <td width="10%" class="tableleft">性别</td>
        <td>${ud. sex}</td>
    </tr>
    <tr>
        <td width="10%" class="tableleft">年龄</td>
        <td>${ud.age }</td>
    </tr>
    <tr>
        <td width="10%" class="tableleft">职业</td>
        <td>${ud.career }</td>
    </tr>
    <tr>
        <td width="10%" class="tableleft">初复诊</td>
        <td>${ud. early_appointment}</td>
    </tr>
    <tr>
        <td width="10%" class="tableleft">所挂科室</td>
        <td>${ud.section }</td>
    </tr>
    <tr>
        <td width="10%" class="tableleft">指定医生</td>
        <td>${ud.doctor }</td>
    </tr>
	<tr>
        <td width="10%" class="tableleft">备注</td>
        <td>${ud. status}</td>
	</tr>
    <tr>
        <td colspan="2">
			<center>
				<button type="button" class="btn btn-success" name="backid" id="backid">
				
				返回列表</button>
			</center>
		</td>
    </tr>
</table>
</form>
                                                                                            
</body>
</html>
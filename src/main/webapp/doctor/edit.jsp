<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <title>修改医生---2015</title>
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
				window.location.href="${pageContext.request.contextPath }/list_doctor.do";
		 });
    });
    </script>
</head>
<body>
<form action="${pageContext.request.contextPath }/editt_doctor.do" method="post" class="definewidth m20">
<table class="table table-bordered table-hover definewidth m10">
    <tr>
        <td width="10%" class="tableleft">姓名</td>
        <td><input type="text" name="name" value="${u.name }"/>
        <input type="hidden" name="id" value="${u.id }">
        </td>
    </tr>
    <tr>
        <td width="10%" class="tableleft">证件类型</td>
        <td><select name="certificate_type">
        <c:choose>
            <c:when test="${u.certificate_type==1 }">
             身份证
            </c:when>
             <c:when test="${u.certificate_type==3 }">
           护照
            </c:when>
            <c:otherwise>
            军人证
            </c:otherwise>
          </c:choose>
       <option value="1">身份证</option>
        <option value="3">护照</option>
        <option value="2">军人证</option>
        </select></td>
    </tr>
    <tr>
        <td width="10%" class="tableleft">证件号</td>
        <td><input type="text" name="ID_num" value="${u.ID_num }"/></td>
    </tr>
    <tr>
        <td width="10%" class="tableleft">手机</td>
        <td><input type="text" name="phone" value="${u.phone }"/></td>
    </tr>
    <tr>
        <td width="10%" class="tableleft">座机</td>
        <td><input type="text" name="special_plane" value="${u.special_plane }"/></td>
    </tr>
    <tr>
        <td width="10%" class="tableleft">性别</td>
        <td><input type="radio" name="sex" value="${u.sex }" checked/>男&nbsp;&nbsp;&nbsp;
        <input type="radio" name="sex" value="${u.sex }"/>女</td>
    </tr>
    <tr>
        <td width="10%" class="tableleft">出生年月</td>
        <td><input type="text" name="birther" value="${u.birther}" ></td>
    </tr>
    <tr>
        <td width="10%" class="tableleft">年龄</td>
        <td><input type="text" name="age" value="${u.age }"></td>
    </tr>
    <tr>
        <td width="10%" class="tableleft">电子邮箱</td>
        <td><input type="text" name="email" value="${u.email }"/></td>
    </tr>
    <tr>
        <td width="10%" class="tableleft">所属科室</td>
        <td><select name="section_id">
        <c:choose>
        	<c:when test="${u.section_id==3 }">
            外科
            </c:when>
        	<c:when test="${u.section_id==5 }">
            妇科
            </c:when>
            <c:when test="${u.section_id==4 }">
            急诊科
            </c:when>
             <c:when test="${u.section_id==2 }">
      骨科
            </c:when>
            <c:otherwise>
          血液科
            </c:otherwise>
          </c:choose>
        <option value="3">外科</option>
        <option value="5">妇科</option>
        <option value="4">急诊科</option>
        <option value="2">骨科</option>
        <option value="1">血液科</option>
        </select></td>
    </tr>
    <tr>
        <td width="10%" class="tableleft">学历</td>
        <td>
        <select name="education">
         <c:choose>
            <c:when test="${u.education==5 }">
            专科
            </c:when>
             <c:when test="${u.education==4 }">
           本科
            </c:when>
             <c:when test="${u.education==3 }">
            研究生
            </c:when>
             <c:when test="${u.education==2}">
			博士
            </c:when>
            <c:otherwise>
            博士后
            </c:otherwise>
            </c:choose>
            <option value="2">博士</option>
             <option value="3">研究生</option>
             <option value="5">专科</option>
             <option value="4">本科</option>
              <option value="1">博士后</option>
          
        </select>
        
        
        
       
        </td>
    </tr>
	<tr>
        <td width="10%" class="tableleft">备注</td>
        <td><textarea name="noted">${u.noted }</textarea></td>
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
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
				window.location.href="${pageContext.request.contextPath }/list_drug.do";
		 });
    });
    </script>
</head>
<body>
<form action="medicine/index.jsp" method="post" class="definewidth m20">
<table class="table table-bordered table-hover definewidth m10">
    <tr>
        <td width="10%" class="tableleft">药品编号</td>
        <td>${u.drug_num }</td>
    </tr>
    <tr>
        <td width="10%" class="tableleft">图片</td>
        <td><img src="${pageContext.request.contextPath }${u.drug_url}"/></td>
    </tr>
    <tr>
        <td width="10%" class="tableleft">进价</td>
        <td>${u.purchas_price }</td>
    </tr>
    <tr>
        <td width="10%" class="tableleft">售价</td>
        <td>${u.sale_price }</td>
    </tr>
    <tr>
        <td width="10%" class="tableleft">药品名称</td>
        <td>${u.drug_name }</td>
    </tr>
    <tr>
        <td width="10%" class="tableleft">药品类型</td>
        <td>
        <c:choose>
            <c:when test="${u.drug_type==1 }">
         		   中药
            </c:when>
            <c:when test="${u.drug_type==2 }">
         		   西药
            </c:when>
            <c:when test="${u.drug_type==3 }">
         		   处方
            </c:when>
            <c:when test="${u.drug_type==4 }">
         		   非处方
            </c:when>
            <c:otherwise>
          	不知道啥药
            </c:otherwise>
            </c:choose>
            </td>
    </tr>
    <tr>
        <td width="10%" class="tableleft">简单描述</td>
        <td><c:choose>
            <c:when test="${u.use_infor==1 }">
         		   用于普通感冒
            </c:when>
            <c:when test="${u.use_infor==2 }">
         		   用于发烧
            </c:when>
            <c:when test="${u.use_infor==3 }">
         		   用于癌症
            </c:when>
            <c:when test="${u.use_infor==4 }">
         		   用于脚气
            </c:when>
            <c:otherwise>
          	用于治病
            </c:otherwise>
            </c:choose>        </td>
    </tr>
    <tr>
        <td width="10%" class="tableleft">生产日期</td>
        <td>${u.prodeced_date }</td>
    </tr>
    <tr>
        <td width="10%" class="tableleft">保质期</td>
        <td>${u.expiration_date }</td>
    </tr>
    <tr>
        <td width="10%" class="tableleft">过期日期</td>
        <td>${u.quality_date }</td>
    </tr>
    <tr>
        <td width="10%" class="tableleft">详细描述</td>
        <td>${u.detail }</td>
    </tr>
    <tr>
        <td width="10%" class="tableleft">生产厂商</td>
        <td>${u.manufacture }</td>
    </tr>
    <tr>
        <td width="10%" class="tableleft">服用说明</td>
        <td>${u.use_infor }</td>
    </tr>
    <tr>
        <td width="10%" class="tableleft">库存</td>
        <td>${u.total_stock }</td>
    </tr>
    <tr>
        <td width="10%" class="tableleft">剩余量</td>
        <td>${u.surplus }</td>
    </tr>
	<tr>
        <td width="10%" class="tableleft">备注</td>
        <td>${u.noted }</td>
	</tr>
    <tr>
        <td colspan="2">
			<center>
				<button type="button" class="btn btn-success" name="backid" id="backid">返回列表</button>
			</center>
		</td>
    </tr>
</table>
</form>
                                                                                            
</body>
</html>
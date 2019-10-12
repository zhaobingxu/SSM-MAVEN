<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <title></title>
    <meta charset="UTF-8">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/Css/bootstrap.css" />
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/Css/bootstrap-responsive.css" />
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/Css/style.css" />
    <script type="text/javascript" src="${pageContext.request.contextPath }/Js/jquery.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath }/Js/jquery.sorted.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath }/Js/bootstrap.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath }/Js/ckform.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath }/Js/common.js"></script>

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
</head>
<body>
<form action="index.html" method="post" class="definewidth m20" >
<table class="table table-bordered table-hover definewidth m10">
    <tr>
        <td width="10%" class="tableleft">角色名称</td>
        <td><input type="text" name="title" value="管理员"/></td>
    </tr>
    <tr>
        <td class="tableleft">状态</td>
        <td>
            <input type="radio" name="status" value="1" checked /> 启用
           <input type="radio" name="status" value="0"  /> 禁用
        </td>
    </tr>
    <tr>
        <td class="tableleft">权限</td>
        <td>
		<ul><label class='checkbox inline'><input type='checkbox'  name='group' value='1' />挂号信息管理</label></ul> 
                <ul><label class='checkbox inline'><input type='checkbox'   name='group' value='2' />门诊医生管理</label></ul> 
                <ul><label class='checkbox inline'><input type='checkbox'  name='group' value='3' />药品管理</label></ul> 
                <ul><label class='checkbox inline'><input type='checkbox'   name='group' value='4' />住院办理</label></ul> 
                <ul><label class='checkbox inline'><input type='checkbox'   name='group' value='5' />收费项目登记</label></ul> 
                <ul><label class='checkbox inline'><input type='checkbox'   name='group' value='6' />在院发药</label></ul> 
                <ul><label class='checkbox inline'><input type='checkbox'   name='group' value='7' />住院结算</label></ul> 
                <ul><label class='checkbox inline'><input type='checkbox'   name='group' value='8' />月营业额统计</label></ul> 
                <ul><label class='checkbox inline'><input type='checkbox' name='group' value='9' />年营业额统计</label></ul> 
                <ul><label class='checkbox inline'><input type='checkbox' name='group' value='10' />用户管理</label></ul> 
                <ul><label class='checkbox inline'><input type='checkbox' name='group' value='11' />角色管理</label></ul> 
                <ul><label class='checkbox inline'><input type='checkbox' name='group' value='12' />资源管理</label></ul> 
		</td>
    </tr>
    <tr>
        <td class="tableleft"></td>
        <td>
            <button type="submit" class="btn btn-primary" type="button">更新</button> &nbsp;&nbsp;<button type="button" class="btn btn-success" name="backid" id="backid">返回列表</button>
        </td>
    </tr>
</table>
</form>
                                                                                            
</body>
<script>
 $(function () {
        $(':checkbox[name="group[]"]').click(function () {
            $(':checkbox', $(this).closest('li')).prop('checked', this.checked);
        });

		$('#backid').click(function(){
				window.location.href="${pageContext.request.contextPath }/role_list.do";
		 });

    });
    
    $(function(){
    	    var checkBoxAll =$("input[name^='group']");//获取前缀为checkbox_的所有多选框对象
    	    var checkArray=${list};//获取多选框需要回显得对应的值集合
    	    console.info("checkArray=",checkArray);
    	    for(var i=0;i<checkArray.length;i++){//
    	                       //获取所有复选框对象的value属性，然后，用checkArray[i]和他们匹配，如果有，则说明他应被选中
    	                        $.each(checkBoxAll,function(j,checkbox){
    	                            //获取复选框的value属性
    	                           var checkValue=$(group).val();
    	                            if(checkArray[i]==checkValue){
    	                                $(checkbox).attr("checked",true);
    	                          }
    	                       })
    	                   }
    	    });
</script>
</html>



   
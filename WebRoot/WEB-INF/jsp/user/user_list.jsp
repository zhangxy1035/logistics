<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" 
	prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <title>安康天茂物流--客户</title>
        <link type="text/css" rel="stylesheet" media="all" href="../styles/global.css" />
        <link type="text/css" rel="stylesheet" media="all" href="../styles/global_color.css" />
        <script language="javascript" type="text/javascript">
            //删除用户(user_id)
             function deleteUser(user_id) {
                var r = window.confirm("确定要删除此用户吗？");
                if(r){//确定删除
                window.location="user_delete.from?user_id="+user_id;
                }
              }
        </script> 
    </head>
    <body>
        <!--Logo区域开始-->
        <div id="header">
            <img src="../images/logo.png" alt="logo" class="left"/>
			<span>当前账号：<b></b></span>
            <a href="#">[退出]</a>            
        </div>
        <!--Logo区域结束-->
        <!--导航区域开始-->
  <div id="navi">                        
             <ul id="menu">
                <li><a href="../index/index.jsp" class="index_off"></a></li>
               <li><a href="../customer/customer_list.from" class="customer_off"></a></li>
               <li><a href="../dcc/transfer_list.from" class="dcc_off"></a></li>
               <li><a href="../distribution/order_list.from" class="substation_off"></a></li>
               <li><a href="../storageroom/inout_list.from" class="storageroom_off"></a></li>
               <li><a href="../substation/mission_list.from" class="distribution_off"></a></li>
               <li><a href="../user/user_list.from" class="user_on"></a></li>
               <li><a href="../money/assign_list.from" class="money_off"></a></li>
               <li><a href="../judge/show_list.jsp" class="judge_off"></a></li>
               <li><a href="../DeliveryMap/map.jsp" class="password_off"></a></li>
            </ul>            
        </div>
        <!--导航区域结束-->
        <!--主要区域开始-->
        <div id="main">
            <form action="" method="">
            	<!--查询-->
                <div class="search_add">                        
                    <div>用户名：<input type="text" class="width70 text_search" value="不验证" /></div>
                    <div><input type="button" value="搜索" class="btn_search" /></div>
                    <input type="button" value="增加" class="btn_add" onclick="location.href='toAdd.from';" />
                </div> 
                <!--数据区域：用表格展示数据-->
                <div id="data">            
                    <table id="datalist">
                        <tr>
                            <th>Id</th>
                            <th class="width100">用户名</th>
                            <th>密码</th>
                            <th>电子邮件</th>
                            <th class="width100">权限</th>
                            <th class="width200">操作</th>
                        </tr>                      
                    <c:forEach items="${users}" var="us">
                        <tr>
                            <td>${us.user_id}</td>
                            <td>${us.user_name}</a></td>
                            <td>${us.password}</td>
                            <td>${us.mail}</td>
                            <td>${us.right}</td>
                            <td><input type="button" value="更新" class="btn_modify" onclick="location.href='toUpdate.from?user_id=${us.user_id}';" />
                               <input type="button" value="删除" class="btn_delete" onclick="deleteUser(${us.user_id});" />
                               </td>
                        </tr>
                    </c:forEach>
                    </table>
                </div>
                <!--分页-->
                <div id="pages">
        	       <c:choose>
        	       	<c:when test="${page.page>1}">
        	       	<a href="user_list.from?page=${page.page-1}">上一页</a>
        	       	</c:when>
        	       	<c:otherwise>
        	       	<a>上一页</a>
        	       	</c:otherwise>
        	       </c:choose>
					
				<c:forEach var="i" begin="1" end="${page.totalPage}">
					<c:choose>
						<c:when test="${i==page.page}">
						<a href="user_list.from?page=${i}" class="current_page">${i}</a>
						</c:when>
						<c:otherwise>
						<a href="user_list.from?page=${i}">${i}</a>
						</c:otherwise>
					</c:choose>
				</c:forEach>
						
                <c:choose>
                	<c:when test="${page.page<page.totalPage}">
                	<a href="user_list.from?page=${page.page+1}">下一页</a>
                	</c:when>
                	<c:otherwise>
                	<a>下一页</a>
                	</c:otherwise>
                </c:choose>    
                </div>
            </form>
        </div>
        <!--主要区域结束-->
        <div id="footer">
            <p>版权所有(C)安康学院电信系 </p>
        </div>
    </body>
</html>

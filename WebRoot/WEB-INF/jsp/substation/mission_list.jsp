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
            //删除客户(customer_id)
             function deleteCustomer(customer_id) {
                var r = window.confirm("确定要删除此用户吗？");
                if(r){//确定删除
                window.location="customer_delete.from?customer_id="+customer_id;
                }
              }
        </script> 
    </head>
    <body>
        <!--Logo区域开始-->
        <div id="header">
            <img src="../images/logo.png" alt="logo" class="left"/>
			<span>当前账号：<b>scott</b></span>
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
               <li><a href="../substation/mission_list.from" class="distribution_on"></a></li>
               <li><a href="../user/user_list.from" class="user_off"></a></li>
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
                    <div>ID：<input type="text" value="不验证" class="text_search" /></div>                            
                    <div>客户：<input type="text" class="width70 text_search" value="不验证" /></div>
                    <div><input type="button" value="搜索" class="btn_search" /></div>
                    <input type="button" value="增加" class="btn_add" onclick="location.href='toAdd.from';" />
                </div> 
                <!--数据区域：用表格展示数据-->
                <div id="data">            
                    <table id="datalist">
                        <tr>
                            <th>任务单编号</th>
                            <th>订单号</th>
                            <th>客户编号</th>
                            <th>库房编号</th>
                            <th>分站名</th>
                            <th>领货人</th>
                            <th>领货日期</th>
                            <th>任务单状态</th>
                            <th>任务单下发日期</th>
                            <th>任务单类型</th>
                            <th class="width200">操作</th>
                        </tr>                      
                    <c:forEach items="${missions}" var="mis">
                        <tr>
                            <td>${mis.mission_id}</td>
                            <td>${mis.order_id}</a></td>
                            <td>${mis.customer_id}</td>
                            <td>${mis.warehouse_id}</td>
                            <td>${mis.substation_name}</td>
                            <td>${mis.takeout_name}</td>
                            <td>${mis.takeout_date}</td>
                            <td>${mis.mission_status}</td>
                            <td>${mis.mission_date}</td>
                            <td>${mis.mission_type}</td>
                            <td><input type="button" value="更新" class="btn_modify" onclick="location.href='toUpdate.from?mission_id=${mis.mission_id}';" />
                        </tr>
                    </c:forEach>
                    </table>
                </div>
                <!--分页-->
                <div id="pages">
        	       <c:choose>
        	       	<c:when test="${page.page>1}">
        	       	<a href="fee_list.from?page=${page.page-1}">上一页</a>
        	       	</c:when>
        	       	<c:otherwise>
        	       	<a>上一页</a>
        	       	</c:otherwise>
        	       </c:choose>
					
				<c:forEach var="i" begin="1" end="${page.totalPage}">
					<c:choose>
						<c:when test="${i==page.page}">
						<a href="fee_list.from?page=${i}" class="current_page">${i}</a>
						</c:when>
						<c:otherwise>
						<a href="fee_list.from?page=${i}">${i}</a>
						</c:otherwise>
					</c:choose>
				</c:forEach>
						
                <c:choose>
                	<c:when test="${page.page<page.totalPage}">
                	<a href="fee_list.from?page=${page.page+1}">下一页</a>
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

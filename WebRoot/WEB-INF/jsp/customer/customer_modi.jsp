<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <title>安康天茂物流</title>
        <link type="text/css" rel="stylesheet" media="all" href="../styles/global.css" />
        <link type="text/css" rel="stylesheet" media="all" href="../styles/global_color.css" />
        <script language="javascript" type="text/javascript">
            //保存结果的提示
            function showResult() {
                showResultDiv(true);
                window.setTimeout("showResultDiv(false);", 3000);
            }
            function showResultDiv(flag) {
                var divResult = document.getElementById("save_result_info");
                if (flag)
                    divResult.style.display = "block";
                else
                    divResult.style.display = "none";
            }
        </script>
    </head>
    <body>
        <!--Logo区域开始-->
        <div id="header">
            <img src="../images/logo.png" alt="logo" class="left"/>
            <a href="#">[退出]</a>            
        </div>
        <!--Logo区域结束-->
        <!--导航区域开始-->
        <div id="navi">                        
            <ul id="menu">
                <li><a href="../index/index.jsp" class="index_off"></a></li>
               <li><a href="../customer/customer_list.from" class="customer_on"></a></li>
               <li><a href="../dcc/transfer_list.from" class="dcc_off"></a></li>
               <li><a href="../distribution/order_list.from" class="substation_off"></a></li>
               <li><a href="../storageroom/inout_list.from" class="storageroom_off"></a></li>
               <li><a href="../substation/mission_list.from" class="distribution_off"></a></li>
               <li><a href="../user/user_list.from" class="user_off"></a></li>
               <li><a href="../money/assign_list.from" class="money_off"></a></li>
               <li><a href="../judge/show_list.jsp" class="judge_off"></a></li>
               <li><a href="../DeliveryMap/map.jsp" class="password_off"></a></li>
            </ul>            
        </div>
        <!--导航区域结束-->
        <!--主要区域开始-->
        <div id="main">            
            <div id="save_result_info" class="save_success">保存成功！</div>
           <!-- commandName指定表单显示的是Model中的哪个对象 -->
            <form:form action="updateCustomer.from" method="post" commandName="customer" modelAttribute="customer" cssClass="main_form">
            
            	<div class="text_info clearfix">
                <span>ID：</span></div>
                <div class="input_info">
                    <form:input path="customer_id" cssClass="width300" readonly="true"/>
                </div>
                <div class="text_info clearfix">
                <span>客户姓名：</span></div>
                <div class="input_info">
                    <form:input path="customer_name" cssClass="width300" />
                    <span class="required">*</span>
                    <div class="validate_msg_short" id="customer_name_error"></div>
                </div>
                <div class="text_info clearfix">
                <span>身份证号码：</span></div>
                <div class="input_info">
                    <form:input path="identity_no" cssClass="width300" />
                    <span class="required">*</span>
                    <div class="validate_msg_short" id="identity_no_error"></div>
                </div>
                <div class="text_info clearfix">
                <span>工作单位：</span></div>
                <div class="input_info">
                     <form:input path="job_add" cssClass="width300" />
                </div>
                <div class="text_info clearfix">
                <span>座机：</span></div>
                <div class="input_info">
                    <form:input path="tel" cssClass="width300" />
                </div>
                 <div class="text_info clearfix">
                <span>移动电话：</span></div>
                <div class="input_info">
                    <form:input path="cellphone" cssClass="width300" />
                    <span class="required">*</span>
                    <div class="validate_msg_short" id="cellphone_error"></div>
                </div>
                <div class="text_info clearfix">
                <span>联系地址：</span></div>
                <div class="input_info">
                    <form:input path="adds" cssClass="width300" />
                    <span class="required">*</span>
                    <div class="validate_msg_short" id="adds_error"></div>
                </div>
                <div class="text_info clearfix">
                <span>电子邮件：</span></div>
                <div class="input_info">
                    <form:input path="mail" cssClass="width300" />
                </div>
                <div class="text_info clearfix">
                <span>邮编：</span></div>
                <div class="input_info">
                    <form:input path="post" cssClass="width300" />
                </div>
                <div class="button_info clearfix">
                    <input type="submit" value="保存" class="btn_save"/>
                    <input type="button" value="取消" class="btn_save" onclick="history.go(-1);" />
                </div>
            </form:form>
        </div>
        <!--主要区域结束-->
        <div id="footer">
            <span>版权所有(C)安康学院</span>
        </div>
    </body>
</html>

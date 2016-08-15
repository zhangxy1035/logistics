<%@ page language="java" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <title>增加用户</title>
        <link type="text/css" rel="stylesheet" media="all" href="../styles/global.css" />
        <link type="text/css" rel="stylesheet" media="all" href="../styles/global_color.css" />
        <script type="text/javascript" src="../js/jquery-1.11.1.js"></script>
        <script language="javascript" type="text/javascript">
           //检测所输入的信息是否为合法字符，是否合法
            /*var customer_name_flag=false;
            var identity_no_flag = false;
            var cellphone_flag=false;
            var adds_flag=false;
            var mail_flag=false;
            //检查用户名是否为空
            function checkCustomer_name(){
                customer_name_flag = false;
            	var v_customer_name = $("#customer_name").val();
            	if(v_customer_name == ""){
            		$("#customer_name_error").html("客户名不能为空");
            		$("#customer_name_error").addClass("error_msg");
            		return false;//此处将false作为doSubmit函数返回值
            	}
            	$.ajax({
				   type: "POST",
				   async: false,
				   url: "checkCustomer_name.from",
				   data: {"customer_name":v_customer_name},
				   success: function(ok){
				     if(ok){
				     	$("#customer_name_error").html("客户不存在，可以进行创建");
				     	$("#customer_name_error").removeClass("error_msg");
				     	name_flag = true;//允许提交
				     }else{
	            		$("#customer_name_error").html("客户已被创建");
	            		$("#customer_name_error").addClass("error_msg");
	            		customer_name_flag = false;
	            		//注意:此处用return false只是退出当前回调函数,
				     	//没有将false作为doSubmit函数的返回值,
				     	//因此不能阻止表单提交
				     }
				   }
				});
            	return customer_name_flag;
            }
            //检查移动电话是否为空
            function checkIdentity_no(){
            	identity_no_flag=false;
            	var v_identity_no = $("#identity_no").val();
            	if(v_identity_no==""){
            		$("#identity_no").html("身份证号码不能为空");
            		$("#identity_no").addClass("error_msg");
            		return false;
            	}
            	return identity_no_flag;
            }
            function checkCellphone(){
            	cellphone_flag=false;
            	var v_cellphone = $("#cellphone").val();
            	if(v_cellphone==""){
            		$("#cellphone_error").html("移动电话不能为空");
            		$("#cellphone_error").addClass("error_msg");
            		return false;
            	}
            	return cellphone_flag;
            }
            function checkAdds(){
            	adds_flag=false;
            	var v_adds = $("#adds").val();
            	if(v_adds==""){
            		$("#adds_error").html("联系地址不能为空");
            		$("#adds_error").addClass("error_msg");
            		return false;
            	}
            	return adds_flag;
            	
            }
            function checkMail(){
	    		var re = /^(\w-*\.*)+@(\w-?)+(\.\w{2,})+$/;
    			if(re.test(str)){
        			alert("正确");
    			}else{
        			alert("错误");
    				}
			}
            
            
            function doSubmit(){
            	adds_flag=checkAdds();//检查地址
            	cellphone_flag=checkCellphone();//检查移动电话
            	identity_no_flag=checkIdentity_no();//检查身份证号码
            	customer_name_flag=checkCustomer_name();//检查用户名
            	
				var form_flag =adds_flag&&cellphone_flag&& identity_no_flag&&customer_name_flag;
				return form_flag;
            	//return false;//阻止提交
            	//return true;//允许提交
            }*/
            
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
            <div id="save_result_info" class="save_fail">出错了，保存失败</div>
            <form action="addCustomer.from" onsubmit="return doSubmit();" method="post" class="main_form">
                <div class="text_info clearfix">
                <span>用户名：</span></div>
                <div class="input_info">
                    <input type="text" class="width300" name="user_name" id="user_name"/>
                    <span class="required">*</span>
                    <div class="validate_msg_short" id="user_name_error"></div>
                </div>
                <div class="text_info clearfix">
                <span>密码：</span></div>
                <div class="input_info">
                    <input type="text" class="width300" name="password" id="password"/>
                    <span class="required">*</span>
                    <div class="validate_msg_short" id="password_no_error"></div>
                </div>
                <div class="text_info clearfix">
                <span>电子邮件：</span></div>
                <div class="input_info">
                    <input type="text" class="width300" name="mail" id="mail"/>
                </div>
                <div class="text_info clearfix">
                 <span>权限：</span></div>
                <div class="input_info">
                    <input type="text" class="width300" name="right" id="right"/>
                </div>
                <div class="button_info clearfix">
                    <input type="submit" value="保存" class="btn_save"/>
                    <input type="button" value="取消" class="btn_save" />
                </div>
            </form>  
        </div>
        <!--主要区域结束-->
        <div id="footer">
            <span>版权所有(C)安康学院 </span>
        </div>
    </body>
</html>

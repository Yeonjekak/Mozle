<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:import url="../common/header.jsp" />
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>로그인</title>
</head>
<body>
<div class="clearbox">
      <div style="width:1260px; margin:auto;" id="main_width">
         <div style=";"><script type='text/javascript'>var fbv='2.7';</script><script type='text/javascript' src='../app/javascript/js/facebook0dfd.js?v=20150501' charset='utf8'></script>

<table width="100%" border="0" cellpadding="0" cellspacing="0">
<tr>
   <td height="30"></td>
</tr>
<tr>
   <td width="40"></td>
   <td>
   <!-- 타이틀 -->
         <table width="100%" border="0" cellpadding="0" cellspacing="0">
         <tr><td><img src="/mozle/resources/mozle_data/data/skin/0727zerom/images/design/tit_login.gif" title="" alt="" /></td></tr>
         <tr><td height="10"></td></tr>
         <tr><td><span class="desc">회원 로그인을 하시면 각종 혜택 및 정보를 제공 받으실 수 있습니다.</span></td></tr>
         </table>


         <div align="center" style="padding:10px 0 50px 0;"></div>

         <!-- 로그인 폼 -->
         <form name="loginForm" target="actionFrame" method="post" action="https://ssl.gabiafreemall.com/RSA/ssl/setRSAReturnPost/aHR0cDovL2Vjby1zdG9yeS5jby5rci9tZW1iZXIvLi4vbG9naW5fcHJvY2Vzcy9sb2dpbg==">
         <input type="hidden" name="return_url" value="/main/index"/>
         <input type="hidden" name="order_auth" value="0"/>

         <div style="width:650px; margin:auto; border-top:3px solid #d8d8d8;border-bottom:2px solid #d8d8d8; padding:30px 0px 20px 0px">

         <!-- //일반적인 로그인 폼 :: 쇼핑몰ID만 이용할 경우 시작. //-->
            <table align="center" border="0" cellpadding="0" cellspacing="0">
            <tr>
               <td>
                  <table align="center" border="0" cellpadding="0" cellspacing="0">
                  <tr>
                     <td align="right" class="small bold">아이디</td>
                     <td width="10"></td>
                     <td><input type="text" name="m_id" id="m_id" value="" title="아이디" style="width:150px; height:25px; line-height:25px; padding-left:5px;"  tabindex="1"/></td>
                  </tr>
                  <tr><td height="2" colspan="3" ></td></tr>
                  <tr>
                     <td align="right" class="small bold">비밀번호</td>
                     <td></td>
                     <td><input type="password" password="m_pwd" name="m_pwd" id="m_pwd"  title="비밀번호"  value="" style="width:150px; height:25px; line-height:25px; padding-left:5px;"  tabindex="2"/></td>
                  </tr>
                  <tr>
                     <td></td>
                     <td></td>
                     <td height="30"  align="left">
                        <input type="checkbox" name="idsave" id="idsave" value="checked"   /><label for="idsave"> <span class="desc">아이디 저장</span></label> | 
                        <span class="desc hand" onclick="location.href='memberJoin.do'">회원가입</span> | 
                        <span class="desc hand" onclick="location.href='find.html'">아이디 / 비밀번호 찾기</span>
                     </td>
                  </tr>
                  </table>
               </td>
               <td width="10"></td>
                    <td align="right" valign="top"><img src="/mozle/resources/mozle_data/data/skin/0727zerom/images/buttons/btn_login.gif" onclick="location.href='login.do'"/></td>
            </tr>
            </table>
         <!-- //일반적인 로그인 폼 :: 쇼핑몰ID만 이용할 경우 끝 -->

         <!-- //SNS 가입폼 : SNS이용할 경우 시작 -->
            <style>
               .snsjoin { width:100%;text-align:center; margin-top:20px;padding-top:17px;border-top:2px dashed #d1d1d1;*zoom:1;}
               .snsjoin ul.sns_list {min-width:202px;min-height:40px;text-align:center;margin:0px;padding:0px;}
               .snsjoin ul.sns_list li{display:inline-block;text-align:left;padding:0px;margin:3px 1px 0 2px;width:202px;height:40px;}
            </style>
            <div class="snsjoin">
               <ul class="sns_list">
<li> <img src="/mozle/resources/mozle_data/data/skin/0727zerom/images/sns/sns_bt_facebook_login.gif" class="sns-login-button hand" snstype="facebook"  alt="페이스북" title="페이스북 아이디로 로그인" /></li><li> <img src="/mozle/resources/mozle_data/data/skin/0727zerom/images/sns/sns_bt_twitter_login.gif" class="sns-login-button hand" snstype="twitter"  alt="트위터" title="트위터 아이디로 로그인" /></li><li> <img src="/mozle/resources/mozle_data/data/skin/0727zerom/images/sns/sns_bt_naver_login.gif" class="sns-login-button hand" snstype="naver"  alt="네이버" title="네이버 아이디로 로그인" /></li>               </ul>
            </div>
         <!-- //SNS 가입폼 : SNS이용할 경우 끝 -->

         </div>
         </form>
               <!-- 본문내용 끝 -->
   </td>	
   <td width="40"></td>
</tr>
</table>
</div>
</div></div>
<c:import url="../common/footer.jsp" />
</body>
</html>
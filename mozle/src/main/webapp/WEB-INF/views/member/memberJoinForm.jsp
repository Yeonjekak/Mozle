<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:import url="../common/header.jsp" />
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script src="https://ssl.daumcdn.net/dmaps/map_js_init/postcode.v2.js"></script>
<title>회원가입</title>
<style>

	#btn_ok{
		cursor: pointer;
	}
</style>
</head>
<body>

<table width="100%" border="0" cellpadding="0" cellspacing="0">
<tr>
	<td height="30"></td>
</tr>
<tr>
	<td width="40"></td>
	<td>
		<!-- 본문내용 시작 -->

<form name="joinForm" id="joinForm" method="post" action="insertMember.do" >
	<input type="hidden" name="mtype" value="member"/>

			<!-- 타이틀 -->
			<table width="100%" border="0" cellpadding="0" cellspacing="0">
			<tr><td><img src="/mozle/resources/mozle_data/data/skin/0727zerom/images/design/tit_join.gif" /></td></tr>
			<tr><td height="10"></td></tr>
			<tr><td><span class="desc">회원이 되셔서 회원등급할인/할인쿠폰/적립금 등 다양한 서비스를 받으세요.</span></td></tr>
			</table>

			<div style="height:40px"></div>

			<!-- 가입폼 -->
			<table width="100%" border="0" cellpadding="0" cellspacing="0">
				<tr>
					<td>
						<table border="0" cellpadding="0" cellspacing="0">
						<tr>
							<td valign="top" align="left" height="15"><img src="/mozle/resources/mozle_data/data/skin/0727zerom/images/design/join_stit_inputmem.gif" /></td>
							<td width="8"></td>
							<td valign="bottom" align="right"><span class="desc">회원 가입 시 필요한 정보들을 입력하세요.</span></td>
						</tr>
						</table>
					</td>
				</tr>
				<tr><td height="6"></td></tr>
				<tr><td height="2" bgcolor="545454"></td></tr>
				<tr><td height="25"></td></tr>
				<tr>
					<td>


<table width="100%" border="0" cellpadding="0" cellspacing="0">
<colgroup>
	<col width="100" />
	<col width="30" />
	<col />
</colgroup>


	<tr>
		<td align="right" class="small"><span class="join_required"></span> 이름</td>
		<td></td>
		<td><input type="text" name="user_name" value="" size="15" /></td>
	</tr>
	<tr><td height="14"></td></tr>

	<tr>
		<td align="right" class="small"><span class="join_required"></span> 아이디</td>
		<td></td>
		<td>
			<input type="text" name="userid" id="userid" value="" size="15" onkeypress="filterKey(event);" style="ime-mode:disabled" onpaste="javascript:return false;" /> <!--img src="/data/skin/0727zerom/images/design/btn_overlap_id.gif" class="hand" /--> <span class="desc">공백 없는 영문, 숫자 포함 6-20자</span>
			<span id="id_info" class="small" style="padding-top:5px;color:#d13b00;"></span>
		</td>
	</tr>
	<tr><td height="14"></td></tr>

	<tr>
		<td align="right" class="small"><span class="join_required"></span> 비밀번호</td>
		<td></td>
		<td><input type="password" name="password" value="" size="15" style="ime-mode:disabled;"/> <span class="desc">공백 없는 영문, 숫자 포함 6-20자 <!--(아이디와 4자 이상 중복 불가)--></span></td>
	</tr>
	<tr><td height="14"></td></tr>
	<tr>
		<td align="right" class="small"><span class="join_required"></span> 비밀번호확인</td>
		<td></td>
		<td><input type="password" name="re_password" value="" size="15" style="ime-mode:disabled;"/> <span class="desc">비밀번호 확인을 위해 한번 더 입력하세요</span></td>
	</tr>
	<tr><td height="14"></td></tr>

<tr>
	<td align="right" class="small"><span class="join_required"></span> 생년월일</td>
	<td></td>
	<td><input type="date" name="birthday" value=""   maxlength="10" size="15"/></td>
	
</tr>
<tr><td height="14"></td></tr>


<tr>
	<td align="right" class="small"><span class="join_required"></span> 성별</td>
	<td></td>
	<td>
		<label><input type="radio" name="sex" value="male"  /> 남자</label>
		<label><input type="radio" name="sex" value="female"    /> 여자</label>
	</td>
</tr>
<tr><td height="14"></td></tr>

<tr>
	<td align="right" class="small"><span class="join_required"></span> 이메일</td>
	<td></td>
	<td><input type="text" name="email[0]" value="" size="10" /> @ <input type="text" name="email[1]" value="" size="10" />
	<select name="find_email" id="find_email">
		<option value="">직접선택</option>
		<option value="naver.com">naver.com</option>
		<option value="nate.com">nate.com</option>
		<option value="dreamwiz.com">dreamwiz.com</option>
		<option value="yahoo.co.kr">yahoo.co.kr</option>
		<option value="empal.com">empal.com</option>
		<option value="unitel.co.kr">unitel.co.kr</option>
		<option value="gmail.com">gmail.com</option>
		<option value="korea.com">korea.com</option>
		<option value="chol.com">chol.com</option>
		<option value="paran.com">paran.com</option>
		<option value="freechal.com">freechal.com</option>
		<option value="hanmail.net">hanmail.net</option>
		<option value="hotmail.com">hotmail.com</option>
	</select> &nbsp;<label class="small"><input type="checkbox" name="mailing" value="Y" /> 정보메일을 수신하겠습니다.</label></td>
</tr>
<tr><td height="10"></td></tr>
<tr>
	<td align="right" class="small"></td>
	<td></td>
	<td><span class="desc">이메일 수신에 동의하시면 여러가지 할인혜택과 각종 이벤트 정보를 받아보실 수 있습니다.<br />회원가입관련, 주문배송관련 등의 메일은 수신동의와 상관없이 모든 회원에게 발송됩니다.</span></td>
</tr>
<tr><td height="14"></td></tr>
<tr>
	<td align="right" class="small"><span class="join_required"></span> 휴대폰번호</td>
	<td></td>
	<td>
		<input type="text" name="cellphone[]" value="" size="6"  maxlength="4"/> - <input type="text" name="cellphone[]" value="" size="6"  maxlength="4"/> - <input type="text" name="cellphone[]" value="" size="6"  maxlength="4"/>
		&nbsp;<label class="small"><input type="checkbox" name="sms" value="Y" /> SMS를 수신하겠습니다.</label>
	</td>
</tr>
<tr><td height="10"></td></tr>
<tr>
	<td align="right" class="small"></td>
	<td></td>
	<td><span class="desc">SMS 수신에 동의하시면 여러가지 할인혜택과 각종 이벤트 정보를 받아보실 수 있습니다.<br />회원가입관련, 주문배송관련 등의 SMS는 수신동의와 상관없이 구매 회원에게 발송됩니다.</span></td>
</tr>
<tr><td height="14"></td></tr>

<tr>
	<td align="right" class="small"><span class="join_required"></span> 주소</td>
	<td></td>
	<td><input type="text" id="new_zipcode" value="" size="7" readonly/> <a href="javascript:;" onclick="openAddressPopup();"><img src="/mozle/resources/mozle_data/data/skin/0727zerom/images/common/ad_number_bt.gif" /></a></td>
</tr>
<tr><td height="4"></td></tr>
<tr>
	<td align="right" class="small"></td>
	<td></td>
	<td><input type="hidden" name="address_type" value=""/>
	<input type="text" id="address" value="" class="address " size="35" readonly/> 
	<input type="text" class="address_street hide" name="address_street" value="" size="35" readonly/> 
	<input type="text" id="address_detail" value="" size="35" />
	<div id="address_view" style="display:none; padding-top:5px;"></div>
	</td>
</tr>
<tr><td height="14"></td></tr>



</table>
<script>

function memberJoin(){
	$("#joinForm").submit();
}


$(function(){
	$(".selectLabelSet").each(function(){
		var selectLabelSetObj = $(this);
		$("select.selectLabelDepth1",selectLabelSetObj).bind('change',function(){
			var childs = $("option:selected",this).attr('childs').split(';');
			var joinform_seq = $(this).attr('joinform_seq');
			var select2 = $("input.hiddenLabelDepth[type='hidden'][joinform_seq='"+joinform_seq+"']").val();
			if(childs[0]){
				$(".selectsubDepth",selectLabelSetObj).show();
				$("select.selectLabelDepth2[joinform_seq='"+joinform_seq+"']").empty();
				for(var i=0; i< childs.length ; i++){
					$("select.selectLabelDepth2[joinform_seq='"+joinform_seq+"']")
					.append("<option value='"+childs[i]+"'>"+childs[i]+"</option>");
				}
			}else{
				$(".selectsubDepth",selectLabelSetObj).hide();
			}


			$("select.selectLabelDepth2 option[value='"+select2+"']").attr('selected',true);

		}).trigger('change');
	});

});

</script>
<script type="text/javascript">
$(document).ready(function() {

	$("input[name='userid']").blur(function() {
		if($(this).val()){
			$.post("../member_process/id_chk", { userid : $(this).val() }, function(response){
				//debug(response);
				var text = response.return_result;
				var userid = response.userid;
				$("#id_info").html(text);
				$("input[name='userid']").val(userid);
			},'json');
		}
    });


	$('#find_email').change(function() {
		$("input[name='email[1]']").val($(this).val());
		if(!$(this).val()){
			$("input[name='email[1]']").attr("readonly",false);
		}else{
			$("input[name='email[1]']").attr("readonly",true);
		}
	});

});

function filterKey(e) { 
	var keycode;
	var prevent = null; 
	var filter = "[0-9a-z]";
	if(filter){
		// for something else IE
		if (e != null) {
			keycode = e.which;
			prevent = function() {
				e.which = 0;
				e.preventDefault();
			};
		}
		// for IE
		else {
			keycode = window.event.keyCode;
			prevent = function() {
				window.event.keyCode = 0;
				window.event.returnValue = false;
			};
		}

		// fromCharCode : 매개 변수에서 ASCII 값이 나타내는 문자들로 구성된 문자열을 반환합니다
		var sKey = String.fromCharCode(keycode);
		// RegExp
		// 정규표현을 취급하는 객체로 new를 사용하지 않고 정규표현 문자열을 변수에 대입하는 것으로도 동일한 결과
		var re = new RegExp(filter);
		// test() : 일치하는 문자열이 있는 경우 true, 없으면 false
		if(!re.test(sKey)) { 
			prevent();
		}
	}
}

//회원가입버튼 클릭시 버튼 숨기기
/* function registAct(){
	parent.document.getElementById('btn_register').style.display='none';
} */

function openAddressPopup(){
	new daum.Postcode({
        oncomplete: function(data) {
            // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

            // 각 주소의 노출 규칙에 따라 주소를 조합한다.
            // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
            var fullAddr = ''; // 최종 주소 변수
            var extraAddr = ''; // 조합형 주소 변수

            // 사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
            if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
                fullAddr = data.roadAddress;

            } else { // 사용자가 지번 주소를 선택했을 경우(J)
                fullAddr = data.jibunAddress;
            }

            // 사용자가 선택한 주소가 도로명 타입일때 조합한다.
            if(data.userSelectedType === 'R'){
                //법정동명이 있을 경우 추가한다.
                if(data.bname !== ''){
                    extraAddr += data.bname;
                }
                // 건물명이 있을 경우 추가한다.
                if(data.buildingName !== ''){
                    extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                }
                // 조합형주소의 유무에 따라 양쪽에 괄호를 추가하여 최종 주소를 만든다.
                fullAddr += (extraAddr !== '' ? ' ('+ extraAddr +')' : '');
            }

            // 우편번호와 주소 정보를 해당 필드에 넣는다.
            //data.zonecode; //5자리 새우편번호 사용
            $("#new_zipcode").val(data.zonecode);
            $("#address").val(fullAddr);

            // 커서를 상세주소 필드로 이동한다.
            $("#address_detail").focus();
        }
    }).open();
}

</script>

					</td>
				</tr>
				<tr><td height="40"></td></tr>
				<tr><td height="1" bgcolor="cbcbcb"></td></tr>
				<tr><td height="70"></td></tr>
				<tr>
					<td align="center">
						<div id="btn_register"><img src="/mozle/resources/mozle_data/data/skin/0727zerom/images/design/btn_ok.gif" onclick="memberJoin();" id="btn_ok"/>&nbsp;&nbsp;&nbsp;
						<img src="/mozle/resources/mozle_data/data/skin/0727zerom/images/design/btn_cancel.gif" class="hand" onclick="history.back();"/>
						</div>
					</td>
				</tr>
			</table>
</form>

		<!-- 본문내용 끝 -->
	</td>
	<td width="40"></td>
</tr>
</table>
<br>
<br>
<br><br>
<c:import url="../common/footer.jsp" />
</body>
</html>
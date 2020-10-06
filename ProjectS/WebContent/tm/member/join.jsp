<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <!-- join -->
 <link href="https://fonts.googleapis.com/css?family=Bebas+Neue&display=swap" rel="stylesheet">
 <link rel="stylesheet" href="assets/join.css">
<form action="#" method="POST">
    <div class="join_area">
        <div class="join_agree_area space">
                <div class="join_agree_tit">회원정보입력</div>
        </div>

        <div class="join_mobile_certify">
            <table class="tbl_row tbl_space">
                <colgroup>
                    <col width="128px">
                    <col width="*">
                </colgroup>
                <tbody>
          			<!-- 아이디 -->
                    <tr>
                        <th class="vertical_top">
                            <label for="id_emal" class="tit_style">
                                <span class="underline">아이디</span>
                            </label>
                        </th>
                        <td>
                            <div class="input_txt">
                                <input type="text" id="joinEmail" name="id" class="wd_200" value>
                                <div class="form_notice_area" id="emailUseText"></div>
                            </div>
                        </td>
                    </tr>
                    <!-- 비밀번호 입력 -->
                    <tr>
                        <th class="vertical_top">
                            <label for="joinPwd" class="tit_style">
                                <span class="underline">비밀번호</span>

                            </label>
                        </th>
                        <td>
                            <div class="input_txt">
                                <input type="password" id="joinPwd" name="pw" placeholder="8~12자 이내 영,숫자를 사용하세요"
                                class="wd_200" onblur="pwdChk();" value="">
                            </div>
                            <div class="form_notice_area" id="joinPwdTxt"></div>
                        </td>
                    </tr>

                    <!-- 비밀번호 확인 -->
                    <tr>
                        <th class="vertical_top">
                            <label for="pw_confirm" class="tit_style">
                                <span class="underline">비밀번호 확인</span>
                            </label>
                        </th>
                        <td>
                            <div class="input_txt">
                                <input type="password" class="wd_200" id="reJoinPwd" name="rePwd" onblur="rePwdChk();">
                            </div>
                            <div class="form_notice_area" id="reJoinPwdTxt"></div>
                        </td>
                    </tr>
                    
                    <!-- 이름 입력란 -->
                    <tr>
                        <th>
                            <span class="tit_style">
                                <span class="underline">이름</span>
                            </span>
                        </th>

                        <td>
                            <div class="input_txt">
                                <input type="text" id="nm" name="nm" placeholder="홍길동" class="wd_200"  value="">
                            </div>
                        </td>
                    </tr>
					<!-- 폰번호 -->
                    <tr>
                        <th>
                            <label for="phone_num" class="tit_style">
                                <span class="underline">휴대폰번호</span>
                            </label>
                        </th>
                        <td>
                            <div class="form_layout_style clfix">
                                <ul class="form clfix">
                                    <li style="width: 20%;">
                                        <span class="input_txt">
                                            <input type="text" id="cpNo01" name="cpNon01" numberonly="true" value="" maxlength="3">
                                        </span>
                                    </li>
                                    <li class="etd_child" style="width: 25%;">
                                        <span class="input_txt">
                                            <input type="text" id="cpNo02" name="cpNon02" numberonly="true" value="" maxlength="4">
                                        </span>
                                    </li>
                                    <li class="last_child" style="width: 25%;">
                                        <span class="input_txt">
                                            <input type="text" id="cpNo03" name="cpNon03" numberonly="true" value="" maxlength="4">
                                        </span>
                                    </li>
                                </ul>
                            </div>
                        </td>
                    </tr>
                    <!-- 이메일 -->
                    <tr>
                        <th class="vertical_top">
                            <label for="id_emal" class="tit_style">
                                <span class="underline">아이디</span>
                            </label>
                        </th>
                        <td>
                            <div class="input_txt">
                                <input type="text" id="joinEmail" name="id" class="wd_200" value>
                                <div class="form_notice_area" id="emailUseText"></div>
                            </div>
                        </td>
                    </tr>
                    <!-- 성별 -->
                    <tr>
                        <th>
                            <span class="tit_style">
                                <span class="underline">성별</span>
                            </span>
                        </th>
                        <td>
                            <label><input type="radio" id="sex" name="sex" value="man">남</label>
                            <label><input type="radio" id="sex" name="sex" value="woman">여</label>
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>
        
        <div class="btn_area">
            <a href="#" class="btn_black01" id="saveBtn">회원가입완료</a>
        </div>
    </div>
</form>
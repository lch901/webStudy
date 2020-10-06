<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ page import="beans.DataBean"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>타코야킴에 오신걸 환영합니다 :-)</title>
<link rel="icon" href="images/logo.png">
<script src="https://kit.fontawesome.com/b2b9fa9cfa.js" crossorigin="anonymous?ver=123"></script> 
<link rel="stylesheet" type="text/css" href="css/style.css?ver=122">
<link rel="stylesheet" type="text/css" href="css/order.css?ver=123">
<script src="js/main.js?ver111" defer></script>
</head>
<body>
	<jsp:include page="top.jsp"/>
	    <!-- order list -->
    <div class="orderSection">
        <div class="orderContent">
            <div class="orderWrap">
                <div class="menu_section">
                    <div class="orderTitle">
                        <div class="ordertit">
                            SHOPPING ORDER
                        </div>
                    </div>
                </div>
                <div class="content_section">
                    <div class="content_area">
                        <form action="#" method="POST" name="order" id="order" onsubmit="returncehck(form)">
                            <div class="order_area">
                                <table class="tbl_col02">
                                    <thead>
                                        <tr>
                                            <th scope="col">
                                                <span class="inputCheck">
                                                    <input type="checkbox" id="all_check" name="all_check" value=""> 
                                                </span>
                                                <th scope="col">상품</th>
                                                <th scope="col">가격</th>
                                                <th scope="col">수량</th>
                                                <th scope="col">삭제 / 결제</th>
                                            </th>
                                        </tr>
                                    </thead>
                                    <!-- 제품 주문 선택 영역 -->
                                    <tbody class="bodySection">
                                        <tr id="cart_order">
                                            <td class="tbl_layout">
                                                <div class="tbl_cont01">
                                                    <span class="inputCheck">
                                                        <input type="checkbox" id="chkcart" name="chkcart" value=""> 
                                                    </span>
                                                </div>
                                            </td>
                                            <td class="tbl_layout01 product_in">
                                                <div class="tbl_cont clfix">
                                                    <span class="p_img">
                                                        <a href="#"><img src="images/p1.jpg" alt="이미지" width="78px"></a>
                                                    </span>
                                                    <ul class="p_info">
                                                        <li>타코야킴 가을남자 맨투맨</li>
                                                        <li>Color = Grey</li>
                                                        <li>
                                                            <span class="txt_size">SIZE</span> 
                                                            <span class="input_select">
                                                                <select onchange="javascript:modifySize('',this.value);">
                                                                    <option value="#">S</option>
                                                                    <option value="#">M</option>
                                                                    <option value="#">L</option>
                                                                    <option value="#">XL</option>
                                                                    <option value="#">XXL</option>
                                                                </select>
                                                            </span>
                                                        </li>
                                                    </ul>
                                                </div>
                                            </td>
                                            <td class="tbl_layout02">
                                                <div class="tbl_cont01">
                                                    <span href="#" class="ico_price">69,000원</span>
                                                </div>
                                            </td>
                                            <td class="tbl_layout03">
                                                <div class="tbl_cont01"><input type="number" min="1" max="10"></div>
                                            </td>
                                            <td class="tbl_layout04">
                                                <div class="tbl_cont01">
                                                    <a href="#" title="삭제"><i class="fas fa-trash-alt"></i></a>
                                                    <a href="#" title="결제"><i class="far fa-credit-card"></i></a>
                                                </div>
                                            </td>
                                        </tr>
                                    </tbody>

                              
                                </table>

                                <!-- 최종 주문가격 영역 -->
                                <ul class="cart_order_result clfix">
                                    <li class="result_unit01 clfix">
                                        <dl class="clfix">
                                            <dt>총가격</dt>
                                            <dd id="totalAmt">69,000원</dd>
                                        </dl>
                                    </li>
                                    <li class="result_unit02 clfix">
                                        <dl class="clfix">
                                            <dt>배송비</dt>
                                            <dd id="totalDlvCost">+ 3000원</dd>
                                        </dl>
                                    </li>
                                    <li class="result_unit03 clfix">
                                        <dl class="clfix">
                                            <dt>총 결제 예상금액</dt>
                                            <dd>
                                                <span class="ico_price" id="totalAmt2">72,000원</span>
                                            </dd>
                                        </dl>
                                    </li>
                                </ul>
                                <span class="txt01"><b>※ 10만원 이상 구입 시 배송비가 무료입니다.</b></span>
                                <div class="btn_area clfix">
                                    <div class="btn">
                                        <a href="#" class="btn_black" id="btn_orer">이전페이지</a>
                                    </div>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>

	<jsp:include page="bottom.jsp"/>
</body>
</html>
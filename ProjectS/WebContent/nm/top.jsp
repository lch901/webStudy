<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String type=request.getParameter("type");
	if(type==null){
		type="top";
	}
%>

<div class="clear">
	<div class="sub">
		<div class="sub_menu">
			<ul>
				<li><a href="#">홈</a></li>
				<li><a href="#">PANTS</a></li>
			</ul>
		</div>
	</div>
</div>
<div>
	<div class="clear">
		<div class="main_menu">
			<%if(type!=null){
				out.print("<h2>"+type+"</h2>");
			}%>
			<ul>
				<li><a href="#">수선NO!바지[9부,10부]</a></li>
				<li><a href="#">슬랙스</a></li>
				<li><a href="#">데님팬츠(청바지)</a></li>
				<li><a href="#">코튼팬츠(면바지)</a></li>
				<li><a href="#">밴딩바지</a></li>
				<li><a href="#">=여름바지=</a></li>
			</ul>
		</div>
	</div>
</div>
<div class="contents">
	<section>
		<div>
			<h4>BEST ITEMS</h4>
		</div>
		<div class="items">
			<div class="visual">
				<div class="swiper-container">
					<div class="swiper-wrapper">
						<div class="swiper-slide ss1"></div>
						<div class="swiper-slide ss2"></div>
						<div class="swiper-slide ss3"></div>
						<div class="swiper-slide ss4"></div>
						<div class="swiper-slide ss5"></div>
						<div class="swiper-slide ss6"></div>
					</div>
					<!-- <div class="swiper-pagination"></div> -->
				</div>
			</div>
			<div class="visual">
				<div class="swiper-container">
					<div class="swiper-wrapper">
						<div class="swiper-slide ss2"></div>
						<div class="swiper-slide ss1"></div>
						<div class="swiper-slide ss3"></div>
						<div class="swiper-slide ss4"></div>
						<div class="swiper-slide ss5"></div>
						<div class="swiper-slide ss6"></div>
					</div>
					<!-- <div class="swiper-pagination"></div> -->
				</div>
			</div>
			<div class="visual">
				<div class="swiper-container">
					<div class="swiper-wrapper">
						<div class="swiper-slide ss3"></div>
						<div class="swiper-slide ss2"></div>
						<div class="swiper-slide ss1"></div>
						<div class="swiper-slide ss4"></div>
						<div class="swiper-slide ss5"></div>
						<div class="swiper-slide ss6"></div>
					</div>
					<!-- <div class="swiper-pagination"></div> -->
				</div>
			</div>
			<div class="visual">
				<div class="swiper-container">
					<div class="swiper-wrapper">
						<div class="swiper-slide ss4"></div>
						<div class="swiper-slide ss2"></div>
						<div class="swiper-slide ss3"></div>
						<div class="swiper-slide ss1"></div>
						<div class="swiper-slide ss5"></div>
						<div class="swiper-slide ss6"></div>
					</div>
					<!-- <div class="swiper-pagination"></div> -->
				</div>
			</div>
			<div class="visual">
				<div class="swiper-container">
					<div class="swiper-wrapper">
						<div class="swiper-slide ss5"></div>
						<div class="swiper-slide ss2"></div>
						<div class="swiper-slide ss3"></div>
						<div class="swiper-slide ss4"></div>
						<div class="swiper-slide ss1"></div>
						<div class="swiper-slide ss6"></div>
					</div>
					<!-- <div class="swiper-pagination"></div> -->
				</div>
			</div>
		</div>
	</section>
	<article>
		<div class="clear">
			<div class="info">
				<p>
					총 <b>190</b>개의 상품이 검색되었습니다.
				</p>
			</div>
			<div class="select">
				<ul>
					<li><a href="#">신상품</a></li>
					<li><a href="#">상품명</a></li>
					<li><a href="#">낮은가격</a></li>
					<li><a href="#">높은가격</a></li>
					<li><a href="#">인기상품</a></li>
				</ul>
			</div>
		</div>
		<div class="icon">
			<ul>
				<li><a href="#" class="ss1"></a></li>
				<li><a href="#" class="ss2"></a></li>
				<li><a href="#" class="ss3"></a></li>
				<li><a href="#" class="ss4"></a></li>
				<li><a href="#" class="ss5"></a></li>
			</ul>
		</div>
		<div class="clear category">
			<div class="main_pants">
				<div>
					<div>
						<ul>
							<li><a href="#" class="pic1"></a></li>
						</ul>
					</div>
					<h4>[1+1]쫀득 청바지</h4>
					<p class="size">(7) SIZE 27~39</p>
					<p class="sale">(54%할인)</p>
					<p class="price">₩32,800원</p>
					<p class="review">리뷰:333</p>
				</div>
				<div>
					<div>
						<ul>
							<li><a href="#" class="pic2"></a></li>
						</ul>
					</div>
					<h4>9부 매력팡팡 슬림 청바지</h4>
					<p class="size">(3) SIZE 27~32</p>
					<p class="price">₩23,000원</p>
				</div>
				<div>
					<div>
						<ul>
							<li><a href="#" class="pic3"></a></li>
						</ul>
					</div>
					<h4>10부 루킹 슬림 슬랙스</h4>
					<p class="size">(3) FREE SIZE 27~32</p>
					<p class="sale">(54%할인)</p>
					<p class="price">₩29,800원</p>
					<p class="review">리뷰:3</p>
				</div>
				<div>
					<div>
						<ul>
							<li><a href="#" class="pic4"></a></li>
						</ul>
					</div>
					<h4>[1+1]6부반팔 + 인생핏 카고바지</h4>
					<p class="size">SIZE 100 / 27~32</p>
					<p class="sale">(20%할인)</p>
					<p class="price">₩39,900원</p>
					<p class="review">리뷰:96</p>
				</div>
			</div>
		</div>
		<div class="clear category">
			<div class="main_pants">
				<div>
					<div>
						<ul>
							<li><a href="#" class="pic5"></a></li>
						</ul>
					</div>
					<h4>9부 깔끔하게 일자 청바지</h4>
					<p class="size">(5) SIZE 27~36</p>
					<p class="sale">(50%할인)</p>
					<p class="price">₩19,000원</p>
					<p class="review">리뷰:85</p>
				</div>
				<div>
					<div>
						<ul>
							<li><a href="#" class="pic6"></a></li>
						</ul>
					</div>
					<h4>너만없어배색 맨투맨+조거바지</h4>
					<p class="size">(4) SIZE 90~95,(4) SIZE 25~32</p>
					<p class="sale">(33%할인)</p>
					<p class="price">₩32,700원</p>
				</div>
				<div>
					<div>
						<ul>
							<li><a href="#" class="pic7"></a></li>
						</ul>
					</div>
					<h4>에이치 와이드일자 연청바지</h4>
					<p class="size">(5) SIZE 27~36</p>
					<p class="sale">(54%할인)</p>
					<p class="price">₩18,000원</p>
					<p class="review">리뷰:45</p>
				</div>
				<div>
					<div>
						<ul>
							<li><a href="#" class="pic8"></a></li>
						</ul>
					</div>
					<h4>[당일발송] 줄였진 청바지</h4>
					<p class="size">(3) SIZE 26~29</p>
					<p class="sale">(37%할인)</p>
					<p class="price">₩35,500원</p>
					<p class="review">리뷰:690</p>
				</div>
			</div>
		</div>
		<div class="clear category">
			<div class="main_pants">
				<div>
					<div>
						<ul>
							<li><a href="#" class="pic9"></a></li>
						</ul>
					</div>
					<h4>10부팔로우 슬림밴딩슬랙스</h4>
					<p class="size">(5) SIZE 26~35</p>
					<p class="sale">(60%할인)</p>
					<p class="price">₩9,600원</p>
					<p class="review">리뷰:207</p>
				</div>
				<div>
					<div>
						<ul>
							<li><a href="#" class="pic10"></a></li>
						</ul>
					</div>
					<h4>너만없어 배색 조거트레이닝바지</h4>
					<p class="size">(4) SIZE 25~32</p>
					<p class="sale">(35%할인)</p>
					<p class="price">₩16,600원</p>
					<p class="review">리뷰:84</p>
				</div>
				<div>
					<div>
						<ul>
							<li><a href="#" class="pic11"></a></li>
						</ul>
					</div>
					<h4>9부 매력어필 시크릿밴딩 슬림청바지</h4>
					<p class="size">(4) FREE SIZE 27~33</p>
					<p class="sale">(50%할인)</p>
					<p class="price">₩19,000원</p>
					<p class="review">리뷰:116</p>
				</div>
				<div>
					<div>
						<ul>
							<li><a href="#" class="pic12"></a></li>
						</ul>
					</div>
					<h4>다니엘 카고 조거 슬림밴딩바지</h4>
					<p class="size">(3) SIZE 27~32</p>
					<p class="price">₩32,000원</p>
					<p class="review">리뷰:14</p>
				</div>
			</div>
		</div>
		<div class="clear category">
			<div class="main_pants">
				<div>
					<div>
						<ul>
							<li><a href="#" class="pic13"></a></li>
						</ul>
					</div>
					<h4>로이드 슬림 조거밴딩바지</h4>
					<p class="size">(2) SIZE 27~32</p>
					<p class="sale">(50%할인)</p>
					<p class="price">₩12,500원</p>
					<p class="review">리뷰:3</p>
				</div>
				<div>
					<div>
						<ul>
							<li><a href="#" class="pic14"></a></li>
						</ul>
					</div>
					<h4>9부 매순간 반스키니 면바지</h4>
					<p class="size">(6) SIZE 27~38</p>
					<p class="sale">(45%할인)</p>
					<p class="price">₩15,900원</p>
					<p class="review">리뷰:15</p>
				</div>
				<div>
					<div>
						<ul>
							<li><a href="#" class="pic15"></a></li>
						</ul>
					</div>
					<h4>10부 평행선 링클프리 밴딩 슬림슬랙스</h4>
					<p class="size">(3) SIZE 27~32</p>
					<p class="sale">(30%할인)</p>
					<p class="price">₩12,600원</p>
					<p class="review">리뷰:14</p>
				</div>
				<div>
					<div>
						<ul>
							<li><a href="#" class="pic16"></a></li>
						</ul>
					</div>
					<h4>10부 쓰리선 슬림 트랙바지</h4>
					<p class="size">(5) SIZE 27~36</p>
					<p class="sale">(35%할인)</p>
					<p class="price">₩14,900원</p>
					<p class="review">리뷰:16</p>
				</div>
			</div>
		</div>
		<div class="clear category">
			<div class="main_pants">
				<div>
					<div>
						<ul>
							<li><a href="#" class="pic17"></a></li>
						</ul>
					</div>
					<h4>10부 크림한스푼 일자 면바지</h4>
					<p class="size">(4) SIZE 27~34</p>
					<p class="sale">(35%할인)</p>
					<p class="price">₩22,800원</p>
					<p class="review">리뷰:15</p>
				</div>
				<div>
					<div>
						<ul>
							<li><a href="#" class="pic18"></a></li>
						</ul>
					</div>
					<h4>헤이브 투버튼 수트세트</h4>
					<p class="size">(3) SIZE 95~100/(3) SIZE 27~32</p>
					<p class="sale">(8%할인)</p>
					<p class="cancel">
						<s>₩84,100원</s>
					</p>
					<p class="price">₩79,900원</p>
				</div>
				<div>
					<div>
						<ul>
							<li><a href="#" class="pic19"></a></li>
						</ul>
					</div>
					<h4>[당일발송] 테이퍼드 줄였진 청바지 [LIGHT] ver.6</h4>
					<p class="size">(3) SIZE 26~30</p>
					<p class="price">₩39,100원</p>
					<p class="review">리뷰:150</p>
				</div>
				<div>
					<div>
						<ul>
							<li><a href="#" class="pic20"></a></li>
						</ul>
					</div>
					<h4>8부 숨겨진 슬림 히든밴딩 블랙바지</h4>
					<p class="size">(4) SIZE 27~34</p>
					<p class="sale">(45%할인)</p>
					<p class="price">₩19,800원</p>
					<p class="review">리뷰:10</p>
				</div>
			</div>
		</div>
		<div class="clear category">
			<div class="main_pants">
				<div>
					<div>
						<ul>
							<li><a href="#" class="pic21"></a></li>
						</ul>
					</div>
					<h4>[1+1]온세상컬러 MTM+테이퍼드 줄였진</h4>
					<p class="size">SIZE 95~100/26~30</p>
					<p class="sale">(32%할인)</p>
					<p class="price">₩45,800원</p>
					<p class="review">리뷰:192</p>
				</div>
				<div>
					<div>
						<ul>
							<li><a href="#" class="pic22"></a></li>
						</ul>
					</div>
					<h4>10부 유즈벨트 슬림 슬랙스</h4>
					<p class="size">(4) SIZE 27~34</p>
					<p class="price">₩29,000원</p>
					<p class="review">리뷰:2</p>
				</div>
				<div>
					<div>
						<ul>
							<li><a href="#" class="pic23"></a></li>
						</ul>
					</div>
					<h4>[당일발송] 컷팅 줄였진 청바지 ver.5</h4>
					<p class="size">(3) SIZE 27~30</p>
					<p class="sale">(37%할인)</p>
					<p class="price">₩35,500원</p>
					<p class="review">리뷰:255</p>
				</div>
				<div>
					<div>
						<ul>
							<li><a href="#" class="pic24"></a></li>
						</ul>
					</div>
					<h4>10부 루킹 슬림 슬랙스</h4>
					<p class="size">(3) SIZE 27~32</p>
					<p class="price">₩29,800원</p>
					<p class="review">리뷰:4</p>
				</div>
			</div>
		</div>
		<div class="clear category">
			<div class="main_pants">
				<div>
					<div>
						<ul>
							<li><a href="#" class="pic25"></a></li>
						</ul>
					</div>
					<h4>잘난핏 카고 슬림 밴딩 조거바지</h4>
					<p class="size">(3) SIZE 28~33</p>
					<p class="sale">(37%할인)</p>
					<p class="cancel">
						<s>₩24,500원</s>
					</p>
					<p class="price">₩20,000원</p>
					<p class="review">리뷰:20</p>
				</div>
				<div>
					<div>
						<ul>
							<li><a href="#" class="pic26"></a></li>
						</ul>
					</div>
					<h4>퍼펙트핏 슬랙스 Best 10</h4>
					<p class="size">S~XL(27~34)</p>
					<p class="sale">(71%할인)</p>
					<p class="price">₩9,600원</p>
					<p class="review">리뷰:5,479</p>
				</div>
				<div>
					<div>
						<ul>
							<li><a href="#" class="pic27"></a></li>
						</ul>
					</div>
					<h4>[1+1+1] 수채화 니트+테이퍼드 진 +5.5cm 수제화</h4>
					<p class="size">SIZE 95~100/26~30/245mm~270</p>
					<p class="sale">(62%할인)</p>
					<p class="price">₩89,900원</p>
					<p class="review">리뷰:267</p>
				</div>
				<div>
					<div>
						<ul>
							<li><a href="#" class="pic28"></a></li>
						</ul>
					</div>
					<h4>엘룬 옆트임 세미와이드 슬랙스</h4>
					<p class="size">(3) SIZE 28~33</p>
					<p class="price">₩29,000원</p>
					<p class="review">리뷰:59</p>
				</div>
			</div>
		</div>
		<div class="clear category">
			<div class="main_pants">
				<div>
					<div>
						<ul>
							<li><a href="#" class="pic29"></a></li>
						</ul>
					</div>
					<h4>[당일발송] 10부 텐션 스판 슬림슬랙스</h4>
					<p class="size">(3) SIZE 27~31</p>
					<p class="sale">(30%할인)</p>
					<p class="price">₩19,900원</p>
					<p class="review">리뷰:43</p>
				</div>
				<div>
					<div>
						<ul>
							<li><a href="#" class="pic30"></a></li>
						</ul>
					</div>
					<h4>제임스 스트라이프 베이직 수트세트</h4>
					<p class="size">(2) SIZE 94~100/(2) SIZE 28~32</p>
					<p class="sale">(10%할인)</p>
					<p class="cancel">
						<s>₩95,000원</s>
					</p>
					<p class="price">₩85,500원</p>
					<p class="review">리뷰:62</p>
				</div>
				<div>
					<div>
						<ul>
							<li><a href="#" class="pic31"></a></li>
						</ul>
					</div>
					<h4>여친픽 사이드밴딩 슬림 워싱청바지</h4>
					<p class="size">(3) SIZE 27~32</p>
					<p class="sale">(35%할인)</p>
					<p class="price">₩22,100원</p>
					<p class="review">리뷰:11</p>
				</div>
				<div>
					<div>
						<ul>
							<li><a href="#" class="pic32"></a></li>
						</ul>
					</div>
					<h4>카고 슬림 트레이닝 조거바지</h4>
					<p class="size">(4) SIZE 27~34</p>
					<p class="price">₩18,900원</p>
					<p class="review">리뷰:17</p>
				</div>
			</div>
		</div>
		<div class="clear category">
			<div class="main_pants">
				<div>
					<div>
						<ul>
							<li><a href="#" class="pic33"></a></li>
						</ul>
					</div>
					<h4>[1+1] 수채화 니트+힙해 슬랙스</h4>
					<p class="size">SIZE 95~100/27~32</p>
					<p class="sale">(33%할인)</p>
					<p class="price">₩49,900원</p>
					<p class="review">리뷰:97</p>
				</div>
				<div>
					<div>
						<ul>
							<li><a href="#" class="pic34"></a></li>
						</ul>
					</div>
					<h4>10부 럴러 컷팅 시크릿밴딩 반스키니청바지</h4>
					<p class="size">(3) SIZE 27~32</p>
					<p class="price">₩26,500원</p>
					<p class="review">리뷰:8</p>
				</div>
				<div>
					<div>
						<ul>
							<li><a href="#" class="pic35"></a></li>
						</ul>
					</div>
					<h4>9부모리 시크릿밴딩 반스키니 디스블랙바지</h4>
					<p class="size">(6) SIZE 27~38</p>
					<p class="sale">(35%할인)</p>
					<p class="price">₩19,200원</p>
					<p class="review">리뷰:219</p>
				</div>
				<div>
					<div>
						<ul>
							<li><a href="#" class="pic36"></a></li>
						</ul>
					</div>
					<h4>5분만입고있어봐 밴딩청바지</h4>
					<p class="sale">(50%할인)</p>
					<p class="price">₩17,500원</p>
					<p class="review">리뷰:313</p>
				</div>
			</div>
		</div>
		<div class="clear category">
			<div class="main_pants">
				<div>
					<div>
						<ul>
							<li><a href="#" class="pic37"></a></li>
						</ul>
					</div>
					<h4>9부 쿨터치 반스키니슬랙스[아이스]</h4>
					<p class="size">(4) SIZE 27~35</p>
					<p class="sale">(16%할인)</p>
					<p class="price">₩32,000원</p>
					<p class="review">리뷰:226</p>
				</div>
				<div>
					<div>
						<ul>
							<li><a href="#" class="pic38"></a></li>
						</ul>
					</div>
					<h4>[당일발송] 컴포터블 히든밴딩 슬랙스</h4>
					<p class="size">(3) SIZE 27~36</p>
					<p class="sale">(44%할인)</p>
					<p class="price">₩17,900원</p>
					<p class="review">리뷰:543</p>
				</div>
				<div>
					<div>
						<ul>
							<li><a href="#" class="pic39"></a></li>
						</ul>
					</div>
					<h4>테이퍼드 줄였진 청바지 [진청] ver.7</h4>
					<p class="size">(3) SIZE 26~30</p>
					<p class="sale">(30%할인)</p>
					<p class="price">₩39,200원</p>
					<p class="review">리뷰:45</p>
				</div>
				<div>
					<div>
						<ul>
							<li><a href="#" class="pic40"></a></li>
						</ul>
					</div>
					<h4>힙해 세미와이드 슬랙스</h4>
					<p class="size">(3) SIZE 27~32</p>
					<p class="sale">(34%할인)</p>
					<p class="price">₩33,000원</p>
					<p class="review">리뷰:18</p>
				</div>
			</div>
		</div>
	</article>
</div>
<div class="list">

	<ul>
		<li><a href="#">&lt;&lt;</a></li>
		<li><a href="#">&lt;</a></li>
		<li><a href="#">1</a></li>
		<li><a href="#">2</a></li>
		<li><a href="#">3</a></li>
		<li><a href="#">&gt;</a></li>
		<li><a href="#">&gt;&gt;</a></li>
	</ul>
</div>
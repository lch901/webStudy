<%@ page contentType="text/html; charset=euc-kr" %> 
<HTML>
<HEAD>
<TITLE>�α���/�ƿ�/���뿹��</TITLE>
<link rel="stylesheet" href="./main.css" type="text/css">
</HEAD>

<BODY bgcolor="#D7D7D7" topmargin="0" marginheight="0" leftmargin="0" marginwidth="0" height=350>
<center>
<TABLE width="480" border="0" cellpadding="0" cellspacing="0" background="./img/index_page_bg.gif" bgcolor="#ffffff">
	<jsp:include page="./log_info.jsp" flush="true"/>
	<TR><TD><img src="./img/main1.jpg" width="480" border="0"></TD></TR>
	<TR><TD><img src="./im/blank.gif" width="1" height="1" alt="" border="0"></TD></TR>
	<TR>	
		<!-- ������ ���� -->
		<TD width="100%" height=300 valign=top>
			<TABLE border="0" cellpadding="0" cellspacing="0">
				<TR>
					<TD>
					<!-- �������� ���� -->
					<jsp:include page="./index_notice.jsp" flush="true" />
					<!-- �������� �� -->
					</TD>
				</TR>
				<TR>
					<TD>
					<!-- �����Խ��� ���� -->
					<jsp:include page="./index_board.jsp" flush="true" />
					<!-- �����Խ��� �� -->
					</TD>
				</TR>
			</TABLE>
			<!-- ������ �� -->
		</TD>
	</TR>
	<TR><TD><img src="./img/copyright.gif" width="480" height="79" alt="" border="0"></TD></TR>
</TABLE>
</center>
</BODY>
</HTML>

<jsp:include page="./log_chk_c.jsp" flush="true" />
<%@ page contentType="text/html; charset=euc-kr" %> 
<HTML>
<HEAD>
<TITLE></TITLE>
<link rel="stylesheet" href="./main.css" type="text/css">
</HEAD>
<%@ include file="./get_session_c.jsp" %> 
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
					<!-- �Խù� ���� ���� -->
						<TABLE border="0" cellpadding="0" cellspacing="0" width="480">
							<TR><TD colspan=3 height=30 bgcolor="#369BD0" align=center><font size="2" color="#FFFFFF"><b>�ڹ� ����Ÿ���̽� ���α׷��� ���� ���� ����</b></font></TD></TR>
							<TR><TD colspan=3 bgcolor="#8E8E8E"><img src="./img/blank.gif" width="1" height="2" alt="" border="0"></TD></TR>
							<TR>
								<TD width=160 height=25>&nbsp;&nbsp;<b>�ۼ���</b> : <%=Utility.han(u_name)%></TD>
								<TD width=180 font class=board><b>�������</b> : 2003.07.26</TD>
								<TD width=180 font class=board><b>��ȸ</b> : 15</TD>
							</TR>
							<TR><TD colspan=3><img src="./img/blank.gif" width="1" height="1" alt="" border="0"></TD></TR>
							<TR>
								<TD width=160 height=25>&nbsp;<b> IP</b> : 61.107.23.32</TD>
								<TD width=180 font class=board><b>÷������1</b> : ���� ����	</TD>
							</TR>
							<TR><TD colspan=3 bgcolor="#8E8E8E"><img src="./img/blank.gif" width="1" height="1" alt="" border="0"></TD></TR>

							<TR onMouseOver="this.style.backgroundColor='#EFEFEF'" onMouseOut="this.style.backgroundColor='' " align=center height=150>
								<TD colspan=3 valign=top align="left">
									<TABLE border="0" cellpadding="0" cellspacing="0" width="480">
										<TR><TD colspan=3><img src="./img/blank.gif" width="1" height="10" alt="" border="0"></TD></TR>
										<TR><TD colspan=3 align="left">
										������ ������ �� �ִ� ��ȸ�Դϴ�.<br> �ڹ� ���ʸ� ������ �Ͻźе��� ��ʴϴ�.<br>
										��������: 2003.08.10(��) 09:00 ~ <br>
										��������: ����Ŭ �� JDBC, JSP ����</TD></TR>
										<TR><TD colspan=3><img src="../img/blank.gif" width="1" height="10" alt="" border="0"></TD></TR>
									</TABLE>
								</TD>
							</TR>
							<TR><TD colspan=3 bgcolor="#D4D0C8"><img src="./img/blank.gif" width="1" height="1" alt="" border="0"></TD></TR>
								<TR><TD colspan=3 bgcolor="#369BD0" height=25 font class=boardtext align=right>
								<a href="./index2.jsp">[����ȭ��]</a></TD></TR>
								<TR><TD colspan=3><img src="./img/blank.gif" width="1" height="10" alt="" border="0"></TD></TR>
							</TABLE>
					<!-- �����Խ��� �� -->
					</TD>
				</TR>
			</TABLE>
		</TD>
		<!-- ������ �� -->
	</TR>
	<TR><TD><img src="./img/copyright.gif" width="480" height="79" alt="" border="0"></TD></TR>
</TABLE>
</center>
</BODY>
</HTML>

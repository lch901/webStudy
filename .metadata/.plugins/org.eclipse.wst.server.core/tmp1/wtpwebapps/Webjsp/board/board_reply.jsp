<%@ page contentType="text/html; charset=euc-kr" %>
<%  
java.text.SimpleDateFormat formatter = new java.text.SimpleDateFormat("yyyyMMdd");
String today	= formatter.format(new java.util.Date());
%>

<HTML>
<HEAD>
<TITLE></TITLE>
<link rel="stylesheet" href="../ssem.css" type="text/css">
<script language="JavaScript" src="./js/board_write.js" ></script>
</HEAD>

<BODY bgcolor="#ffffff" topmargin="0" marginheight="0" leftmargin="0" marginwidth="0" width="776" height=500>
<center>
<img src="../images/blank.gif" width="1" height="3" alt="" border="0"><br>
<TABLE border="0" cellpadding="0" cellspacing="0" background="/images/page_bg2.gif">
	<TR>	
		<%	String p_num = request.getParameter("p_num"); //�θ�۹�ȣ  %>			

		<!-- body ���� -->
		<TD width=549 valign=top>
			<TABLE border="0" cellpadding="0" cellspacing="0">
				<TR>
					<TD width=529 valign=top>
						<TABLE border="0" cellpadding="0" cellspacing="0">
							<TR><TD><img src="../images/blank.gif" width="1" height="15" alt="" border="0"></TD></TR>
							
					<form  name="frm1"  action=""  method="POST" enctype="multipart/form-data">
					<input type='hidden' name='cmd' value='reply'> <!-- �۾����� -->
					<input type='hidden' name='reg_date' value='<%=today%>'> 
					<input type='hidden' name='ip_num' value='<%=request.getRemoteAddr()%>'> <!-- ip ��� -->
					<input type='hidden' name='p_num' value='<%=p_num%>'> 
											
							<TR>
								<TD background="../images/page_title_bg.gif" width=529 height=44>
									<font size=3 color="#FFFFFF"><b>&nbsp;�Խ��� ����</b></font>
								</TD>
							</TR>
							<TR><TD><img src="../images/blank.gif" width="1" height="25" alt="" border="0"></TD></TR>
							<TR>
								<TD>
									<TABLE border="0" cellpadding="0" cellspacing="0" width="529">
										<TR><TD colspan=2 bgcolor="#8E8E8E"><img src="/images/blank.gif" width="1" height="2" alt="" border="0"></TD></TR>
										<TR>
											<TD width=129 height=30 bgcolor="#369BD0" align=center><font color="#ffffff">* �ۼ��ڸ�</font></TD>
											<TD width=400 font class=board>&nbsp;&nbsp;<input type=text name="reg_name" class="form" style="width:130;height:18px;"></TD>
										</TR>
										<TR><TD colspan=2 background="/images/board_linebg.gif"><img src="/images/blank.gif" width="1" height="1" alt="" border="0"></TD></TR>
										<TR>
											<TD width=129 height=30 bgcolor="#369BD0" align=center><font color="#ffffff">* ��&nbsp;&nbsp;&nbsp;&nbsp;��</font></TD>
											<TD font class=board>&nbsp;&nbsp;<input type=text name="title" class="form" style="width:370;height:18px;"></TD>
										</TR>
										<TR><TD colspan=2 background="/images/board_linebg.gif"><img src="/images/blank.gif" width="1" height="1" alt="" border="0"></TD></TR>
										<TR>
											<TD width=129 height=210 bgcolor="#369BD0" align=center><font color="#ffffff">* ��&nbsp;&nbsp;&nbsp;&nbsp;��</font></TD>
											<TD font class=board>&nbsp;&nbsp;<textarea name="content" class="form" style="width:370;height:200px;"></textarea></TD>
										</TR>
										<TR><TD colspan=2 background="/images/board_linebg.gif"><img src="/images/blank.gif" width="1" height="1" alt="" border="0"></TD></TR>
										<TR>
											<TD width=129 height=50 bgcolor="#369BD0" align=center><font color="#ffffff">÷������</font></TD>
											<TD font class=board>
												&nbsp;&nbsp;÷������ 1 : <input type="file" name="file_name1" class="form">
											</TD>
										</TR>
										<TR><TD colspan=9 bgcolor="#D4D0C8"><img src="/images/blank.gif" width="1" height="1" alt="" border="0"></TD></TR>
										<TR><TD colspan=9 bgcolor="#369BD0" height=25 font class=boardtext align=right>
											<a href="board_list.jsp">[��Ϻ���]</a> <a href="javascript:rep_send()">[���]</a>
											<a href="javascript:history.back()">[���]</a>&nbsp;&nbsp;
											</TD>
										</TR>
									</TABLE>							
								</TD>
							</TR>
							
							</form>
							
						</TABLE>
					</TD>
					<TD width=20><img src="/images/blank.gif" width="20" height="1" alt="" border="0"></TD>
				</TR>
			</TABLE>
		</TD>
		<!-- body �� -->
	</TR>

</TABLE>
</center>
</body>
</html>
<%@ page contentType="text/html; charset=euc-kr" %>

<%  java.text.SimpleDateFormat formatter = new java.text.SimpleDateFormat("yyyyMMdd");
	String today	= formatter.format(new java.util.Date());
%>	
<HTML>
<HEAD>
<TITLE></TITLE>
<link rel="stylesheet" href="../ssem.css" type="text/css">
<script language="JavaScript" src="./js/member_write.js" ></script>
</HEAD>

<BODY bgcolor="#ffffff" topmargin="0" marginheight="0" leftmargin="0" marginwidth="0" width="776" height=500>
<center>
<img src="./images/blank.gif" width="1" height="3" alt="" border="0"><br>
<TABLE border="0" cellpadding="0" cellspacing="0" >
	<TR>

		<form  name="frm1"  action=""  method="POST" >
		<input type='hidden' name='cmd' value='insert'> <!-- �۾����� -->
		<input type='hidden' name='reg_date' value='<%=today%>'> 
				
		<TD width=25><img src="./images/blank.gif" width="25" height="1" alt="" border="0"></TD>
		<!-- body ���� -->
		<TD width=549 valign=top>
			<TABLE border="0" cellpadding="0" cellspacing="0">
				<TR>
					<TD width=529 valign=top>
						<TABLE border="0" cellpadding="0" cellspacing="0">
							<TR><TD><img src="./images/blank.gif" width="1" height="15" alt="" border="0"></TD></TR>
							<TR>
								<TD colspan=2 background="./images/page_title_bg.gif" width=529 height=44>
									<font size=3 color="#FFFFFF"><b>&nbsp;ȸ�� ����(���)</b></font>
								</TD>
							</TR>
							<TR><TD colspan=2><img src="./images/blank.gif" width="1" height="25" alt="" border="0"></TD></TR>
							<TR><TD colspan=2 bgcolor="#8E8E8E"><img src="images/blank.gif" width="1" height="2" alt="" border="0"></TD></TR>
							<TR><TD colspan=2><img src="./images/blank.gif" width="1" height="10" alt="" border="0"></TD></TR>
							
							<TR>
								<TD width=129 height=25 bgcolor="#369BD0"><font color="#ffffff">&nbsp;&nbsp;* ȸ����</font></TD>
								<TD width=400 font class=board>&nbsp;&nbsp;<input type=text name="name" class="form" style="width:130;height:18px;"></TD>
							</TR>
							<TR><TD colspan=2 background="./images/board_linebg.gif"><img src="./images/blank.gif" width="1" height="1" alt="" border="0"></TD></TR>
							<tr>
								<td height=25  bgcolor="#369BD0"><font color="#ffffff">&nbsp;&nbsp;* I &nbsp;&nbsp; D</font></td>
								<td>&nbsp;&nbsp;<input type=text name="id" class="form" readOnly=true> 
								&nbsp;&nbsp;<a href="javascript:id_check()"><img src="./images/button_id_check.gif" width="59" height="21" alt="" border="0" align="absmiddle" ></a>
								</td>
							</tr>
							<TR><TD colspan=2 background="./images/board_linebg.gif"><img src="./images/blank.gif" width="1" height="1" alt="" border="0"></TD></TR>
							<tr>
								<td height=25  bgcolor="#369BD0"><font color="#ffffff">&nbsp;&nbsp;* ��й�ȣ </font></td>
								<td>&nbsp;&nbsp;<input type=password name="pwd" class="form" style="width:130;height:18px;"></td>
							</tr>
							<TR><TD colspan=2 background="./images/board_linebg.gif"><img src="./images/blank.gif" width="1" height="1" alt="" border="0"></TD></TR>
							<tr>
								<td height=25  bgcolor="#369BD0"><font color="#ffffff">&nbsp;&nbsp;* E-mail</font> </td>
								<td>&nbsp;&nbsp;<input type=text name="email"  class="form" style="width:200;height:18px;">
								</td>
							</tr>
							<TR><TD colspan=2 background="./images/board_linebg.gif"><img src="./images/blank.gif" width="1" height="1" alt="" border="0"></TD></TR>
							<tr>
								<td height=25  bgcolor="#369BD0"><font color="#ffffff">&nbsp;&nbsp;* �ڵ���</font> </td>
								<td>&nbsp;&nbsp;<input type=text name="tel" class="form" style="width:100;height:18px;">
								&nbsp; �� '-'�� �����Ͽ� �Է��ϼ���. ��) 011-222-2222</td>
							</tr>
							<TR><TD colspan=2 background="./images/board_linebg.gif"><img src="./images/blank.gif" width="1" height="1" alt="" border="0"></TD></TR>
							<tr>
								<td height=25 bgcolor="#369BD0"><font color="#ffffff">&nbsp;&nbsp;�����ȣ</font></td>
								<td>&nbsp;&nbsp;<input type=text name="post"  class="form" style="width:70;height:18px;"><!--readOnly=true-->
									&nbsp;&nbsp;<a href="javascript:post_search()"><img src="./images/button_post_check.gif" width="102" height="21" alt="" border="0" align="absmiddle" ></a>
								</td>
							</tr>
							<TR><TD colspan=2 background="./images/board_linebg.gif"><img src="./images/blank.gif" width="1" height="1" alt="" border="0"></TD></TR>
							<tr>
								<td height=25 bgcolor="#369BD0"><font color="#ffffff">&nbsp;&nbsp;*��&nbsp;&nbsp;��</font></td>
								<td>&nbsp;&nbsp;<input type=text name="addr_1"  class="form" style="width:350;height:18px;"></td>
							</tr>
							<TR><TD colspan=2 background="./images/board_linebg.gif"><img src="./images/blank.gif" width="1" height="1" alt="" border="0"></TD></TR>
							<tr>
								<td height=25 bgcolor="#369BD0"><font color="#ffffff">&nbsp;&nbsp;*�� �ּ�</font></td>	
								<td>&nbsp;&nbsp;<input type=text name="addr_2" class="form" style="width:350;height:18px;"></td>
							</tr>	
							<TR><TD colspan=2 background="./images/board_linebg.gif"><img src="./images/blank.gif" width="1" height="1" alt="" border="0"></TD></TR>
							<TR>
								<TD height=50 bgcolor="#369BD0"><font color="#ffffff">&nbsp;&nbsp;* �ϰ���� ��</font> </TD>
								<TD font class=board>&nbsp;&nbsp;<textarea name="comment1" class="form" style="width:400;height:50px;"></textarea></TD>
							</TR>
							<TR><TD colspan=2 background="./images/board_linebg.gif"><img src="./images/blank.gif" width="1" height="1" alt="" border="0"></TD></TR>
							<tr>
								<td height=25 bgcolor="#369BD0"><font color="#ffffff">&nbsp;&nbsp;* ���ٱ���</font> </td>
								<td>
									&nbsp;&nbsp;<input type="radio" name="access1"  value="M" checked>�Ϲ�ȸ��
									&nbsp;&nbsp;<input type="radio" name="access1"  value="S" >Ư��ȸ��
								</td>
							</tr>
							<TR><TD colspan=2 bgcolor="#8E8E8E"><img src="./images/blank.gif" width="1" height="2" alt="" border="0"></TD></TR>
							<TR><TD colspan=2><img src="./images/blank.gif" width="1" height="10" alt="" border="0"></TD></TR>
							<TR>
							    <TD colspan=9 bgcolor="#369BD0" height=25 font class=boardtext align=right>
							      <a href="member_list.jsp">[��Ϻ���]</a>
							      <a href="javascript:send()">[���]</a>
							      <a href="javascript:history.back()">[���]</a>
							    </TD>
						 	</TR>
						</TABLE>
					</TD>
					<!--<TD width=20><img src="images/blank.gif" width="20" height="1" alt="" border="0"></TD>-->
				</TR>
				</form>
			</TABLE>
		</TD>
		<!-- body �� -->
	</TR>
</TABLE>
</center>
</body>
</html>
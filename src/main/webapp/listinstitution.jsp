<%@ page contentType="text/html; charset=GBK" language="java" %>
<%@ page import="java.util.List"%>
<%@ page import="java.util.Iterator"%>
<%@ page import="com.bug.model.MoneyRecord"%>
<%@ page import="com.bug.utility.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>�洴�Ƽ�Э���Ա����ϵͳ</title>
<style type="text/css">
<!--
body {
	margin-left: 0px;
	margin-top: 0px;
	margin-right: 0px;
	margin-bottom: 0px;
}
.tabfont01 {	
	font-family: "����";
	font-size: 9px;
	color: #555555;
	text-decoration: none;
	text-align: center;
}
.font051 {font-family: "����";
	font-size: 12px;
	color: #333333;
	text-decoration: none;
	line-height: 20px;
}
.font201 {font-family: "����";
	font-size: 12px;
	color: #FF0000;
	text-decoration: none;
}
.button {
	font-family: "����";
	font-size: 14px;
	height: 37px;
}
html { overflow-x: auto; overflow-y: auto; border:0;} 
-->
</style>

<link href="css/css.css" rel="stylesheet" type="text/css" />
<script type="text/JavaScript">

</script>
<link href="css/style.css" rel="stylesheet" type="text/css" />
</head>

<body>

<table width="100%" border="0" cellspacing="0" cellpadding="0">
  
  <tr>
    <td height="30">      <table width="100%" border="0" cellspacing="0" cellpadding="0">
        <tr>
          <td height="62" background="images/nav04.gif">&nbsp;</td>
        </tr>
    </table></td></tr>
  <tr>
    <td><table id="subtree1" style="DISPLAY: " width="100%" border="0" cellspacing="0" cellpadding="0">
        <tr>
          <td><table width="95%" border="0" align="center" cellpadding="0" cellspacing="0">
          	 <tr>
               <td height="20"><span class="newfont07">�ʽ���Ϣ�鿴</span></td>
          	 </tr>
              <tr>
                <td height="40" class="font42">
				<table width="100%" border="0" cellpadding="4" cellspacing="1" bgcolor="#464646" class="newfont03">
				 <tr class="CTitle" >
                    	<td height="22" colspan="8" align="center" style="font-size:16px">�ʽ���Ϣ�鿴</td>
                  </tr>
                  <tr bgcolor="#EEEEEE"><span class="newfont07">�ʽ�${money}Ԫ</span></tr>
           <form  method="post" action="getlistmoneybytime.do" >
 <label><input name="time" type="radio" value="1" />���360��</label> 
<label><input name="time" type="radio" value="2" />���180��</label> 
<label><input name="time" type="radio" value="3" />���90�� </label> 
<label><input name="time" type="radio" value="4" />���30�� </label> 
<label><input name="time" type="radio" value="5" checked="checked"/>���24Сʱ </label> 
<label><input  type="submit" value="��ѯ"/></label>   
</form>
                  <tr bgcolor="#EEEEEE">
                        <td height="22" align="center" >ID</td>
				        <td height="22" align="center" >�ʽ����</td>
				        <td height="22" align="center" >�ʽ��������</td>
						<td height="22" align="center" >�ʽ�������¼</td>
						<td height="22" align="center" >�ʽ�����ʱ��</td>
						<td height="22" align="center" >�ʽ��¼ʱ��</td>
						<td height="22" align="center" >���</td>
                  </tr>
				<% List list=(List)request.getAttribute("list");
				 if(list!=null&&list.size()>0){
					Iterator it = list.iterator();
					   while (it.hasNext()) {
								MoneyRecord j = (MoneyRecord) it.next();
			
			  %>
			  <tr  bgcolor="#FFFFFF">
				<td height="22" align="center" ><%=j.getId()%></td>
				<td height="22" align="center" ><%=1==Integer.valueOf(j.getOperation())?"����":"֧��"%></td>
				<td height="22" align="center" ><%=StringUtil.notNull(String.valueOf(j.getMoney()))%></td>
				<td height="22" align="center" ><%=StringUtil.notNull(String.valueOf(j.getRecord()))%></td>
				
				<td height="22" align="center" ><%=StringUtil.notNull(DateToLongUtil.LongToDate(j.getTime(), "yyyy-MM-dd"))%></td>
				<td height="22" align="center" ><%=StringUtil.notNull(DateToLongUtil.LongToDate(j.getRecord_time(), "yyyy-MM-dd"))%></td>
				<td height="22" align="center" ><%=StringUtil.notNull(String.valueOf(j.getBalance()))%></td> 
			  </tr>
			  <%		}
			   }else{
			  %>
			  <tr  bgcolor="#FFFFFF">
				<td height="22" colspan="3" align="center" >�Բ���û����ӽ�����Ϣ������</td>
				<td height="22" colspan="3" align="center" >�Բ���û����ӽ�����Ϣ������</td>
				<td height="22" colspan="3" align="center" >�Բ���û����ӽ�����Ϣ������</td>
			  </tr>
			  <%}%>
            </table></td>
        </tr>
      </table>
          </td>
        </tr>
</table>

</body>
</html>


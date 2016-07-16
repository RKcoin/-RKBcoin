<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <link href="css/service.css" rel="stylesheet" type="text/css" media="screen, projection"/>
    <link href="css/coincommon_v1.css" rel="stylesheet" type="text/css" media="screen, projection"/>
	
	<%
		String id = "1";
		if(null != request.getParameter("id"))
		{
			id = request.getParameter("id");
		}
	%>
</head>
<body >
    <div>
        <jsp:include page="header.jsp"/>
    </div>
<div class="ourservice" id="showMsg">
   
</div>

	<script type="text/javascript" src="js/new.js"></script>
<script type="text/javascript">
		jQuery(document).ready(function(){
			getpmsg(<%=id%>);
		});
</script>
<div>
    <jsp:include page="bottom.jsp"/>
</div>
</body>
</html>



<%

	if(session.getAttribute("student") == null)
	{
		out.print("<h2>Hi</h2>");
		response.sendRedirect("/login");
	}
	
%>
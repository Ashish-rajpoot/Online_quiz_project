
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<title></title>
	<!--  <link rel="stylesheet" type="text/css" href="style-backend.css">-->
</head>
<body>
	<jsp:include page="./includes/header2.jsp"/>
	<div class="top-area">
		<center><h2>Student Panel</h2></center> 
	</div>
    
    <%
            if(session.getAttribute("userStatus")!=null){
           if(session.getAttribute("userStatus").equals("1")){
            %>
            <% 
            //pgpart = pagepart, exams=1,results=2 and profile is default
            if(request.getParameter("pgprt").equals("1")){
                
            %>
            
            <jsp:include page="exam.jsp"/>
            
            <%
                
            }else if(request.getParameter("pgprt").equals("2")){
            
                %>
            
                <jsp:include page="results.jsp"/>
                
                <%
                
            }else{
                %>
            
                <jsp:include page="profile.jsp"/>
            
            <%
            }
            %>
            
            <%
           }else response.sendRedirect("login.jsp");
            }else response.sendRedirect("login.jsp");
            
          
           %>
            
           </body>
</html>
            

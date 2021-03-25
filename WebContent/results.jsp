
<%@page import="myPackage.classes.Answers"%>
<%@page import="myPackage.classes.Exams"%>
<%@page import="myPackage.classes.Questions"%>
<%@page import="java.util.ArrayList"%>
<jsp:useBean id="pDAO" class="myPackage.DatabaseClass" scope="page" />


<div class="container jumbotron">
	<div align="center">

		<%
			if (request.getParameter("eid") == null) {
		%>
		<div class="title">All Results</div>
		<table id="rounded-corner" class="table table-striped text-center">
			<thead>
				<tr>
					<th>Date</th>
					<th>Course</th>
					<th>Time</th>
					<th>Status</th>
					<th>Action</th>
				</tr>
			</thead>

			<tbody>

				<%
					ArrayList list = pDAO.getAllResultsFromExams(Integer.parseInt(session.getAttribute("userId").toString()));
				for (int i = 0; i < list.size(); i++) {
					Exams e = (Exams) list.get(i);
				%>
				<tr>
					<td><%=e.getDate()%></td>
					<td><%=e.getcName()%></td>
					<td><%=e.getStartTime() + " - " + e.getEndTime()%></td>
					<%
						if (e.getStatus() != null) {
						if (e.getStatus().equals("Pass")) {
					%>
					<td style="background: #00cc33; color: white"><%=e.getStatus()%></td>
					<%
						} else {
					%>
					<td style="background: #ff3333; color: white"><%=e.getStatus()%></td>
					<%
						}
					} else {
					%>
					<td style="background: bisque;">Terminated</td>
					<%
						}
					%>
					<td><a href="std-page.jsp?pgprt=2&eid=<%=e.getExamId()%>">Details</a></td>
				</tr>

				<%
					}
				%>
			</tbody>
		</table>
	</div>
	<%
		} else {
	%>
	
		<h2>Result Details</h2>
		<div class="container jumbotron">
		<table class="table">

			<%
				ArrayList list = pDAO.getAllAnswersByExamId(Integer.parseInt(request.getParameter("eid")));
			for (int i = 0; i < list.size(); i++) {
				Answers a = (Answers) list.get(i);
			%>


			<tr>
				<td rowspan="2"><%=i + 1%>)</td>
				<td colspan="2"><h4><%=a.getQuestion()%></h4></td>
				<td rowspan="2"><h4><%=a.getStatus()%></td>
			</tr>
			<tr>
				<td><%="Your Ans: " + a.getAnswer()%></td>
				<td><%="Correct Ans: " + a.getCorrectAns()%></td>
			</tr>
			<tr>
				<td colspan="3" style="background: white"></td>
				<%
					}
				%>
			
		</table>


		<%
		}
	%>
	</div>
</div>

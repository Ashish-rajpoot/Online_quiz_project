
<%@page import="myPackage.classes.Exams"%>
<%@page import="myPackage.classes.Questions"%>
<%@page import="java.util.ArrayList"%>
<jsp:useBean id="pDAO" class="myPackage.DatabaseClass" scope="page" />
<%
	if (session.getAttribute("examStarted") != null) {
%>

<%
	}
%>


<%
	if (session.getAttribute("examStarted") != null) {
	if (session.getAttribute("examStarted").equals("1")) {
%>
<span id="remainingTime"
	style="position: fixed; top: 90px; left: 300px; font-size: 23px; background: rgba(255, 0, 77, 0.38); border-radius: 5px; padding: 10px; box-shadow: 2px -2px 6px 0px;">
</span>

<script>
	var time =
<%=pDAO.getRemainingTime(Integer.parseInt(session.getAttribute("examId").toString()))%>
	;
	time--;
	var sec = 60;
	document.getElementById("remainingTime").innerHTML = time + " : " + sec;
	//it calls fuction after specific time again and again                  
	var x = window.setInterval(timerFunction, 1000);

	function timerFunction() {
		sec--;
		// Display the result in the element with id="demo"

		if (time < 0) {
			clearInterval(x);
			document.getElementById("remainingTime").innerHTML = "00 : 00";
			document.getElementById("myform").submit();
		}
		document.getElementById("remainingTime").innerHTML = time + " : " + sec;
		if (sec == 0) {
			sec = 60;
			time--;

		}
	}
</script>

<form id="myform" action="controller.jsp">

	<%
		ArrayList list = pDAO.getQuestions(request.getParameter("coursename"), 20);
	Questions question;
	%>
	<input type="hidden" name="size" value="<%=list.size()%>"> <input
		type="hidden" name="totalmarks"
		value="<%=pDAO.getTotalMarksByName(request.getParameter("coursename"))%>">

	<%
		for (int i = 0; i < list.size(); i++) {
		question = (Questions) list.get(i);
	%>


	<center>
		<div class="container jumbotron">
			<div class="question">
				<label class="col-sm-1 form-control"><%=i + 1%></label>
				<h3><%=question.getQuestion()%></h3>
			</div>

			<div class="form-group" style="font-size: x-large;">
				<input type="radio" id="c1<%=i%>" name="ans<%=i%>"
					value="<%=question.getOpt1()%>" /> <label for="c1<%=i%>"><%=question.getOpt1()%></label>
				<input type="radio" id="c2<%=i%>" name="ans<%=i%>"
					value="<%=question.getOpt2()%>" /> <label for="c2<%=i%>"><%=question.getOpt2()%></label>
				<input type="radio" id="c3<%=i%>" name="ans<%=i%>"
					value="<%=question.getOpt3()%>" /> <label for="c3<%=i%>"><%=question.getOpt3()%></label>
				<input type="radio" id="c4<%=i%>" name="ans<%=i%>"
					value="<%=question.getOpt4()%>" /> <label for="c4<%=i%>"><%=question.getOpt4()%></label>
			</div>

		</div>
		<input type="hidden" name="question<%=i%>"
			value="<%=question.getQuestion()%>"> <input type="hidden"
			name="qid<%=i%>" value="<%=question.getQuestionId()%>">



		<%
			}
		%>


		<input type="hidden" name="page" value="exams"> <input
			type="hidden" name="operation" value="submitted">
		<div class="col-lg-6">
			<button type="submit" class="btn-success form-control">Submit</button>
		</div>
</form>



<%
	}
} else if (request.getParameter("showresult") != null) {
if (request.getParameter("showresult").equals("1")) {
Exams result = pDAO.getResultByExamId(Integer.parseInt(request.getParameter("eid")));
%>
<div class="container jumbotron">
	<center>
		<h2>Result of Recent Exam</h2>
	</center>
	<table id="rounded-corner" class="table table-striped text-center">
		<thead>
			<tr>
				<th>Exam Date</th>
				<th>Start Time</th>
				<th>End Time</th>
				<th>Course Name</th>
				<th>Obt Marks</th>
				<th>Total Marks</th>
				<th>Result</th>
			</tr>
		</thead>
		<tbody>
			<tr>
				<td><%=result.getDate()%></td>
				<td><%=result.getStartTime()%></td>
				<td><%=result.getEndTime()%></td>
				<td><%=result.getcName()%></td>
				<td><%=result.getObtMarks()%></td>
				<td><%=result.gettMarks()%></td>
				<td><strong><%=result.getStatus()%></strong></td>
		</tbody>
	</table>
</div>
<%
	}
} else if (session.getAttribute("examStarted") == null) {
%>

<center>
	<div class="container jumbotron">
		<div class="col-lg-12">
			<h3>Select Course to Take Exam...</h3>
			<br />
			<div class="col-lg-8">
				<form action="controller.jsp" class="form-group">
					<label><h5>Select Course</h5></label> <input type="hidden"
						name="page" value="exams"> <input type="hidden"
						name="operation" value="startexam"> <select
						name="coursename" class="form-control">
						<%
							ArrayList list1 = pDAO.getAllCourses();

						for (int i = 0; i < list1.size(); i = i + 2) {
						%>
						<option value="<%=list1.get(i)%>"><%=list1.get(i)%></option>
						<%
							}
						%>
					</select>
			</div>
			<div class="col-lg-8">
				<button type="submit" class="btn-primary form-control">Take
					Exam</button>
			</div>
			</form>

		</div>
		<%
			}
		%>
	</div>
</center>

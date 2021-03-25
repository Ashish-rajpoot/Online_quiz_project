
<%@page import="myPackage.classes.Questions"%>
<%@page import="java.util.ArrayList"%>
<jsp:useBean id="pDAO" class="myPackage.DatabaseClass" scope="page" />



<center>
	<%
					if (request.getParameter("coursename") != null) {
					ArrayList list = pDAO.getAllQuestions(request.getParameter("coursename"));
					for (int i = 0; i < list.size(); i++) {
						Questions question = (Questions) list.get(i);
				%>
	
				<div class="container jumbotron">
			<div class="question">
				<label class="col-sm-1 form-control"><%=i + 1%></label>
				<h3><%=question.getQuestion()%></h3>
			</div>

			<div class="form-group" style="font-size: x-large;">
				<input type="radio" id="c1<%=i%>" name="ans<%=i%>"
					value="<%=question.getOpt1()%>" disabled="disabled"/> <label for="c1<%=i%>"><%=question.getOpt1()%></label>
				<input type="radio" id="c2<%=i%>" name="ans<%=i%>"
					value="<%=question.getOpt2()%>" disabled="disabled"/> <label for="c2<%=i%>"><%=question.getOpt2()%></label>
				<input type="radio" id="c3<%=i%>" name="ans<%=i%>"
					value="<%=question.getOpt3()%>" disabled="disabled"/> <label for="c3<%=i%>"><%=question.getOpt3()%></label>
				<input type="radio" id="c4<%=i%>" name="ans<%=i%>"
					value="<%=question.getOpt4()%>" disabled="disabled"/> <label for="c4<%=i%>"><%=question.getOpt4()%></label>
			</div>

	
			<a
						href="controller.jsp?page=questions&operation=delQuestion&qid=<%=question.getQuestionId()%>"
						onclick="return confirm('Are you sure you want to delete this ?');">
						<div class="col-sm-2">
					<button type="submit"style="position: right"  class="btn-danger form-control">Delete</button>
							</div>
					</a>

			<%
					}
				}
				%>
				</div>
		
</center>
</div>
</div>
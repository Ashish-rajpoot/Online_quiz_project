
<%@page import="java.util.ArrayList"%>
<jsp:useBean id="pDAO" class="myPackage.DatabaseClass" scope="page" />


<div class="container jumbotron">
	<br>

	<!-- Profarma to signup and login -->
	<div class="container">
		<div class="row">
			<div class="col-lg-4">
				<form action="adm-page.jsp">
					<div class="col-lg-12">
						<h3>Show All Questions for</h3>
						<br> <br> <label>Select Course</label> <input
							type="hidden" name="pgprt" value="4"> <select
							name="coursename" class="custom-select form-control" required="required">
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
					<div class="col-lg-12">
						<button type="submit" class="btn-primary form-control">Show Question</button>
					</div>
				</form>
			</div>
			<div class="col-lg-8">
				<form action="controller.jsp">
					<h3>Add New Question</h3>

					<fieldset class="col-lg-12 form-group">
						<label>Course Name</label> <select
							class="custom-select form-control" name="coursename" required="required">
							<%
								ArrayList list = pDAO.getAllCourses();

							for (int i = 0; i < list.size(); i = i + 2) {
							%>
							<option value="<%=list.get(i)%>"><%=list.get(i)%></option>
							<%
								}
							%>
						</select>
					</fieldset>
					<fieldset class=" col-lg-12 form-group">
						<label>Your Question:</label> <input type="text" name="question"
							class="form-control" name="name" required="required"
							placeholder="Type your question here" required="required">
					</fieldset>
					<fieldset class="col-lg-12">
						<label>Options</label> <input type="text" name="opt1"
							class="form-control" placeholder="First Option" required="required"> <input
							type="text" name="opt2" class="form-control"
							placeholder="Second Option" required="required"> <input type="text"
							name="opt3" class="form-control" placeholder="Third Option" required="required">
						<input type="text" name="opt4" class="form-control"
							placeholder="Fourth Option" required="required">
					</fieldset>

					<fieldset class="col-lg-12">
					<label>Correct Answer</label>
					 <input type="text"
							name="correct" class="form-control"
							placeholder="Correct Answer" required="required">
					</fieldset>
						<input type="hidden" name="page"
							value="questions"> <input type="hidden" name="operation"
							value="addnew">
						<br />	
					<fieldset class="col-lg-12">
						<button type="submit" class="btn-primary form-control" value="add" name="submit">Add
							Question</button>
					</fieldset>
				</form>
			</div>
		</div>
	</div>
</div>
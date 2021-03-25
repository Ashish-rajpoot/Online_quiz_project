
<%@page import="java.util.ArrayList"%>
<jsp:useBean id="pDAO" class="myPackage.DatabaseClass" scope="page" />

<div class="container jumbotron">
	<br>

	<!-- Profarma to signup and login -->
	<div class="container ">
		<div class="row">
			<div class="col-lg-6">
				<h3>All Courses!</h3>
				<div align="center">
					<table class="table table-striped text-center">
						<thead>
							<tr>
								<th>Courses</th>
								<th>Total Marks</th>
								<th>Action</th>
							</tr>
						</thead>
						<tbody>

							<%
								ArrayList list = pDAO.getAllCourses();
							for (int i = 0; i < list.size(); i = i + 2) {
							%>
							<tr>
								<td><%=list.get(i)%></td>
								<td><%=list.get(i + 1)%></td>
								<td><a
									href="controller.jsp?page=courses&operation=del&cname=<%=list.get(i)%>"
									onclick="return confirm('Are you sure you want to delete this ?');"
									class="btn btn-danger" role="button">Delete </a></td>
							</tr>
							<%
								}
							%>
						</tbody>
					</table>
				</div>
			</div>

			<div class="col-lg-6">
				<h3>Add New Course !</h3>
				<form action="controller.jsp">
					<div class="col-lg-12">
						<label>Course Name</label> <input type="text" name="coursename"
							class="form-control" required="required">
					</div>
					<div class="col-lg-12">
						<label>Total Marks</label> <input type="text" name="totalmarks"
							class="form-control" required="required">
					</div>
					<div class="col-lg-12">
						<label>Exam Time</label> <input type="text" name="time"
							class="form-control" required="required">
					</div>
					<div class="col-lg-12">
						<input type="hidden" name="page" value="courses"
							class="form-control"> <input type="hidden"
							name="operation" value="addnew" class="form-control">
							<br />
					</div>
					<div class="col-lg-12">
						<button type="submit" class="btn-primary form-control">Add
							Course</button>
					</div>
				</form>
			</div>
		</div>
	</div>
</div>





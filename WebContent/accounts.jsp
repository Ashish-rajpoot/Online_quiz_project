
<%@page import="myPackage.classes.User"%>
<%@page import="java.util.ArrayList"%>
<jsp:useBean id="pDAO" class="myPackage.DatabaseClass" scope="page" />

<div class="container jumbotron">

	<h3>List of All Registered Persons</h3>




<br />
	<table class="table table-striped text-center">
		<thead>
			<tr>
				<th>Name</th>
 
				<th>email</th>
				<th>City</th>
				<th>Address</th>
				<th>Action</th>

			</tr>
		</thead>
		<tbody>
			<%
              ArrayList list=pDAO.getAllUsers();
              User user;
              for(int i=0;i<list.size();i++){
                  user=(User)list.get(i);
                  if(user.getUserId()!= Integer.parseInt(session.getAttribute("userId").toString())){
               %>

			<tr>
				<td><%=user.getFirstName()+" "+user.getLastName() %></td>
				<td><%=user.getEmail() %></td>
				<td><%=user.getCity() %></td>
				<td><%=user.getAddress() %></td>
				<td><a
					href="controller.jsp?page=accounts&operation=del&uid=<%=user.getUserId() %>"
					onclick="return confirm('Are you sure you want to delete this ?');">
						<div class="btn btn-danger" role="button">Delete User</div>
				</a></td>

			</tr>



			<%
                  }
                  } %>

		</tbody>
	</table>

</div>

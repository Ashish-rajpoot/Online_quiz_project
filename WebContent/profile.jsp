
<%@page import="myPackage.classes.User"%>
<%@page import="java.util.ArrayList"%>
<jsp:useBean id="pDAO" class="myPackage.DatabaseClass" scope="page" />

<%
           User user=pDAO.getUserDetails(session.getAttribute("userId").toString());
          
        %>

<%
         
           if(request.getParameter("pedt")==null){
           %>

<div align="center">
	<table class="table table-striped text-center">
		<thead>

			<tr>
				<th>Your Name</th>
				<th>Email</th>
				<th>Contact</th>
				<th>City</th>
				<th>Address</th>
				<th>Action</th>
			</tr>
		</thead>
		<tbody>

			<tr>
				<td><%=user.getFirstName()+" " %><%=user.getLastName() %></td>
				<td><%=user.getEmail() %></td>
				<td><%=user.getContact() %></td>
				<td><%=user.getCity() %></td>
				<td><%=user.getAddress() %></td>
				<td>
					<%
               if(user.getType().equals("admin")){
               %> <a class="btn btn-success"
					href="adm-page.jsp?pgprt=0&pedt=1" role="button">Edit Profile</a> <% 
               }else{
               %> <a class="btn btn-success"
					href="std-page.jsp?pgprt=0&pedt=1" role="button">Edit Profile</a> <% 
               }
               %>
				</td>
			</tr>

		</tbody>
	</table>
</div>
<%}else{%>
<div class="container col-md-5">
	<form action="controller.jsp">
		<input type="hidden" name="page" value="profile"> <input
			type="hidden" name="utype" value="<%=user.getType()%>">
		<fieldset class="form-group">
			<label>First Name</label> <input type="text"
				value="<%=user.getFirstName() %>" class="form-control" name="fname"
				required="required">
		</fieldset>
		<fieldset class="form-group">
			<label>Last Name:</label> <input type="text"
				value="<%=user.getLastName() %>" class="form-control" name="lname"
				required="required">
		</fieldset>
		<fieldset class="form-group">
			<label>User Name:</label> <input type="text"
				value="<%=user.getUserName() %>" class="form-control" name="uname"
				required="required">
		</fieldset>
		<fieldset class="form-group">
			<label>Email:</label> <input type="text"
				value="<%=user.getEmail() %>" class="form-control" name="email"
				required="required">
		</fieldset>
		<fieldset class="form-group">
			<label>Password:</label> <input type="text"
				value="<%=user.getPassword() %>" class="form-control" name="pass"
				required="required">
		</fieldset>
		<fieldset class="form-group">
			<label>Contact</label> <input type="text"
				value="<%=user.getContact() %>" class="form-control" name="contact"
				required="required">
		</fieldset>
		<fieldset class="form-group">
			<label>City</label> <input type="text" value="<%=user.getCity() %>"
				class="form-control" name="city" required="required">
		</fieldset>
		<fieldset class="form-group">
			<label>Address</label> <input type="text"
				value="<%=user.getAddress()%>" class="form-control" name="address"
				required="required">
		</fieldset>
		<button type="submit" name="submit" class="btn-primary form-control">Update
			Profile</button>
	</form>
</div>
<%}%>

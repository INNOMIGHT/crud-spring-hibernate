<%@include file="common/header.jspf" %>
<body>
<%@ include file="common/navigation.jspf" %>
<form>

<div class="container">
	Hi ${name} <br> 
		<table class="table table-striped">
			<caption>Your Todos are</caption>

			<thead>
				<tr>
					<th>Description</th>
					<th>Date</th>
					<th>Completed</th>
					<th>Remove</th>
				</tr>
			</thead>

			<tbody>
				<c:forEach items="${todos}" var="todo">
					<tr>
						<td>${todo.desc}</td>
						<td><fmt:formatDate pattern="dd/MM/yyyy" value="${todo.targetDate}" /></td>
						<td>${todo.done}</td>
						<td>
						<a type="button" class="btn btn-success" 
								href="/update-todo?id=${todo.id}">Update</a>
						<a type="button" class="btn btn-warning" 
								href="/delete-todo?id=${todo.id}">Delete</a>
						</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
		<div>
			<a class="btn btn-success" href="/add-todo">Add</a>
		</div>
	</div>
</form>
<script src="webjars/jquery/1.9.1/jquery.min.js"></script>
	    <script src="webjars/bootstrap/3.3.6/js/bootstrap.min.js"></script>
</body>
</html>
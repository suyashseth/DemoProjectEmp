
<%@page import="com.dev.dto.Employee"%>
<html lang="en">
<head>
<meta charset="UTF-8">
<title></title>
<!-- <link rel="stylesheet" href="Header.css"> -->
<style >
footer{
    background-color: #424558;
    position: fixed;
    bottom: 0;
    left: 0;
    right: 0;
    height: 35px;
    text-align: center;
    color: #CCC;
}
a{
color : white;
}
footer p {
    padding: 10.5px;
    margin: 0px;
    line-height: 100%;
}
.top{
margin-left:30%;
}
#para1 {
   
    color:white;
}

</style>

<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css"
	integrity="sha384-WskhaSGFgHYWDcbwN70/dfYBj47jz9qbsMId/iRN3ewGhXQFZCSftd1LZCfmhktB"
	crossorigin="anonymous">
</head>
<body>
	<header class="top-bar js-top-bar _fixed _scrolling">
		<div class="container-fluid ">
			<nav
				class="navbar navbar-expand-lg navbar-expand-lg  fixed-top bg-dark">
				<a id="para1">Employee</a>
				<button class="navbar-toggler" type="button" data-toggle="collapse"
					data-target="#navbarSupportedContent"
					aria-controls="navbarSupportedContent" aria-expanded="false"
					aria-label="Toggle navigation">
					<span class="navbar-toggler-icon"></span>
				</button>
				<form class="form-inline my-2 my-md-0 " action="./searchReturn"
					method="POST">
					<div class="collapse navbar-collapse">
						<ul class="navbar-nav mr-auto">

								<li class="nav-item active" align="right"><a
								class="nav-link" href="./logout">Logout</a>
								</li> &nbsp;&nbsp;&emsp;&emsp;&emsp;&emsp;
							&nbsp;&nbsp;&emsp;&emsp;&emsp;&emsp;
							&nbsp;&nbsp;&emsp;&emsp;&emsp;&emsp;
							&nbsp;&nbsp;&emsp;&emsp;&emsp;&emsp;
							&nbsp;&nbsp;&nbsp;&nbsp;&emsp;&emsp;&emsp;&emsp;
							&nbsp;&nbsp;&emsp;&emsp;&emsp;&emsp;
							&nbsp;&nbsp;&emsp;&emsp;&emsp;&emsp;
							&nbsp;&nbsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;
							&nbsp;&nbsp;&emsp;&emsp;&emsp;&emsp; &nbsp;&nbsp;&emsp;

							&nbsp;&nbsp;&emsp;&emsp;
							<input class="form-control mr-sm-2" type="text" name="emp_ID"
								placeholder="Search by emp id" aria-label="Search">
							<button type="submit" class="btn btn-outline-success my-2 my-sm-0">Search</button>

							

						</ul>
					</div>
				</form>

			</nav>

		</div>
	</header>
	<div id="about" class="container-fluid jumbotron">
		<div class="row">
			<div class="col-sm-12">
				<%
					Employee emp = (Employee) request.getAttribute("emp1");
				%>
				<table class="table table-condensed" border="2">

					<tr>
						<b>
							<td><b>Emp_id</b></td>
							<td><b>FirstName</b></td>
							<td><b>LastName</b></td>
							<td><b>Date Of Birth</b></td>
							<td><b>Date Of joining</b></td>
							<td><b>Department Id</b></td>
							<td><b>Grade</b></td>
							<td><b>Designation</b></td>
							<td><b>Basic Salary</b></td>
							<td><b>Gender</b></td>
							<td><b>Marital Status</b></td>
							<td><b>Home Address</b></td>
							<td><b>Contact No</b></td>
						</b>
					</tr>
					<tr align="center">
						<td><%=emp.getEmp_ID()%></td>

						<td><%=emp.getEmp_First_Name()%></td>

						<td><%=emp.getEmp_Last_Name()%></td>

						<td><%=emp.getEmp_Date_of_Birth()%></td>

						<td><%=emp.getEmp_Date_of_Joining()%></td>

						<td><%=emp.getEmp_Dept_ID()%></td>

						<td><%=emp.getEmp_Grade()%></td>

						<td><%=emp.getEmp_Designation()%></td>

						<td><%=emp.getEmp_Basic()%></td>

						<td><%=emp.getEmp_Gender()%></td>

						<td><%=emp.getEmp_Marital_Status()%></td>

						<td><%=emp.getEmp_Home_Address()%></td>

						<td><%=emp.getEmp_Contact_Num()%></td>


					</tr>
				</table>

			</div>

		</div>
	</div>

	<footer>
    <p><marquee>� 2018 Xforce, All rights reserved 2018.</marquee></p>
</footer>
</body>
</html>
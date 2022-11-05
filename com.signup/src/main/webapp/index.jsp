<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>SignUp</title>

<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

<style type="text/css">
.banner-background {
	clip-path: polygon(30% 0%, 70% 0%, 100% 0, 99% 95%, 64% 100%, 29% 96%, 0 100%, 0 0);
}

.primary-background {
	background: #2196f3 !important;
}
</style>



</head>
<body>

	<main class="primary-background p-5">
		<div class="container">
			<div class="col-md-6 offset-md-3">
				<div class="card">
					<div class="card-header primary-background text-white text-center">
						<br> <span class="fa fa-user-plus fa-3x"></span>
						<p>Register here</p>
					</div>
					<div class="card-body">
						<form action="RegisterServlet" id="sign" method="POST">
							<div class="form-group">
								<label for="name">First Name</label> <input name="firstName"
									required type="text" class="form-control" id="firstName"
									placeholder="Enter First name">

							</div>
							<div class="form-group">
								<label for="name">Last Name</label> <input name="lastName"
									required type="text" class="form-control" id="lastName"
									placeholder="Enter Last name">

							</div>
							<div class="form-group">
								<label for="exampleInputEmail1">Email address</label> <input
									name="email" required type="email" class="form-control"
									id="email" aria-describedby="emailHelp"
									placeholder="Enter email"> <small id="emailHelp"
									class="form-text text-muted">We'll never share your
									email with anyone else.</small>
							</div>
							<div class="form-group">
								<label for="name">Phone number</label> <input name="pNumber"
									required type="text" class="form-control" id="pNumber"
									placeholder="Enter Phone Number">

							</div>
							<div class="form-group">
								<label for="exampleInputPassword1">Password</label> <input
									name="pwd" required type="password" class="form-control"
									id="pwd" placeholder="Password"> <small id="emailHelp"
									class="form-text text-muted">Never share your password
									with anyone.</small>
							</div>

							<br>
							<div>
								<button id="submit-btn" type="submit" class="btn btn-primary">Submit</button>
							</div>
						</form>
					</div>
				</div>

			</div>

		</div>

	</main>

</body>
</html>
<jsp:include page="template-top-employee.jsp" />
<h1>&nbsp</h1>
<h1>&nbsp</h1>
	<form class="form-horizontal" role="form" action="depositCheck.do" method="POST">
	<jsp:include page="error.jsp" />
	<div class="form-group">
		<label class="control-label col-sm-2" for="userName">User
			Name:</label>
		<div class="col-sm-4">
			<input type="text" class="form-control" id="userName"
				name="userName" placeholder="User Name" value="${form.userName}">
		</div>
	</div>
	<div class="form-group">
		<label class="control-label col-sm-2" for="depositAmount">Amount:</label>
		<div class="col-sm-4">
			<input type="text" class="form-control" id="depositAmount"
				name="depositAmount" placeholder="Dollar in two decimal places" value="${form.depositAmount}">
		</div>
	</div>
	<div class="form-group">
		<div class="col-sm-offset-2 col-sm-4">
			<button type="submit" id="action" name="action" value="Deposit Money"
				class="btn btn-success pull-left">Deposit Money</button>
		</div>
	</div>
	</form>
<jsp:include page="template-bottom.jsp" />
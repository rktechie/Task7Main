<jsp:include page="template-top-employee.jsp" />

<br><br><br>

<div class="jumbotron text-center">
	<h1>&nbsp</h1>
	<form action="viewCustomerTransaction.do" method="POST">
		<div class="row">
			<div class="col-md-6">
				<table class="table table-bordered">
					<tbody>
                        <tr>
                            <td class="col-md-6 text-right">Customer User Name:</td>
                            <td class="col-md-8 text-left"><input type="text"
                                class="form-control" id="customerLastName" placeholder="Enter customer user name">
                        </tr>
						<tr>
							<td></td>
							<td><button type="submit" class="btn btn-success pull-left">View Transaction</button></td>
						</tr>
					</tbody>
				</table>
			</div>
		</div>
	</form>
</div>

<jsp:include page="template-bottom.jsp" />
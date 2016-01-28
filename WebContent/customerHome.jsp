<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<jsp:include page="template-top-customer.jsp" />
<br>
<br>
<br>
<jsp:include page="error.jsp" />
<div class="container-fluid">
	<div class="col-lg-6">
		<h3>Customer information:</h3>
		<div class="table-responsive">
			<table class="table table-hover table-striped">
				<tbody>
					<tr>
						<td>Account User Name:</td>
						<td colspan="2">${user.getUserName()}</td>
					</tr>
					<tr>
						<td width="40%">Customer Name:</td>
						<td colspan="2">${user.getFirstName()}${user.getLastName()}</td>

					</tr>

					<tr>
						<td>Address:</td>
						<td colspan="2">${user.getAddress1() } ${user.getAddress2() }</td>

					</tr>
					<tr>
						<td>City:</td>
						<td colspan="2">${user.getCity() }</td>

					</tr>
					<tr>
						<td>State:</td>
						<td colspan="2">${user.getState()}</td>

					</tr>
					<tr>
						<td>Zip:</td>
						<td colspan="2">${user.getZipcode()}</td>

					</tr>
					<tr>
						<td>Lash trading day:</td>
						<td colspan="2">${lastDay}</td>

					</tr>
					<tr>
						<td>Available Balance:</td>
						<td><b>$ ${avai_cash}</b></td>

					</tr>
				</tbody>
			</table>
		</div>

		<h3>Funds owned:</h3>
		<div class="table-responsive">
			<table class="table table-hover table-striped">


				<c:choose>

					<c:when test="${(empty positionInfoList)}"> You Don't own any Funds currently!</c:when>
					<c:otherwise>
						<thead>
							<tr>
								<td width="20%"><b>Fund Name</b></td>
								<td align="right"><b>Shares</b></td>
								<td align="right"><b>Value</b></td>
							</tr>
						</thead>
						<tbody>
							<c:forEach var="u" items="${positionInfoList}">


								<tr>
									<td>${ u.getName() }</td>
									<td align="right">${ u.getShares() }</td>
									<td align="right">${u.getTotal()}</td>
								</tr>
							</c:forEach>
						</tbody>
					</c:otherwise>
				</c:choose>
			</table>
		</div>
	</div>
</div>

<jsp:include page="template-bottom.jsp" />

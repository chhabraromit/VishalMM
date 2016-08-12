<%-- <%@ page trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="template" tagdir="/WEB-INF/tags/responsive/template"%>
<%@ taglib prefix="cms" uri="http://hybris.com/tld/cmstags"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="nav" tagdir="/WEB-INF/tags/responsive/nav" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="ycommerce" uri="http://hybris.com/tld/ycommercetags" %>
<%@ taglib prefix="pagination" tagdir="/WEB-INF/tags/responsive/nav/pagination" %>


<spring:url value="/my-account/order/" var="orderDetailsUrl"/>
<c:set var="searchUrl" value="/my-account/orders?sort=${searchPageData.pagination.sort}"/>

<div class="account-section-header">
	<spring:theme code="text.account.orderHistory" />
</div>

<c:if test="${empty searchPageData.results}">
	<div class="account-section-content content-empty">
		<ycommerce:testId code="orderHistory_noOrders_label">
			<spring:theme code="text.account.orderHistory.noOrders" />
		</ycommerce:testId>
	</div>
</c:if>
<c:if test="${not empty searchPageData.results}">
	<div class="account-section-content	">
		<div class="account-orderhistory">
			<div class="account-orderhistory-pagination">
				<nav:pagination top="true" msgKey="text.account.orderHistory.page" showCurrentPageInfo="true" hideRefineButton="true" supportShowPaged="${isShowPageAllowed}" supportShowAll="${isShowAllAllowed}" searchPageData="${searchPageData}" searchUrl="${searchUrl}"  numberPagesShown="${numberPagesShown}"/>
			</div>
            <div class="account-overview-table">
				<table class="orderhistory-list-table responsive-table">
					<tr class="account-orderhistory-table-head responsive-table-head hidden-xs">
						<th><spring:theme code="text.account.orderHistory.orderNumber" /></th>
						<th><spring:theme code="text.account.orderHistory.orderStatus"/></th>
						<th><spring:theme code="text.account.orderHistory.datePlaced"/></th>
						<th><spring:theme code="text.account.orderHistory.total"/></th>
					</tr>
					<c:forEach items="${searchPageData.results}" var="order">
						<tr class="responsive-table-item">
							<ycommerce:testId code="orderHistoryItem_orderDetails_link">
								<td class="hidden-sm hidden-md hidden-lg"><spring:theme code="text.account.orderHistory.orderNumber" /></td>
								<td class="responsive-table-cell">
									<a href="${orderDetailsUrl}${order.code}" class="responsive-table-link">
										${order.code}
									</a>
								</td>
								<td class="hidden-sm hidden-md hidden-lg"><spring:theme code="text.account.orderHistory.orderStatus"/></td>																
								<td class="status">
									<spring:theme code="text.account.order.status.display.${order.statusDisplay}"/>
								</td>
								<td class="hidden-sm hidden-md hidden-lg"><spring:theme code="text.account.orderHistory.datePlaced"/></td>
								<td class="responsive-table-cell">
									<fmt:formatDate value="${order.placed}" dateStyle="medium" timeStyle="short" type="both"/>
								</td>
								<td class="hidden-sm hidden-md hidden-lg"><spring:theme code="text.account.orderHistory.total"/></td>
								<td class="responsive-table-cell responsive-table-cell-bold">
									${order.total.formattedValue}
								</td>
							</ycommerce:testId>
						</tr>
					</c:forEach>
				</table>
            </div>
		</div>
		<div class="account-orderhistory-pagination">
			<nav:pagination top="false" msgKey="text.account.orderHistory.page" showCurrentPageInfo="true" hideRefineButton="true" supportShowPaged="${isShowPageAllowed}" supportShowAll="${isShowAllAllowed}" searchPageData="${searchPageData}" searchUrl="${searchUrl}"  numberPagesShown="${numberPagesShown}"/>
		</div>
	</div>
</c:if> --%>

<%@ page trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="template" tagdir="/WEB-INF/tags/responsive/template"%>
<%@ taglib prefix="cms" uri="http://hybris.com/tld/cmstags"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="nav" tagdir="/WEB-INF/tags/responsive/nav" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="ycommerce" uri="http://hybris.com/tld/ycommercetags" %>
<%@ taglib prefix="pagination" tagdir="/WEB-INF/tags/responsive/nav/pagination" %>

<link rel="stylesheet" type="text/css" href="http://webexperts.info/demo/v_mart/assets/css/bootstrap/bootstrap.min.css" ></link>
<spring:url value="/my-account/order/" var="orderDetailsUrl"/>
<c:set var="searchUrl" value="/my-account/orders?sort=${searchPageData.pagination.sort}"/>
<style type="text/css">
	body {
		background-color:#f5f5f5 !important;
	}
	.account-section .account-section-header {
  color: #3c3c3c;
  font-size: 24px;
  line-height: 35px;
  font-weight: 700;
  padding: 20px 0;
  text-transform: capitalize;
  border-bottom: 0px solid #cccccc;
}

table th {
	background-color: transparent;
	text-transform: none;
	color: #000;
}

th {
	font-weight: bold !important;
}

table {
  border-collapse: collapse;
  border-spacing: 0;
}

table th:last-child {
	float: left;
}

.responsive-table-item td:last-child {
	float: left;
}

.order-history-div {
	background-color
}
</style>

<c:if test="${empty searchPageData.results}">
	<div class="account-section-content	col-md-6 col-md-push-3 content-empty">
		<ycommerce:testId code="orderHistory_noOrders_label">
			<spring:theme code="text.account.orderHistory.noOrders" />
		</ycommerce:testId>
	</div>
</c:if>
<c:if test="${not empty searchPageData.results}">
<section class=" display_b">
  <div class="container pad_tp_30">
    <div class="row">
      <div class="col-md-12 col-sm-12 col-xs-12 margn_bot_50">
        <h2 class="margn_bot_25 margn_tp_n">Order History</h2>
        <div class="order_history_div">
          <table width="100%" border="0" cellspacing="5" cellpadding="5">
            <tr>
              <th>Order Number:</th>
              <th>Order Status</th>
              <th>Date Place</th>
              <th>Total</th>
            </tr>
            <c:forEach items="${searchPageData.results}" var="order">
	            <tr>
	              <td><a href="${orderDetailsUrl}${order.code}">${order.code}</a></td>
	              <td><spring:theme code="text.account.order.status.display.${order.statusDisplay}"/></td>
	              <td><fmt:formatDate value="${order.placed}" dateStyle="medium" timeStyle="short" type="both"/></td>
	              <td>${order.total.formattedValue}</td>
	            </tr>
            </c:forEach>
          </table>
        </div>
      </div>
    </div>
  </div>
</section>
</c:if>
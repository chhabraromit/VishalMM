<%@ tag body-content="empty" trimDirectiveWhitespaces="true"%>
<%@ attribute name="order" required="true"
	type="de.hybris.platform.commercefacades.order.data.OrderData"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="format" tagdir="/WEB-INF/tags/shared/format"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="ycommerce" uri="http://hybris.com/tld/ycommercetags"%>

<!-- <div class="container">


		<div class="col-md-6 col-sm-6 col-xs-12 margn_bot_50">
			<div class="order_history_div"> -->
				<div>
					<p class="fnt_16">
						<strong><spring:theme
								code="text.account.orderHistory.orderNumber" /></strong>
						<ycommerce:testId code="orderDetail_overviewOrderID_label">
							<span >${fn:escapeXml(orderData.code)}</span>
						</ycommerce:testId>
					</p>

					<p class="clearfix">
						<span class="pull-left"><spring:theme
								code="text.account.orderHistory.orderStatus" /></span> 
						<span	class="pull-right"> 
						<c:if 	test="${not empty orderData.statusDisplay}">
								
									<!-- <div class="item-group"> -->
										<ycommerce:testId code="orderDetail_overviewOrderStatus_label">
											<span class="item-value"><spring:theme
													code="text.account.order.status.display.${orderData.statusDisplay}" /></span>
										</ycommerce:testId>
								
								<!-- </div> -->
							</c:if></span>
					</p>
					<p class="clearfix">
						<span class="pull-left"><spring:theme
								code="text.account.orderHistory.datePlaced" /></span><span
							class="pull-right"><ycommerce:testId
								code="orderDetail_overviewStatusDate_label">
								<span class="item-value"><fmt:formatDate
										value="${order.created}" dateStyle="medium" timeStyle="short"
										type="both" /></span>
							</ycommerce:testId></span>
					</p>
					<div class="clearfix margn_top_15">
						<span class="pull-left fnt_20"><strong><spring:theme
									code="text.account.order.total" /></strong></span> <span
							class="pull-right fnt_20"><strong><ycommerce:testId
									code="orderDetail_overviewOrderTotal_label">
									<span class="item-value"><format:price
											priceData="${order.totalPrice}" /></span>
								</ycommerce:testId></strong></span>
					</div>
					<div class="dvider_t"></div>
				</div>
				
			<!-- </div>
		</div>

</div> -->
<%--  
<div class="order-detail-overview">
    <div class="row">
        <div class="col-sm-3">
            <div class="item-group">
                <ycommerce:testId code="orderDetail_overviewOrderID_label">
                    <span class="item-label"><spring:theme code="text.account.orderHistory.orderNumber"/></span>
                    <span class="item-value">${fn:escapeXml(orderData.code)}</span>
                </ycommerce:testId>
            </div>
        </div>
        <c:if test="${not empty orderData.statusDisplay}">
            <div class="col-sm-3">
                <div class="item-group">
                    <ycommerce:testId code="orderDetail_overviewOrderStatus_label">
                        <span class="item-label"><spring:theme code="text.account.orderHistory.orderStatus"/></span>
                        <span class="item-value"><spring:theme code="text.account.order.status.display.${orderData.statusDisplay}"/></span>
                    </ycommerce:testId>
                </div>
            </div>
        </c:if>
        <div class="col-sm-3">
            <div class="item-group">
                <ycommerce:testId code="orderDetail_overviewStatusDate_label">
                    <span class="item-label"><spring:theme code="text.account.orderHistory.datePlaced"/></span>
                    <span class="item-value"><fmt:formatDate value="${order.created}" dateStyle="medium" timeStyle="short" type="both"/></span>
                </ycommerce:testId>
            </div>
        </div>
        <div class="col-sm-3">
            <div class="item-group">
                <ycommerce:testId code="orderDetail_overviewOrderTotal_label">
                    <span class="item-label"><spring:theme code="text.account.order.total"/></span>
                    <span class="item-value"><format:price priceData="${order.totalPrice}"/></span>
                </ycommerce:testId>
            </div>
        </div>
    </div>
</div>  --%>
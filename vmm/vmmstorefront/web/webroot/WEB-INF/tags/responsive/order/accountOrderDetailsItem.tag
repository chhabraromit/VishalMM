<%@ tag body-content="empty" trimDirectiveWhitespaces="true" %>
<%@ attribute name="order" required="true" type="de.hybris.platform.commercefacades.order.data.OrderData" %>
<%@ attribute name="consignment" required="true" type="de.hybris.platform.commercefacades.order.data.ConsignmentData" %>
<%@ attribute name="inProgress" required="false" type="java.lang.Boolean" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="ycommerce" uri="http://hybris.com/tld/ycommercetags" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="order" tagdir="/WEB-INF/tags/responsive/order" %>

<!-- <div class="container">
  
  <div class="row">
    <div class="col-md-6 col-sm-6 col-xs-12 margn_bot_50">
      <h2 class="margn_bot_25 margn_tp_n">Order History</h2>
      <div class="order_history_div"> -->
       <!--  <div>
          <p class="fnt_16"><strong>Order:</strong> 000010102</p>
          <p class="clearfix"><span class="pull-left">Order Status:</span><span class="pull-right">Complete</span></p>
          <p class="clearfix"><span class="pull-left">Date placed:</span><span class="pull-right">May 23 2016, 13:50PM</span></p>
          <div class="clearfix margn_top_15"><span class="pull-left fnt_20"><strong>Total</strong></span> <span class="pull-right fnt_20"><strong>$107.80</strong></span></div>
          <div class="dvider_t"></div>
        </div> -->
        <%-- <h4><spring:theme code="text.account.order.shipto"/></h4>
        <div class="row">
          <div class="col-xs-6">
            <address><order:addressItem address="${orderData.deliveryAddress}"/>
            </address>
          </div>
          <div class="col-xs-6 text-right track_an"> 	<a href="#">Track Your Order</a> </div>
        </div> --%>
      <!-- </div>
    </div> -->
     <div class="">
<!--       <h2 class="margn_bot_25 margn_tp_n">Item Details</h2>
 -->      <!-- <div class="order_history_div">
        <div class="row"> -->
          <ycommerce:testId code="orderDetail_itemBody_section">
		<c:forEach items="${consignment.entries}" var="entry" varStatus="loop">
			<order:orderEntryDetails orderEntry="${entry.orderEntry}" consignmentEntry="${entry}" order="${order}" itemIndex="${loop.index}"/>
		</c:forEach>
	</ycommerce:testId>
        </div>
        
        
      <!-- </div>
    </div> -->
 <!--  </div>
</div> -->


<%-- <div class="well well-quinary well-xs">
	<ycommerce:testId code="orderDetail_itemHeader_section">			
		<div class="well-headline">
            <ycommerce:testId code="orderDetail_consignmentStatus_label">
                <spring:theme code="text.account.order.consignment.status.${consignment.statusDisplay}" />
            </ycommerce:testId>

			<ycommerce:testId code="orderDetail_consignmentStatusDate_label">
				<span class="well-headline-sub">
                    <fmt:formatDate value="${consignment.statusDate}" dateStyle="medium" timeStyle="short" type="both"/>
                </span>
			</ycommerce:testId>
		</div>

        <div class="well-content col-sm-12 col-md-9">
            <div class="row">
                <div class="col-sm-12 col-md-9">
                    <c:choose>
                        <c:when test="${consignment.deliveryPointOfService ne null}">
                            <ycommerce:testId code="orderDetail_storeDetails_section">
                                <order:storeAddressItem deliveryPointOfService="${consignment.deliveryPointOfService}" inProgress="${inProgress}" statusDate="${consignment.statusDate}"/>
                            </ycommerce:testId>
                        </c:when>
                        <c:otherwise>
                            <div class="row">
                                <div class="col-sm-6 col-md-4">
                                    <div class="order-ship-to">
                                        <ycommerce:testId code="orderDetail_deliveryAddress_section">
                                            <div class="label-order"><spring:theme code="text.account.order.shipto"/></div>
                                            <div class="value-order"><order:addressItem address="${orderData.deliveryAddress}"/></div>
                                        </ycommerce:testId>
                                    </div>
                                </div>

                                <div class="col-sm-6 col-md-4">
                                    <div class="order-shipping-method">
                                        <ycommerce:testId code="orderDetail_deliveryMethod_section">
                                            <order:deliveryMethodItem order="${orderData}"/>
                                        </ycommerce:testId>
                                    </div>
                                </div>
                            </div>

                            <c:if test="${not inProgress}">
                                <c:choose>
                                    <c:when test="${consignment.status.code eq 'SHIPPED' and not empty consignment.trackingID}" >
                                        <div class="col-sm-4">
                                            <div class="order-tracking-no">
                                                <ycommerce:testId code="orderDetail_trackingId_label">
                                                    <span class="label-order"><spring:theme code="text.account.order.tracking" text="Tracking No." /></span>
                                                    <br>
                                                    <span class="order-track-number">${consignment.trackingID}</span>
                                                </ycommerce:testId>
                                            </div>
                                        </div>
                                    </c:when>
                                </c:choose>
                            </c:if>
                        </c:otherwise>
                    </c:choose> 
                </div>
            </div>
        </div>
	</ycommerce:testId>
</div> --%>
<%-- 	
<ul class="item-list">
    <li class="hidden-xs hidden-sm">
        <ul class="item-list-header">
            <li class="item-toggle"></li>
            <li class="item-image"></li>
            <li class="item-info"><spring:theme code="basket.page.item"/></li>
            <li class="item-price"><spring:theme code="basket.page.price"/></li>
            <li class="item-quantity"><spring:theme code="basket.page.qty"/></li>
            <li class="item-total-column"><spring:theme code="basket.page.total"/></li>
        </ul>
    </li>
	<ycommerce:testId code="orderDetail_itemBody_section">
		<c:forEach items="${consignment.entries}" var="entry" varStatus="loop">
			<order:orderEntryDetails orderEntry="${entry.orderEntry}" consignmentEntry="${entry}" order="${order}" itemIndex="${loop.index}"/>
		</c:forEach>
	</ycommerce:testId>
</ul> --%>
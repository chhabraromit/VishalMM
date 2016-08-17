<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="order" tagdir="/WEB-INF/tags/responsive/order" %>
<%@ taglib prefix="ycommerce" uri="http://hybris.com/tld/ycommercetags" %>

 <!-- <div class="container">
  
  <div class="row">
     <div class="col-md-6 col-sm-6 col-xs-12 margn_bot_50"> -->
      <!-- <h2 class="margn_bot_25 margn_tp_n">Order History</h2> -->
      <!-- <div class="order_history_div"> -->
      <!-- <div class="col-md-6 col-sm-6 col-xs-12 margn_bot_50">
      <div class="order_history_div"> -->
        <div class="row">
        <ycommerce:testId code="orderDetail_itemList_section">
        <c:if test="${not empty orderData.unconsignedEntries}">
            <order:orderUnconsignedEntries order="${orderData}"/>
        </c:if>
        <c:forEach items="${orderData.consignments}" var="consignment">
            <c:if test="${consignment.status.code eq 'WAITING' or consignment.status.code eq 'PICKPACK' or consignment.status.code eq 'READY'}">
                <div class="productItemListHolder fulfilment-states-${consignment.status.code}">
                    <order:accountOrderDetailsItem order="${orderData}" consignment="${consignment}" inProgress="true"/>
                </div>
            </c:if>
        </c:forEach>
        
        <c:forEach items="${orderData.consignments}" var="consignment">
            <c:if test="${consignment.status.code ne 'WAITING' and consignment.status.code ne 'PICKPACK' and consignment.status.code ne 'READY'}">
                <div class="productItemListHolder fulfilment-states-${consignment.status.code}">
                    <order:accountOrderDetailsItem order="${orderData}" consignment="${consignment}"/>
                </div>
            </c:if>
        </c:forEach>
    </ycommerce:testId>
          
<!--       </div>
 -->    <!-- </div>
  </div> -->
        <!-- <div>
          <p class="fnt_16"><strong>Order:</strong> 000010102</p>
          <p class="clearfix"><span class="pull-left">Order Status:</span><span class="pull-right">Complete</span></p>
          <p class="clearfix"><span class="pull-left">Date placed:</span><span class="pull-right">May 23 2016, 13:50PM</span></p>
          <div class="clearfix margn_top_15"><span class="pull-left fnt_20"><strong>Total</strong></span> <span class="pull-right fnt_20"><strong>$107.80</strong></span></div>
          <div class="dvider_t"></div>
        </div> -->
        <!-- <h4>Delivery To / Collected From</h4>
        <div class="row">
          <div class="col-xs-6">
          </div>
          <div class="col-xs-6 text-right track_an"> <a href="#">Track Your Order</a> </div>
        </div> -->
      </div>
<!--     </div> 
 -->    
<!-- </div> 
 -->
<%-- <div class="account-orderdetail account-consignment">
    <ycommerce:testId code="orderDetail_itemList_section">
        <c:if test="${not empty orderData.unconsignedEntries}">
            <order:orderUnconsignedEntries order="${orderData}"/>
        </c:if>
        <c:forEach items="${orderData.consignments}" var="consignment">
            <c:if test="${consignment.status.code eq 'WAITING' or consignment.status.code eq 'PICKPACK' or consignment.status.code eq 'READY'}">
                <div class="productItemListHolder fulfilment-states-${consignment.status.code}">
                    <order:accountOrderDetailsItem order="${orderData}" consignment="${consignment}" inProgress="true"/>
                </div>
            </c:if>
        </c:forEach>
        <c:forEach items="${orderData.consignments}" var="consignment">
            <c:if test="${consignment.status.code ne 'WAITING' and consignment.status.code ne 'PICKPACK' and consignment.status.code ne 'READY'}">
                <div class="productItemListHolder fulfilment-states-${consignment.status.code}">
                    <order:accountOrderDetailsItem order="${orderData}" consignment="${consignment}"/>
                </div>
            </c:if>
        </c:forEach>
    </ycommerce:testId>
</div> --%>
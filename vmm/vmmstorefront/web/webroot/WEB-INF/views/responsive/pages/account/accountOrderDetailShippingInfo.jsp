<%@ page trimDirectiveWhitespaces="true" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="order" tagdir="/WEB-INF/tags/responsive/order" %>
<%@ taglib prefix="ycommerce" uri="http://hybris.com/tld/ycommercetags" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
 <!-- <div class="account-orderdetail well well-tertiary"> -->
    <%-- <div class="well-headline">
        <spring:theme code="text.account.order.orderDetails.billingInformtion" />
    </div> --%>
    <ycommerce:testId code="orderDetails_paymentDetails_section">
        <!-- <div class="well-content">
            <div class="row">
                <div class="col-sm-12 col-md-9">
                    <div class="row"> -->
                    <div class="row">
                    <div class="col-xs-6 ">
                        <div class=" order-billing-address">
                            <order:billingAddressItem order="${orderData}"/>
                            
                        </div>
                        </div>
                        <div class="col-xs-6 ">
                        <a href="#" class="pull-right ">Track Your Order</a>
                        </div>
                        </div>
                        <%-- <c:if test="${not empty orderData.paymentInfo}">
                            <div class="col-sm-6 col-md-4 order-payment-data">
                                <order:paymentDetailsItem order="${orderData}"/>
                            </div>
                        </c:if>  --%>
                   <!--  </div>
                </div>
            </div>
        </div> -->
    </ycommerce:testId>
    
<!-- </div>  -->
<%@ page trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="template" tagdir="/WEB-INF/tags/responsive/template"%>
<%@ taglib prefix="cms" uri="http://hybris.com/tld/cmstags"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="ycommerce" uri="http://hybris.com/tld/ycommercetags" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<c:set var="noBorder" value=""/>
<c:if test="${not empty paymentInfoData}">
    <c:set var="noBorder" value="no-border"/>
</c:if>
<section class="white_bg_m">
  <div class="container">
  <div class="row">
      <div class="col-md-12">
<%-- <div class="account-section-header ${noBorder}"> --%>
  <h2 class="margn_bot_25 margn_tp_n">  <spring:theme code="text.account.paymentDetails" /></h2>
<!-- </div> -->
</div>
</div>

<c:choose>
    <c:when test="${not empty paymentInfoData}">
        <div class="account-paymentdetails account-list">
            <div class="">
                <div class="row">
                <c:forEach items="${paymentInfoData}" var="paymentInfo">  
                <div class="col-md-4 col-sm-12 col-xs-12 margn_bot_50">
        <div class="personal_form bx_shd_n pad_none">
          <div>
            <div class="row">
              <div class="col-xs-12 default_color">
                <p><c:if test="${paymentInfo.defaultPaymentInfo}">&nbsp;<strong> <spring:theme code="text.Default" text="Default" /></strong><span class="check_d"><i class="fa fa-check" aria-hidden="true"></i></span></p></c:if>
                                    	<strong>
                                    	${fn:escapeXml(paymentInfo.accountHolderName)}
                                    <c:if test="${paymentInfo.defaultPaymentInfo}" ></strong></c:if></p>
                <div class="clearfix"><span class="pull-left">${fn:escapeXml(paymentInfo.cardTypeData.name)}</span><span class="pull-right"><ycommerce:testId code="paymentDetails_item_cardNumber_text" >${fn:escapeXml(paymentInfo.cardNumber)}</ycommerce:testId></span></div>
                <div class="clearfix">
                <p><span class="pull-right"><c:if test="${paymentInfo.expiryMonth lt 10}">0</c:if>
                                        ${fn:escapeXml(paymentInfo.expiryMonth)}&nbsp;/&nbsp;${fn:escapeXml(paymentInfo.expiryYear)}</span></p></div>
        
                <div class="clearfix ">
                 <c:if test="${paymentInfo.billingAddress ne null}">
                                  <p> ${fn:escapeXml(paymentInfo.billingAddress.line1)}</p>
                                    <p>${fn:escapeXml(paymentInfo.billingAddress.town)}&nbsp;${fn:escapeXml(paymentInfo.billingAddress.region.isocodeShort)}</p>
                                    <p>${fn:escapeXml(paymentInfo.billingAddress.country.name)}&nbsp;${fn:escapeXml(paymentInfo.billingAddress.postalCode)}</p>
                                </c:if>
                </div>
                
                <c:if test="${not paymentInfo.defaultPaymentInfo}" >
                                <c:url value="/my-account/set-default-payment-details" var="setDefaultPaymentActionUrl"/>
                                <form:form id="setDefaultPaymentDetails${paymentInfo.id}" action="${setDefaultPaymentActionUrl}" method="post">
                                    <input type="hidden" name="paymentInfoId" value="${paymentInfo.id}"/>
                                    <ycommerce:testId code="paymentDetails_setAsDefault_button" >
                                       
                                      
                                       <div class="clearfix"> <button type="text" class=" set_default_btn">
                                         
                                            <spring:theme code="text.setDefault" text="Set as Default" />
                                            
                                        </button> </div>
                                    
                                        
                                        
                                        
                                    </ycommerce:testId>
                                    
                                </form:form>
                            </c:if>
                            
                            <div class="display-none">
	                        <div id="popup_confirm_payment_removal_${paymentInfo.id}" class="account-address-removal-popup">
	                            <spring:theme code="text.account.paymentDetails.delete.following"/>
	                            <div class="address">
	                              <div class="col-xs-12 default_color">
            <p>  <strong>
	                                ${fn:escapeXml(paymentInfo.accountHolderName)}
	                                </strong>
	                                </p>
	                                </div>
	                                
	                                <div class="col-xs-12 default_color">
            <p>  <strong>${fn:escapeXml(paymentInfo.cardTypeData.name)}</strong>
	                                </p>
	                                </div>
	                                <div class="col-xs-12 default_color">
            <p>  <strong>${fn:escapeXml(paymentInfo.cardNumber)}
	                                </strong>
	                                </p>
	                                </div>
	      <div class="col-xs-12 default_color"><p><strong>
	                                <c:if test="${paymentInfo.expiryMonth lt 10}">0</c:if>
	                                ${fn:escapeXml(paymentInfo.expiryMonth)}&nbsp;/&nbsp;${fn:escapeXml(paymentInfo.expiryYear)}
	           </strong></p></div>                     
	                                <c:if test="${paymentInfo.billingAddress ne null}">
	                                    <br>${fn:escapeXml(paymentInfo.billingAddress.line1)}
	                                    <br>${fn:escapeXml(paymentInfo.billingAddress.town)}&nbsp;${fn:escapeXml(paymentInfo.billingAddress.region.isocodeShort)}
	                                    <br>${fn:escapeXml(paymentInfo.billingAddress.country.name)}&nbsp;${fn:escapeXml(paymentInfo.billingAddress.postalCode)}
	                                
	                                </c:if>
	                            </div>
	                            <c:url value="/my-account/remove-payment-method" var="removePaymentActionUrl"/>
	                            <form:form id="removePaymentDetails${paymentInfo.id}" action="${removePaymentActionUrl}" method="post">
	                                <input type="hidden" name="paymentInfoId" value="${paymentInfo.id}"/>
	                                <br />
	                                <div class="modal-actions">
	                                    <div class="row">
	                                        <ycommerce:testId code="paymentDetailsDelete_delete_button" >
	                                            <div class="col-xs-12">
	                                                <button type="submit" class="btn btn-default payment_delete_btn margn_top_25">
	                                                    <spring:theme code="text.account.paymentDetails.delete"/>
	                                                </button>
	                                            <!-- </div> -->
	                                        </ycommerce:testId>
	                                        <!-- <div class="col-xs-12"> -->
	                                            <a class="btn btn-default payment_delete_btn margn_top_25" data-payment-id="${paymentInfo.id}">
	                                                <spring:theme code="text.button.cancel" />
	                                            </a>
	                                        </div>
	                                    </div>
	                                </div>
	                            </form:form>
	                        </div>
	                    </div>
              </div>
            </div>
            <div class="row">
              <div class="col-xs-6">
              <a class="action-links removePaymentDetailsButton" href="#" data-payment-id="${paymentInfo.id}" data-popup-title="<spring:theme code="text.account.paymentDetails.delete.popup.title"/>">
                <button type="submit" class="btn btn-default payment_delete_btn" data-toggle="modal" data-target="#myModal">Delete</button>
              </a>	
              </div>
            </div>
          </div>
        </div>
      </div>
      </c:forEach>
                
              <%--  <!--  <p class="blk_color"><strong>Default</strong> <span class="check_d"><i class="fa fa-check" aria-hidden="true"></i></span></p> -->
                	<c:forEach items="${paymentInfoData}" var="paymentInfo">                    
                        <div class="col-xs-12 col-sm-6 col-md-4 card">
                            <ul class="pull-left">
                                <li>
                                    <c:if test="${paymentInfo.defaultPaymentInfo}">
                                    	<strong>
                                    </c:if>
                                    	${fn:escapeXml(paymentInfo.accountHolderName)}<c:if test="${paymentInfo.defaultPaymentInfo}" >&nbsp; (<spring:theme code="text.default" />) </c:if>
                                    <c:if test="${paymentInfo.defaultPaymentInfo}" ></strong></c:if>
                                </li>
                                <li>${fn:escapeXml(paymentInfo.cardTypeData.name)}</li>
                                <li>
                                    <ycommerce:testId code="paymentDetails_item_cardNumber_text" >${fn:escapeXml(paymentInfo.cardNumber)}</ycommerce:testId>
                                </li>
                                <li>
                                    <c:if test="${paymentInfo.expiryMonth lt 10}">0</c:if>
                                        ${fn:escapeXml(paymentInfo.expiryMonth)}&nbsp;/&nbsp;${fn:escapeXml(paymentInfo.expiryYear)}
                                </li>
                                <c:if test="${paymentInfo.billingAddress ne null}">
                                    <li>${fn:escapeXml(paymentInfo.billingAddress.line1)}</li>
                                    <li>${fn:escapeXml(paymentInfo.billingAddress.town)}&nbsp;${fn:escapeXml(paymentInfo.billingAddress.region.isocodeShort)}</li>
                                    <li>${fn:escapeXml(paymentInfo.billingAddress.country.name)}&nbsp;${fn:escapeXml(paymentInfo.billingAddress.postalCode)}</li>
                                </c:if>
                            </ul>
                            <div class="row">
              <div class="col-xs-6">
                            <!-- <div class="account-cards-actions pull-left"> -->
                                 <ycommerce:testId code="paymentDetails_deletePayment_button" >
                                    <a class="action-links removePaymentDetailsButton" href="#" data-payment-id="${paymentInfo.id}" data-popup-title="<spring:theme code="text.account.paymentDetails.delete.popup.title"/>">
                                        <span class="glyphicon glyphicon-remove"></span>
                                    </a>
                                </ycommerce:testId> 
                            </div>
                            </div>
                            <c:if test="${not paymentInfo.defaultPaymentInfo}" >
                                <c:url value="/my-account/set-default-payment-details" var="setDefaultPaymentActionUrl"/>
                                <form:form id="setDefaultPaymentDetails${paymentInfo.id}" action="${setDefaultPaymentActionUrl}" method="post">
                                    <input type="hidden" name="paymentInfoId" value="${paymentInfo.id}"/>
                                    <ycommerce:testId code="paymentDetails_setAsDefault_button" >
                                        <button type="text" class="clearfix margn_tp_bt_20">
                                         <div class="fnt_underline">
                                            <spring:theme code="text.setDefault" text="Set as Default" />
                                            </div>
                                        </button>
                                    </ycommerce:testId>
                                    <div class="row">
              						<div class="col-xs-6">
              						<a class="action-links removePaymentDetailsButton" href="#" data-payment-id="${paymentInfo.id}" data-popup-title="<spring:theme code="text.account.paymentDetails.delete.popup.title"/>">
              						 <button type="submit" value="" class="btn btn-default payment_delete_btn">
              						 <spring:theme code="text.setDefault" text="Delete" />
              						 <span class="glyphicon glyphicon-remove"></span>
              						 </button>
              						 </a>
             						 </div>
            						</div>
                                </form:form>
                            </c:if>
                        </div>
                    
	                    <div class="display-none">
	                        <div id="popup_confirm_payment_removal_${paymentInfo.id}" class="account-address-removal-popup">
	                            <spring:theme code="text.account.paymentDetails.delete.following"/>
	                            <div class="address">
	                                <strong>
	                                ${fn:escapeXml(paymentInfo.accountHolderName)}
	                                </strong>
	                                <br>${fn:escapeXml(paymentInfo.cardTypeData.name)}
	                                <br>${fn:escapeXml(paymentInfo.cardNumber)}
	                                <br>
	                                <c:if test="${paymentInfo.expiryMonth lt 10}">0</c:if>
	                                ${fn:escapeXml(paymentInfo.expiryMonth)}&nbsp;/&nbsp;${fn:escapeXml(paymentInfo.expiryYear)}
	                                <c:if test="${paymentInfo.billingAddress ne null}">
	                                    <br>${fn:escapeXml(paymentInfo.billingAddress.line1)}
	                                    <br>${fn:escapeXml(paymentInfo.billingAddress.town)}&nbsp;${fn:escapeXml(paymentInfo.billingAddress.region.isocodeShort)}
	                                    <br>${fn:escapeXml(paymentInfo.billingAddress.country.name)}&nbsp;${fn:escapeXml(paymentInfo.billingAddress.postalCode)}
	                                </c:if>
	                            </div>
	                            <c:url value="/my-account/remove-payment-method" var="removePaymentActionUrl"/>
	                            <form:form id="removePaymentDetails${paymentInfo.id}" action="${removePaymentActionUrl}" method="post">
	                                <input type="hidden" name="paymentInfoId" value="${paymentInfo.id}"/>
	                                <br />
	                                <div class="modal-actions">
	                                    <div class="row">
	                                        <ycommerce:testId code="paymentDetailsDelete_delete_button" >
	                                            <div class="col-xs-12 col-sm-6 col-sm-push-6">
	                                                <button type="submit" class="btn btn-default btn-primary btn-block paymentsDeleteBtn">
	                                                    <spring:theme code="text.account.paymentDetails.delete"/>
	                                                </button>
	                                            </div>
	                                        </ycommerce:testId>
	                                        <div class="col-xs-12 col-sm-6 col-sm-pull-6">
	                                            <a class="btn btn-default closeColorBox paymentsDeleteBtn btn-block" data-payment-id="${paymentInfo.id}">
	                                                <spring:theme code="text.button.cancel" />
	                                            </a>
	                                        </div>
	                                    </div>
	                                </div>
	                            </form:form>
	                        </div>
	                    </div>
                	</c:forEach> --%>
            	</div> 
            </div>
        </div>
    </c:when>
    <c:otherwise>
        <div class="account-section-content content-empty">
            <spring:theme code="text.account.paymentDetails.noPaymentInformation" />
        </div>
    </c:otherwise>
</c:choose>
</div>
</section>
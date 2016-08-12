<%@ page trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="ycommerce" uri="http://hybris.com/tld/ycommercetags"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<c:set var="noBorder" value="" />
<c:if test="${not empty addressData}">
	<c:set var="noBorder" value="no-border" />
</c:if>

<section class="white_bg_m">
  <div class="container">
    <div class="row">
      <div class="col-md-12">
        <h2 class="margn_bot_25 margn_tp_n"><spring:theme code="text.account.addressBook" /> <span class="pull-right">
        <a href="add-address" class="fnt_13">
        <spring:theme code="text.account.addressBook.addAddress" /></a></span></h2>
      </div>
    </div>
    <div class="row">
    <c:if test="${not empty addressData}">
    <c:forEach items="${addressData}" var="address">
      <div class="col-md-4 col-sm-12 col-xs-12 margn_bot_50">
        <div class="personal_form bx_shd_n pad_none">
          <div>
          
            <div class="row">
              <div class="col-xs-12 default_color">
              <c:if test="${address.defaultAddress}">
                <p class="blk_color"><strong><spring:theme code="text.default" text="Default" /></strong> <span class="check_d"><i class="fa fa-check" aria-hidden="true"></i></span></p></c:if>
                <p>${fn:escapeXml(address.title)}&nbsp;${fn:escapeXml(address.firstName)}&nbsp;${fn:escapeXml(address.lastName)}</p>
                <address>
                ${fn:escapeXml(address.line1)}<br>
					<c:if test="${not empty fn:escapeXml(address.line2)}">
								${fn:escapeXml(address.line2)}
							</c:if>
					${fn:escapeXml(address.town)}&nbsp;${fn:escapeXml(address.region.name)}<br>
					${fn:escapeXml(address.country.name)}&nbsp;${fn:escapeXml(address.postalCode)}<br>
					${fn:escapeXml(address.phone)}<br>
                </address>
                <c:if test="${not address.defaultAddress}">
                <div class="clearfix margn_tp_bt_20"> <a href="set-default-address/${address.id}" class="fnt_underline">Set As Default</a> </div>
                </c:if>
              </div>
            </div>
            <div class="row">
              <div class="col-xs-6">
                <a href="remove-address/${address.id}" class="fnt_underline"><button type="submit" class="btn btn-default payment_delete_btn">Delete</button></a>
              </div>
              <div class="col-xs-6">
                 <a href="edit-address/${address.id}" class="fnt_underline"><button type="submit" class="btn btn-default payment_edit_btn">
               Edit</button></a>
              </div>
            </div>
            
          </div>
        </div>
      </div>
      </c:forEach>
     </c:if>
    </div>
  </div>
</section>

<%-- <section class="white_bg_m">
	<div class="container">
		<div class="row">
			<div class="col-md-4 col-sm-12 col-xs-12 margn_bot_50">
			<div class="personal_form bx_shd_n pad_none">
         
				<h2 class="margn_bot_25 margn_tp_n">
					<spring:theme code="text.account.addressBook" />
					<span class="pull-right"> <ycommerce:testId
							code="addressBook_addNewAddress_button">
							<a href="add-address"> <spring:theme
									code="text.account.addressBook.addAddress" />
							</a>
						</ycommerce:testId>
					</span>
				</h2>
				</div>
			</div>

			<c:if test="${empty addressData}">
				<div class="account-section-content content-empty">
					<spring:theme code="text.account.addressBook.noSavedAddresses" />
				</div>
			</c:if>
			<div class="row">
				<c:if test="${not empty addressData}">
					<div class="col-md-4 col-sm-12 col-xs-12 margn_bot_50">
						<div class="personal_form bx_shd_n pad_none">
							<div>
								<div class="row">
									<c:forEach items="${addressData}" var="address">
										<div class="col-xs-12 default_color">
											<p class="blk_color">
												<strong><c:if test="${address.defaultAddress}">
														<spring:theme code="text.default" text="Default" /></strong> <span
													class="check_d"><i class="fa fa-check"
													aria-hidden="true"></i></span>
											</p></c:if>
				<strong>${fn:escapeXml(address.title)}&nbsp;${fn:escapeXml(address.firstName)}&nbsp;${fn:escapeXml(address.lastName)}
				</strong>
				<address>
					${fn:escapeXml(address.line1)}<br>
					<c:if test="${not empty fn:escapeXml(address.line2)}">
								${fn:escapeXml(address.line2)}
							</c:if>
					${fn:escapeXml(address.town)}&nbsp;${fn:escapeXml(address.region.name)}<br>
					${fn:escapeXml(address.country.name)}&nbsp;${fn:escapeXml(address.postalCode)}<br>
					${fn:escapeXml(address.phone)}<br>
				</address>
				<c:if test="${not address.defaultAddress}">
					<ycommerce:testId code="addressBook_isDefault_button">
						<a class="account-set-default-address"
							href="set-default-address/${address.id}"> <spring:theme
								code="text.setDefault" text="Set As Default" />
						</a>
					</ycommerce:testId>
				</c:if>
				<div class="row">
					<div class="col-xs-6">
						<a class="btn btn-primary btn-block"
							data-address-id="${address.id}"
							href="remove-address/${address.id}">
							<button type="submit" class="btn btn-default payment_delete_btn">
								<ycommerce:testId code="addressRemove_delete_button">
									<div class="col-xs-12 col-sm-6 col-sm-push-6">

										<spring:theme code="text.address.delete" text="setDefault" />

									</div>
								</ycommerce:testId>
							</button>
						</a>
					</div>
					<div class="col-xs-6">
						<a class="action-links" href="edit-address/${address.id}">

							<button type="submit" class="btn btn-default payment_edit_btn">
								<ycommerce:testId code="addressBook_editAddress_button">
									<span class="glyphicon glyphicon-pencil"></span>

								</ycommerce:testId>
							</button>
						</a>
							</c:forEach>
						
					</div>
				</div>
			</div>
		</div>
	</div>
	
	</c:if>
</section>



<%-- <div class="account-section-header ${noBorder}">
    <spring:theme code="text.account.addressBook"/>

        <ycommerce:testId code="addressBook_addNewAddress_button">
            <div class="account-section-header-add pull-right">
                <a href="add-address">
                    <spring:theme code="text.account.addressBook.addAddress"/>
                </a>
            </div>
        </ycommerce:testId>
    </div>
</div>

<div class="account-addressbook account-list">
    <c:if test="${empty addressData}">
		<div class="account-section-content content-empty">
			<spring:theme code="text.account.addressBook.noSavedAddresses" />
		</div>
    </c:if>

    <c:if test="${not empty addressData}">
	    <div class="account-cards card-select">
			<div class="row">
				<c:forEach items="${addressData}" var="address">
					<div class="col-xs-12 col-sm-6 col-md-4 card">
						<ul class="pull-left">
							<li>
								<strong>${fn:escapeXml(address.title)}&nbsp;${fn:escapeXml(address.firstName)}&nbsp;${fn:escapeXml(address.lastName)}
									<c:if test="${address.defaultAddress}">
										(<spring:theme code="text.default"/>)
									</c:if>
								</strong>
							</li>
							<li>${fn:escapeXml(address.line1)}</li>
							<c:if test="${not empty fn:escapeXml(address.line2)}">
								<li>${fn:escapeXml(address.line2)}</li>
							</c:if>
							<li>${fn:escapeXml(address.town)}&nbsp;${fn:escapeXml(address.region.name)}</li>
							<li> ${fn:escapeXml(address.country.name)}&nbsp;${fn:escapeXml(address.postalCode)}</li>
							<li>${fn:escapeXml(address.phone)}</li>
						</ul>

						<c:if test="${not address.defaultAddress}">
							<ycommerce:testId code="addressBook_isDefault_button">
								<a class="account-set-default-address" href="set-default-address/${address.id}">
									<spring:theme code="text.setDefault"/>
								</a>
							</ycommerce:testId>
						</c:if>
						<div class="account-cards-actions pull-left">
							<ycommerce:testId code="addressBook_editAddress_button">
								<a class="action-links" href="edit-address/${address.id}">
									<span class="glyphicon glyphicon-pencil"></span>
								</a>
							</ycommerce:testId>
							<ycommerce:testId code="addressBook_removeAddress_button">
								<a href="#" class="action-links removeAddressFromBookButton" data-address-id="${address.id}" data-popup-title="<spring:theme code="text.address.delete.popup.title" />">
									<span class="glyphicon glyphicon-remove"></span>
								</a>
							</ycommerce:testId>
						</div>
					</div>
				</c:forEach>
			</div>
			
			<c:forEach items="${addressData}" var="address">
		        <div class="display-none">
		       	 	<div id="popup_confirm_address_removal_${address.id}" class="account-address-removal-popup">
		        		<div class="addressItem">
		        			<spring:theme code="text.address.remove.following" />
		       				
		       				<div class="address">
						        <strong>
						        ${fn:escapeXml(address.title)}&nbsp;
						        ${fn:escapeXml(address.firstName)}&nbsp;
						        ${fn:escapeXml(address.lastName)}
						        </strong>
						        <br>
						        ${fn:escapeXml(address.line1)}&nbsp;
						        ${fn:escapeXml(address.line2)}
						        <br>
						        ${fn:escapeXml(address.town)}&nbsp;
						        <c:if test="${not empty address.region.name }">
						            ${fn:escapeXml(address.region.name)}&nbsp;
						        </c:if>
						        <br>
						        ${fn:escapeXml(address.country.name)}&nbsp;
						        ${fn:escapeXml(address.postalCode)}
						        <br/>
						
						
						        ${fn:escapeXml(address.phone)}
		       				</div>
					        
					        <div class="modal-actions">
                                <div class="row">
                                    <ycommerce:testId code="addressRemove_delete_button">
                                        <div class="col-xs-12 col-sm-6 col-sm-push-6">
                                            <a class="btn btn-primary btn-block" data-address-id="${address.id}" href="remove-address/${address.id}">
                                                <spring:theme code="text.address.delete" />
                                            </a>
                                        </div>
                                    </ycommerce:testId>
                                    <div class="col-xs-12 col-sm-6 col-sm-pull-6">
                                        <a class="btn btn-default btn-block closeColorBox" data-address-id="${address.id}">
                                            <spring:theme code="text.button.cancel"/>
                                        </a>
                                    </div>
					       	    </div>
					       	</div>
		        		</div>
		        	</div>
		        </div>
		    </c:forEach>
	    </div>
    </c:if>
</div> --%>
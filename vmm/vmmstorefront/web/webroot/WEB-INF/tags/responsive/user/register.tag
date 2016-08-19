<%@ tag body-content="empty" trimDirectiveWhitespaces="true"%>
<%@ attribute name="actionNameKey" required="true"
	type="java.lang.String"%>
<%@ attribute name="action" required="true" type="java.lang.String"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="formElement"
	tagdir="/WEB-INF/tags/responsive/formElement"%>
<%@ taglib prefix="theme" tagdir="/WEB-INF/tags/shared/theme"%>
<%@ taglib prefix="ycommerce" uri="http://hybris.com/tld/ycommercetags"%>

<%-- <div class="headline">
	<spring:theme code="register.new.customer" />
</div>
<p>
	<spring:theme code="register.description" />
</p> --%>

<form:form method="post" commandName="registerForm" action="${action}">
<%-- 	 <formElement:formSelectBox idKey="register.title"
		labelKey="register.title" selectCSSClass="form-control"
		path="titleCode" mandatory="true" skipBlank="false"
		skipBlankMessageKey="form.select.empty" items="${titles}" />
	<formElement:formInputBox idKey="register.firstName"
		labelKey="register.firstName" path="firstName" inputCSS="form-control"
		mandatory="true" />
	<formElement:formInputBox idKey="register.lastName"
		labelKey="register.lastName" path="lastName" inputCSS="form-control"
		mandatory="true" />
	<formElement:formInputBox idKey="register.email"
		labelKey="register.email" path="email" inputCSS="form-control"
		mandatory="true" />
	<formElement:formPasswordBox idKey="password" labelKey="register.pwd"
		path="pwd" inputCSS="form-control password-strength" mandatory="true" />
	<formElement:formPasswordBox idKey="register.checkPwd"
		labelKey="register.checkPwd" path="checkPwd" inputCSS="form-control"
		mandatory="true" />
	<input type="hidden" id="recaptchaChallangeAnswered"
		value="${requestScope.recaptchaChallangeAnswered}" />
	<div class="form_field-elements control-group js-recaptcha-captchaaddon"></div>
	<div class="form-actions clearfix">
		<ycommerce:testId code="register_Register_button">
			<button type="submit" class="btn btn-default btn-block">
				<spring:theme code='${actionNameKey}' />
			</button>
		</ycommerce:testId>
	</div> --%>

	<div class=" margn_bot_50">
		<div class="row">
			<div class="col-md-12">
				<h2 class="margn_bot_25 margn_tp_n">Register</h2>
			</div>
		</div>
		<div class="personal_form">
			<p>New customer?</p>
			<div>
				
					<div class="form-group">
						<div class="row">
							<div class="col-md-6 col-xs-12">
								<formElement:formSelectBox idKey="register.title"
									labelKey="register.title" selectCSSClass="form-control"
									path="titleCode" mandatory="true" skipBlank="false"
									skipBlankMessageKey="form.select.empty" items="${titles}" />
							</div>
						</div>
					</div>
					<div class="row">
						<div class="col-md-6 col-xs-12">
							<div class="form-group">
								<formElement:formInputBox idKey="register.firstName"
									labelKey="register.firstName" path="firstName"
									inputCSS="form-control" mandatory="true" />
							</div>
						</div>
						<div class="col-md-6 col-xs-12">
							<div class="form-group">
								<formElement:formInputBox idKey="register.lastName"
									labelKey="register.lastName" path="lastName"
									inputCSS="form-control" mandatory="true" />
							</div>
						</div>
					</div>
					<div class="form-group">
						<formElement:formInputBox idKey="register.email"
							labelKey="register.email" path="email" inputCSS="form-control"
							mandatory="true" />
					</div>
					<div class="form-group">
						<formElement:formPasswordBox idKey="password"
							labelKey="register.pwd" path="pwd"
							inputCSS="form-control password-strength" mandatory="true" />
					</div>
					<div class="form-group">
						<formElement:formPasswordBox idKey="register.checkPwd"
							labelKey="register.checkPwd" path="checkPwd"
							inputCSS="form-control" mandatory="true" />
					</div>
					<div class="clearfix"></div>
					<div class="dvider_t"></div>
					<div class="control-group">
						<h4>Emails and newsletter communication:</h4>
						<label class="control control--checkbox"> Toys <input
							type="checkbox" checked="checked" />
							<div class="control__indicator"></div>
						</label> <label class="control control--checkbox"> Baby <input
							type="checkbox" />
							<div class="control__indicator"></div>
						</label> <label class="control control--checkbox"> Video Games <input
							type="checkbox" />
							<div class="control__indicator"></div>
						</label>
					</div>
					<div class="row">
						<div class="col-md-12 col-xs-12">
							<!-- <button type="submit"
								class="shop_nw_btn-responsive margn_tp_bt_20">Register
								Now</button> -->
								<ycommerce:testId code="register_Register_button">
			<button type="submit" class="shop_nw_btn-responsive margn_tp_bt_20">
				<spring:theme code='${actionNameKey}' />
			</button>
		</ycommerce:testId>
						</div>
					</div>
				
			</div>
		</div>
	</div>
</form:form>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="template" tagdir="/WEB-INF/tags/responsive/template"%>
<%@ taglib prefix="cms" uri="http://hybris.com/tld/cmstags"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="formElement"
	tagdir="/WEB-INF/tags/responsive/formElement"%>
<%@ taglib prefix="ycommerce" uri="http://hybris.com/tld/ycommercetags"%>

<div class="account-section-header">
	<div class="row">
		<div class="container-lg col-md-6">
			<spring:theme code="text.account.profile.updatePersonalDetails" />
		</div>
	</div>
</div>
<section class="white_bg_m">
  <div class="container">
 
<div class="row">
<div class="col-md-6 col-sm-6 col-xs-12 margn_bot_25">
        <div class="personal_form bx_shd_n pad_none">
        <!--  <p>All Fields marked with * are mandatory</p>
	 <div class="container-lg col-md-6">
		<div class="account-section-content"> -->
			<div class="account-section-form">
				<form:form action="update-profile" method="post" commandName="updateProfileForm">
			<div class="form-group">
					<formElement:formSelectBox idKey="profile.title"
						labelKey="profile.title" path="titleCode" mandatory="true"
						skipBlank="false" skipBlankMessageKey="form.select.empty"
						items="${titleData}" selectCSSClass="form-control" /></div>
			<div class="form-group">
				<label >	<formElement:formInputBox idKey="profile.firstName"
						labelKey="profile.firstName" path="firstName" inputCSS="text"
						mandatory="true" /></label></div>
				<div class="form-group">
				
				<label >	<formElement:formInputBox idKey="profile.lastName"
						labelKey="profile.lastName" path="lastName" inputCSS="text"
						mandatory="true" /></label></div>

					<div class="row">
						<div class="col-sm-6 col-sm-push-6">
							<div class="accountActions">
								<ycommerce:testId
									code="personalDetails_savePersonalDetails_button">
									<button type="submit" class="btn btn-primary btn-block">
										<spring:theme code="text.account.profile.saveUpdates"
											text="Save Updates" />
									</button>
								</ycommerce:testId>
							</div>
						</div>
						<div class="col-sm-6 col-sm-pull-6">
							<div class="accountActions">
								<ycommerce:testId
									code="personalDetails_cancelPersonalDetails_button">
									<button type="button"
										class="btn btn-default btn-block backToHome">
										<spring:theme code="text.account.profile.cancel" text="Cancel" />
									</button>
								</ycommerce:testId>
							</div>
						</div>
					</div>
				</form:form>
			
			</div>
		</div>
	</div>
		<div class="col-md-6 col-sm-6 col-xs-12">
					<div class="personal_form personal_form2 bx_shd_n pad_none">
						<div>
							<form>
								<div class="control-group">
									<h4>Emails and newsletter communication:</h4>
									<label class="control control--checkbox"> Toys <input
										type="checkbox" checked="checked" />
										<div class="control__indicator"></div>
									</label> <label class="control control--checkbox"> Baby <input
										type="checkbox" />
										<div class="control__indicator"></div>
									</label> <label class="control control--checkbox"> Video Games
										<input type="checkbox" />
										<div class="control__indicator"></div>
									</label>
								</div>
								<div class="dvider_t"></div>
								<div class="row">
									<div class="col-md-6 col-sm-12 col-xs-12">
										<div class="control-group">
											<h4>Catalogue subscriptions:</h4>
											<label class="control control--checkbox"> Toys <input
												type="checkbox" checked="checked" />
												<div class="control__indicator"></div>
											</label> <label class="control control--checkbox"> Baby <input
												type="checkbox" />
												<div class="control__indicator"></div>
											</label> <label class="control control--checkbox"> Video
												Games <input type="checkbox" />
												<div class="control__indicator"></div>
											</label>
										</div>
									</div>
									<div class="col-md-6 col-sm-12 col-xs-12">
										<div class="control-group">
											<h4>Catalogue will be sent to:</h4>
											<address>
												need to implement address <br>
											</address>
										</div>
									</div>
								</div>
							</form>
						</div>
					</div>
				</div>
</div>
</div>
</section>
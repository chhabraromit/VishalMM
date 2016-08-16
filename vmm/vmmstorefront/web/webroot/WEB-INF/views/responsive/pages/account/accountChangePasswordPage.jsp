<%@ page trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="template" tagdir="/WEB-INF/tags/responsive/template"%>
<%@ taglib prefix="cms" uri="http://hybris.com/tld/cmstags"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="formElement" tagdir="/WEB-INF/tags/responsive/formElement"%>

<!-- <div class="account-section-header">
	<div class="row">
		<div class="container-lg col-md-6">
			
		</div>
	</div>
</div> -->
<section class="white_bg_m">
  <div class="container">
<div class="row">
      <div class="col-md-12">
        <h2 class="margn_bot_25 margn_tp_n"><spring:theme code="text.account.profile.updatePasswordForm"/></h2>
      </div>
    </div>
<div class="row">
	<div class="col-md-6 col-sm-6 col-xs-12 margn_bot_50">
		<div class="personal_form bx_shd_n pad_none">
			<div >
				<form:form action="${action}" method="post" commandName="updatePasswordForm">

					<formElement:formPasswordBox idKey="currentPassword"
												 labelKey="profile.currentPassword" path="currentPassword" inputCSS="form-control"
												 mandatory="true" />
					<formElement:formPasswordBox idKey="newPassword"
												 labelKey='profile.newPassword' path="newPassword" inputCSS="form-control"
												 mandatory="true" />
					<formElement:formPasswordBox idKey="checkNewPassword"
												 labelKey="profile.checkNewPassword" path="checkNewPassword" inputCSS="form-control"
												 mandatory="true" />


					<div class="row">
						<div class="col-sm-6 col-sm-push-6">
							<div class="accountActions">
								<button type="submit" class="btn btn-default upadte_btn">
									<spring:theme code="updatePwd.submit" text="Update Password" />
								</button>
							</div>
						</div>
						<%-- <div class="col-sm-6 col-sm-pull-6">
							<div class="accountActions">
								<button type="button" class="btn btn-default upadte_btn backToHome">
									<spring:theme code="text.button.cancel" text="Cancel" />
								</button>
							</div>
						</div> --%>
					</div>
				</form:form>
			</div>
		</div>
	</div>
</div>
</div>
</section>
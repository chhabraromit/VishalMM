<%@ tag body-content="empty" trimDirectiveWhitespaces="true"%>
<%@ attribute name="actionNameKey" required="true" type="java.lang.String"%>
<%@ attribute name="action" required="true" type="java.lang.String"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="formElement" tagdir="/WEB-INF/tags/responsive/formElement"%>
<%@ taglib prefix="theme" tagdir="/WEB-INF/tags/shared/theme"%>
<%@ taglib prefix="ycommerce" uri="http://hybris.com/tld/ycommercetags"%>

<c:set var="hideDescription" value="checkout.login.loginAndCheckout" />

<%-- <div class="headline">
	<spring:theme code="login.title" />
</div>

<c:if test="${actionNameKey ne hideDescription}">
	<p>
		<spring:theme code="login.description" />
	</p>
</c:if> --%>

<form:form action="${action}" method="post" commandName="loginForm">
	<c:if test="${not empty message}">
		<span class="has-error"> <spring:theme code="${message}" />
		</span>
	</c:if>	
			
			
	
		 <div class="margn_bot_50">
      <div class="row">
        <div class="col-md-12">
          <h2 class="margn_bot_25 margn_tp_n"><spring:theme code="text.login.header" text="Sign In"/></h2>
        </div>
      </div>
      <div class="personal_form personal_form2 bx_shd_n pad_none">
        <p><spring:theme code="text.login.email.address" text="Sign in with your email address."/></p>
        <div>
          <form>
             <formElement:formInputBox idKey="j_username" labelKey="login.email"
			path="j_username" mandatory="true" />
              <formElement:formPasswordBox idKey="j_password"
			labelKey="login.password" path="j_password" inputCSS="form-control"
			mandatory="true" />
            <div class="row">
              <%-- <div class="col-md-7 col-xs-6">
                <!-- <div class="forgot_pas_link"><a href="#">Have you forgotten your password?</a></div> -->
                <ycommerce:testId code="login_forgotPassword_link">
					<a href="<c:url value='/login/pw/request'/>" class="forgot_pas_link" data-cbox-title="<spring:theme code="forgottenPwd.title"/>">
						<spring:theme code="login.link.forgottenPwd" />
					</a>
				</ycommerce:testId>
              </div> --%>
              
              <div class="col-md-7 col-xs-6">
              <div class="forgot_pas_link">
				<ycommerce:testId code="login_forgotPassword_link">
					<a href="<c:url value='/login/pw/request'/>" class="js-password-forgotten" data-cbox-title="<spring:theme code="forgottenPwd.title" text="Have you forgotten your password?"/>">
						<spring:theme code="login.link.forgottenPwd" />
					</a>
				</ycommerce:testId>
				</div>
			</div>
              <div class="col-md-5 col-xs-6 text-right">
                <div class="control-group">
                  <label class="control control--checkbox">
                  Stay signed in
                  <input type="checkbox" checked="checked"/>
                  <div class="control__indicator"></div>
                  </label>
                </div>
              </div>
            </div>
            <div class="row">
              <div class="col-md-12 col-xs-12">
                <button type="submit" style-"border-right:10px;" class="shop_nw_btn-responsive margn_tp_bt_20">Sign In</button>
              </div>
           <div class="col-xs-12 text-center">
                  <div class="dvider_t"></div>
                </div>
                <div class="col-md-12 col-xs-12">
                  <h4>Sign In or Register using social media account:</h4>
                  <div class="social_di_log text-center">
                    <ul>
                      <li> <a href=""><i class="fa fa-facebook" aria-hidden="true"></i></a> </li>
                      <li> <a href=""><i class="fa fa-instagram" aria-hidden="true"></i></a> </li>
                      <li> <a href=""><i class="fa fa-youtube" aria-hidden="true"></i></a> </li>
                    </ul>
                  </div>
                </div>
            </div>
          </form>
        </div>
      </div>
    </div>
		
	
		<%-- <formElement:formInputBox idKey="j_username" labelKey="login.email"
			path="j_username" mandatory="true" />
		<formElement:formPasswordBox idKey="j_password"
			labelKey="login.password" path="j_password" inputCSS="form-control"
			mandatory="true" />
	
			<div class="forgotten-password">
				<ycommerce:testId code="login_forgotPassword_link">
					<a href="<c:url value='/login/pw/request'/>" class="js-password-forgotten" data-cbox-title="<spring:theme code="forgottenPwd.title"/>">
						<spring:theme code="login.link.forgottenPwd" />
					</a>
				</ycommerce:testId>
			</div>
		<ycommerce:testId code="loginAndCheckoutButton">
			<button type="submit" class="btn btn-primary btn-block">
				<spring:theme code="${actionNameKey}" />
			</button>
		</ycommerce:testId> --%>
		

	
	<c:if test="${expressCheckoutAllowed}">
		<button type="submit" class="btn btn-default btn-block expressCheckoutButton"><spring:theme code="text.expresscheckout.header" text="Express Checkout"/></button>
		<input id="expressCheckoutCheckbox" style="display:none" name="expressCheckoutEnabled" type="checkbox" class="form left doExpressCheckout" />
	</c:if>

</form:form>

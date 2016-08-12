<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="address" tagdir="/WEB-INF/tags/desktop/address"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="formElement" tagdir="/WEB-INF/tags/desktop/formElement"%>
<%@ taglib prefix="template" tagdir="/WEB-INF/tags/desktop/template"%>
<%@ taglib prefix="user" tagdir="/WEB-INF/tags/desktop/user"%>
<%@ taglib prefix="cms" uri="http://hybris.com/tld/cmstags"%>
<%@ taglib prefix="common" tagdir="/WEB-INF/tags/desktop/common"%>
<%@ taglib prefix="nav" tagdir="/WEB-INF/tags/desktop/nav"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="ycommerce" uri="http://hybris.com/tld/ycommercetags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="formElement"
	tagdir="/WEB-INF/tags/desktop/formElement"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
<%@ taglib prefix="product" tagdir="/WEB-INF/tags/desktop/product"%>



<section class="white_bg_m">

<div class="container">
  <div class="row">
    
    <div class="col-md-12">
      <h2 class="margn_bot_25 margn_tp_n"><spring:theme code="text.account.aboutYourChildren" text="About Your Children"/> <span class="pull-right"><a href="" class="fnt_13"><spring:theme code="text.account.addChild" text="Add A Child"/></a></span></h2>
    </div>
  </div>
  <div class="row">
    <div class="col-md-6 col-sm-6 col-xs-12 margn_bot_50">
    <spring:url value="/my-account/add-children" var="addChildrenUrl"/>
      <div class="personal_form bx_shd_n pad_none">
      
        <p><spring:theme code="text.account.children.enterDetails" text="Please enter your childs details."/></p>
        <div>
          <form:form role="form" class="main-form" name="childrenForm" id="children_form" method="POST" commandName="childrenForm" action="${addChildrenUrl}" onsubmit="">
            <div class="form-group">
              <label for="firstNameLabel"><spring:theme code="text.account.children.firstName" text="First Name"/></label>
              <form:input type="text" class="form-control" id="" placeholder="firstname" path="firstName" />
            </div>
            <div class="form-group">
              <label for="secondNameLabel"><spring:theme code="text.account.children.lastName"   text="Last Name"/></label>
              <form:input type="text" class="form-control" id="" placeholder="lastname" path="lastName" />
            </div>
            <div class="form-group">
              <label for="exampleInputPassword1"><spring:theme code="text.account.children.dob"  text="Date Of Birth"/></label>
              <form:input type="date" class="form-control" id="" placeholder="mm-dd-yyyy" path="dob" />
            </div>
            <div class="form-group">
              <label for="exampleInputPassword1"><spring:theme code="text.account.children.gender"  text="Gender"/></label>
              <form:input type="text" class="form-control" id="" placeholder="Male/Female" path="gender"/>
            </div>
            <div class="row">
              <div class="col-xs-12">
              <div class="form group submit-action">
                <button type="submit" class="btn btn-default upadte_btn"><spring:theme code="text.account.children.submit" text="Submit"/></button>
              </div>
              </div>
            </div>
          </form:form>
        </div>
      </div>
    </div>
    
  </div>
</div>
</section>
<script type="text/javascript">
	$(document)
			.ready(R
					function() {
						$(".submit-action .button-orange").submit(function( event ) {
							e.preventDefault();
							if ($("#product_registration_for_customer_form").valid()) {
								$("#product_registration_for_customer_form").submit();
							}
						});

						$("#product_registration_for_customer_form")
								.validate(
										{
											focusInvalid : false,
											rules : {
												styleNameProductRegistration : {
													required : true,
												},
											},
											messages : {
												styleNameProductRegistration : {
													required : '<spring:theme code="please.provide.product.style"/>'
												}

											}

										});
		
					});
</script>
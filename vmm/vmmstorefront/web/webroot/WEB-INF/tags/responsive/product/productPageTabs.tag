<%@ tag body-content="empty" trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="product" tagdir="/WEB-INF/tags/responsive/product"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="cms" uri="http://hybris.com/tld/cmstags"%>


<section class="margn_top_15 margn_bot_25">
<div class="tabs js-tabs tabs-responsive">

  <div class="container ">
    <div class="white_bg bdr_raidos">
      <div class="bx" style="border-radius:10px 10px 0 0;"> <a href="javascript:void(0)" class="b_1 bdr_rad"><spring:theme code="product.product.details" /> <span class="fa pull-right gh"></span></a>
        <div class="con_1"> <product:productDetailsTab product="${product}" /></div>
      </div>
      <div class="bx"> <a href="javascript:void(0)" class="b_1"><spring:theme code="product.product.spec" /> <span class="fa pull-right gh"></span></a>
        <div class="con_1"> <product:productDetailsClassifications product="${product}" /></div>
      </div>
      <div class="bx"> <a href="javascript:void(0)" class="b_1"><spring:theme code="review.reviews" /> <span class="fa pull-right gh"></span></a>
        <div class="con_1"> <product:productPageReviewsTab product="${product}" /></div>
      </div>
      <div class="bx"> <a href="javascript:void(0)" class="b_1">Shipping & Returns <span class="fa pull-right gh"></span></a>
        <div class="con_1"> Loreum ipsum is a dummy text, since 1560</div>
      </div>
      <div class="bx"> <a href="javascript:void(0)" class="b_1 bdr_rad1">Videos <span class="fa  pull-right gh"></span></a>
        <div class="con_1"> Loreum ipsum is a dummy text, since 1560</div>
      </div>
    </div>
  </div>
 <%--  <cms:pageSlot position="Tabs" var="tabs">
		<cms:component component="${tabs}" />
	</cms:pageSlot>  --%> 
  </div>
</section>



<%-- 
<div class="tabs js-tabs tabs-responsive">
	<div class="tabhead">
		<a href=""><spring:theme code="product.product.details" /></a> <span
			class="glyphicon"></span>
	</div>
	<div class="tabbody">
		<div class="container-lg">
			<div class="row">
				<div class="col-md-6 col-lg-4">
					<div class="tab-container">
						<product:productDetailsTab product="${product}" />
					</div>
				</div>
			</div>
		</div>
	</div>

	<div class="tabhead">
		<a href=""><spring:theme code="product.product.spec" /></a> <span
			class="glyphicon"></span>
	</div>
	<div class="tabbody">
		<div class="container-lg">
			<div class="row">
				<div class="col-md-6 col-lg-4">
					<div class="tab-container">
						<product:productDetailsClassifications product="${product}" />
					</div>
				</div>
			</div>
		</div>
	</div>

	<div id="tabreview" class="tabhead">
		<a href=""><spring:theme code="review.reviews" /></a> <span
			class="glyphicon"></span>
	</div>
	<div class="tabbody">
		<div class="container-lg">
			<div class="row">
				<div class=" col-md-6 col-lg-4">
					<div class="tab-container">
						<product:productPageReviewsTab product="${product}" />
					</div>
				</div>
			</div>
		</div>
	</div>

	<cms:pageSlot position="Tabs" var="tabs">
		<cms:component component="${tabs}" />
	</cms:pageSlot>

</div> --%>
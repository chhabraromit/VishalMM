<%@ tag body-content="empty" trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="product" tagdir="/WEB-INF/tags/responsive/product"%>
<%@ taglib prefix="cms" uri="http://hybris.com/tld/cmstags"%>
<%@ taglib prefix="ycommerce" uri="http://hybris.com/tld/ycommercetags"%>
<%@ taglib prefix="product" tagdir="/WEB-INF/tags/responsive/product"%>

<section class="white_bg_m">

 
<div class="container">
  <div class="row">
    <div class="col-md-5 col-xs-12">
      <div class="detail_slid"> <product:productImagePanel galleryImages="${galleryImages}"
			product="${product}" />
            
            
            
          </div>
        </div>
          <div class="col-md-7 col-xs-12">
      <div class="detail_right">
        <h2 class="sal_bx_hd"> <ycommerce:testId code="productDetails_productNamePrice_label_${product.code}">
		<div class="sal_bx_hd">${product.name} <span class="sku">ID</span><span class="code">${product.code}</span></div>
	</ycommerce:testId></h2>
        <div class="price_di"> <ycommerce:testId	code="productDetails_productNamePrice_label_${product.code}">
							<product:productPricePanel product="${product}" />
						</ycommerce:testId>
							<product:productReviewSummary product="${product}" showLinks="true"/>
						
						</div>
						
			<div class="control-group">
            <cms:pageSlot position="VariantSelector" var="component" element="div" class="page-details-variants-select">
								<cms:component component="${component}" element="div" class="yComponentWrapper page-details-variants-select-component"/>
							</cms:pageSlot>



							<cms:pageSlot position="AddToCart" var="component" element="div" class="page-details-variants-select">
								<cms:component component="${component}" element="div" class="yComponentWrapper page-details-add-to-cart-component"/>
							</cms:pageSlot>
        </div>
        
<%--         <span class="star_badg2"><a href="#"><product:productReviewSummary product="${product}" showLinks="true"/></a></span>
 --%>        <div class="dvider_t"></div>
  
</div>
</div>
        
      </div>
    </div>
  


</section>



<%-- 
<div class="detail_right">
	<ycommerce:testId code="productDetails_productNamePrice_label_${product.code}">
		<div class="sal_bx_hd">${product.name} <span class="sku">ID</span><span class="code">${product.code}</span></div>
	</ycommerce:testId>
	<ycommerce:testId	code="productDetails_productNamePrice_label_${product.code}">
							<product:productPricePanel product="${product}" />
						</ycommerce:testId>
	<product:productReviewSummary product="${product}" showLinks="true"/>

</div>
<div class="row">
	<div class="col-xs-10 col-xs-push-1 col-sm-6 col-sm-push-0 col-lg-4">
		<product:productImagePanel galleryImages="${galleryImages}"
			product="${product}" />
	</div>
	<div class="clearfix hidden-sm hidden-md hidden-lg"></div>
	<div class="col-sm-6 col-lg-8">
		<div class="product-main-info">
			<div class="row">
				<div class="col-lg-6">
					<div class="product-details">
						<product:productPromotionSection product="${product}"/>

						

						<div class="description">${product.summary}</div>
					</div>
				</div>

				<div class="col-sm-12 col-md-9 col-lg-6">

							<cms:pageSlot position="VariantSelector" var="component" element="div" class="page-details-variants-select">
								<cms:component component="${component}" element="div" class="yComponentWrapper page-details-variants-select-component"/>
							</cms:pageSlot>



							<cms:pageSlot position="AddToCart" var="component" element="div" class="page-details-variants-select">
								<cms:component component="${component}" element="div" class="yComponentWrapper page-details-add-to-cart-component"/>
							</cms:pageSlot>

				</div>
			</div>
		</div>

	</div>
</div> --%>
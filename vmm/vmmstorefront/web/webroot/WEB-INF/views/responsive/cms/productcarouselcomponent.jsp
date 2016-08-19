<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="theme" tagdir="/WEB-INF/tags/shared/theme" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="format" tagdir="/WEB-INF/tags/shared/format" %>
<%@ taglib prefix="product" tagdir="/WEB-INF/tags/responsive/product" %>
<%@ taglib prefix="component" tagdir="/WEB-INF/tags/shared/component" %>

<c:choose>
	<c:when test="${not empty productData}">
		<div class="container">
		<div class="row">
			<div class="col-md-12"> <h2 class="margn_bot_25">${title}</h2></div>
</div>
			<c:choose>
				<c:when test="${component.popup}">
					<div class="carousel__component--carousel js-owl-carousel js-owl-lazy-reference js-owl-carousel-reference">
						<div id="quickViewTitle" class="quickView-header display-none">
							<div class="headline">
								<span class="headline-text"><spring:theme code="popup.quick.view.select"/></span>
							</div>
						</div>
						<c:forEach items="${productData}" var="product">
							<c:url value="${product.url}/quickView" var="productQuickViewUrl"/>
							<div class="carousel__item">
								<a href="${productQuickViewUrl}" class="js-reference-item">
									<div class="carousel__item--thumb">
										<product:productPrimaryReferenceImage product="${product}" format="product"/>
									</div>
									<div class="carousel__item--name">${product.name}</div>
									<div class="carousel__item--price"><format:fromPrice priceData="${product.price}"/></div>
								</a>
							</div>
						</c:forEach>
					</div>
				</c:when>
				<c:otherwise>
				<div class="col-md-12">
					<div id="owl-demo2" class="owl-carousel owl-theme">

						<c:forEach items="${productData}" var="product">

							<c:url value="${product.url}" var="productUrl"/>
							<div class="item">
            <div class="sale_bx">

								<a href="${productUrl}">
									 <div class="text-center">
										<product:productPrimaryImage product="${product}" format="product"/>
									</div>
									<div class="pad_20">
									
									<h3 class="sal_bx_hd">${product.name}</h3>
									 <div class="price_di"> <format:fromPrice priceData="${product.price}"/></div>
									</div>
								</a>
							</div>
							</div> 
						</c:forEach>
					</div>
					</div>
				</c:otherwise>
			</c:choose>
		
		</div>
	</c:when>

	<c:otherwise>
		<component:emptyComponent/>
	</c:otherwise>
</c:choose>
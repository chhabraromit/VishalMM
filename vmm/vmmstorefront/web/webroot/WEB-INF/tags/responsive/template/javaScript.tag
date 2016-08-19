<%@ tag body-content="empty" trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ taglib prefix="theme" tagdir="/WEB-INF/tags/shared/theme" %>
<%@ taglib prefix="cms" tagdir="/WEB-INF/tags/responsive/template/cms" %>
<%@ taglib prefix="template" tagdir="/WEB-INF/tags/responsive/template" %>

<c:url value="/" var="siteRootUrl"/>

<template:javaScriptVariables/>

<c:choose>
	<c:when test="${wro4jEnabled}">
	  	<script type="text/javascript" src="${contextPath}/wro/all_responsive.js"></script>
	  	<script type="text/javascript" src="${contextPath}/wro/addons_responsive.js"></script>
	</c:when>
	<c:otherwise>
		<%-- jquery --%>
		<script type="text/javascript" src="${commonResourcePath}/js/jquery-2.1.1.min.js"></script>
		<script type="text/javascript" src="${commonResourcePath}/js/owl.carousel.min.js"></script>
		
		<%-- bootstrap --%>
		<script type="text/javascript" src="${commonResourcePath}/bootstrap/dist/js/bootstrap.min.js"></script>
		
		<%-- plugins --%>
		<script type="text/javascript" src="${commonResourcePath}/js/enquire.min.js"></script>
		<script type="text/javascript" src="${commonResourcePath}/js/Imager.min.js"></script>
		<script type="text/javascript" src="${commonResourcePath}/js/jquery.blockUI-2.66.js"></script>
		<script type="text/javascript" src="${commonResourcePath}/js/jquery.colorbox-min.js"></script>
		<script type="text/javascript" src="${commonResourcePath}/js/jquery.form.min.js"></script>
		<script type="text/javascript" src="${commonResourcePath}/js/jquery.hoverIntent.js"></script>
		<script type="text/javascript" src="${commonResourcePath}/js/jquery.pstrength.custom-1.2.0.js"></script>
		<script type="text/javascript" src="${commonResourcePath}/js/jquery.syncheight.custom.js"></script>
		<script type="text/javascript" src="${commonResourcePath}/js/jquery.tabs.custom.js"></script>
		<script type="text/javascript" src="${commonResourcePath}/js/jquery-ui-1.11.2.min.js"></script>
		<script type="text/javascript" src="${commonResourcePath}/js/jquery.zoom.custom.js"></script>
		<script type="text/javascript" src="${commonResourcePath}/js/owl.carousel.custom.js"></script>
		<script type="text/javascript" src="${commonResourcePath}/js/jquery.tmpl-1.0.0pre.min.js"></script>
		<script type="text/javascript" src="${commonResourcePath}/js/jquery.currencies.min.js"></script>
		
		<%-- added for ui changes --%>
		

 
<script type="text/javascript" src="${commonResourcePath}/js/bootstrap-datepicker.js"></script>
 


		<%-- Custom ACC JS --%>
	
		<script type="text/javascript" src="${commonResourcePath}/js/jquery.mmenu.all.min.js"></script>
		
		
		<script type="text/javascript" src="${commonResourcePath}/js/acc.address.js"></script>
		<script type="text/javascript" src="${commonResourcePath}/js/acc.autocomplete.js"></script>
		<script type="text/javascript" src="${commonResourcePath}/js/acc.carousel.js"></script>
		<script type="text/javascript" src="${commonResourcePath}/js/acc.cart.js"></script>
		<script type="text/javascript" src="${commonResourcePath}/js/acc.cartitem.js"></script>
		<script type="text/javascript" src="${commonResourcePath}/js/acc.checkout.js"></script>
		<script type="text/javascript" src="${commonResourcePath}/js/acc.checkoutaddress.js"></script>
		<script type="text/javascript" src="${commonResourcePath}/js/acc.checkoutsteps.js"></script>
		<script type="text/javascript" src="${commonResourcePath}/js/acc.cms.js"></script>
		<script type="text/javascript" src="${commonResourcePath}/js/acc.colorbox.js"></script>
		<script type="text/javascript" src="${commonResourcePath}/js/acc.common.js"></script>
		<script type="text/javascript" src="${commonResourcePath}/js/acc.forgottenpassword.js"></script>
		<script type="text/javascript" src="${commonResourcePath}/js/acc.global.js"></script>
		<script type="text/javascript" src="${commonResourcePath}/js/acc.hopdebug.js"></script>
		<script type="text/javascript" src="${commonResourcePath}/js/acc.imagegallery.js"></script>
		<script type="text/javascript" src="${commonResourcePath}/js/acc.langcurrencyselector.js"></script>
		<script type="text/javascript" src="${commonResourcePath}/js/acc.minicart.js"></script>
		<%-- <script type="text/javascript" src="${commonResourcePath}/js/acc.navigation.js"></script> --%>
		<script type="text/javascript" src="${commonResourcePath}/js/acc.order.js"></script>
		<script type="text/javascript" src="${commonResourcePath}/js/acc.paginationsort.js"></script>
		<script type="text/javascript" src="${commonResourcePath}/js/acc.payment.js"></script>
		<script type="text/javascript" src="${commonResourcePath}/js/acc.paymentDetails.js"></script>
		<script type="text/javascript" src="${commonResourcePath}/js/acc.pickupinstore.js"></script>
		<script type="text/javascript" src="${commonResourcePath}/js/acc.product.js"></script>
		<script type="text/javascript" src="${commonResourcePath}/js/acc.productDetail.js"></script>
		<script type="text/javascript" src="${commonResourcePath}/js/acc.quickview.js"></script>
		<script type="text/javascript" src="${commonResourcePath}/js/acc.ratingstars.js"></script>
		<script type="text/javascript" src="${commonResourcePath}/js/acc.refinements.js"></script>
		<script type="text/javascript" src="${commonResourcePath}/js/acc.silentorderpost.js"></script>
		<script type="text/javascript" src="${commonResourcePath}/js/acc.tabs.js"></script>
		<script type="text/javascript" src="${commonResourcePath}/js/acc.termsandconditions.js"></script>
		<script type="text/javascript" src="${commonResourcePath}/js/acc.track.js"></script>
		<script type="text/javascript" src="${commonResourcePath}/js/acc.storefinder.js"></script>
		<script type="text/javascript" src="${commonResourcePath}/js/acc.futurelink.js"></script>
		<script type="text/javascript" src="${commonResourcePath}/js/acc.productorderform.js"></script>
		<script type="text/javascript" src="${commonResourcePath}/js/acc.savedcarts.js"></script>
		<script type="text/javascript" src="${commonResourcePath}/js/acc.multidgrid.js"></script>
		<script type="text/javascript" src="${commonResourcePath}/js/acc.quickorder.js"></script>

		<script type="text/javascript" src="${commonResourcePath}/js/acc.csv-import.js"></script>

		<script type="text/javascript" src="${commonResourcePath}/js/_autoload.js"></script>
		
		
		
		
		
		
		<%-- Cms Action JavaScript files --%>
		<c:forEach items="${cmsActionsJsFiles}" var="actionJsFile">
		    <script type="text/javascript" src="${commonResourcePath}/js/cms/${actionJsFile}"></script>
		</c:forEach>
		
		<%-- AddOn JavaScript files --%>
		<c:forEach items="${addOnJavaScriptPaths}" var="addOnJavaScript">
		    <script type="text/javascript" src="${addOnJavaScript}"></script>
		</c:forEach>
		
	</c:otherwise>
</c:choose>


<cms:previewJS cmsPageRequestContextData="${cmsPageRequestContextData}" />
<<<<<<< HEAD





</script>
<script type="text/javascript">
			$(function() {
				$('nav#menu').mmenu({
					extensions	: [ 'effect-slide-menu', 'pageshadow' ],
					searchfield	: false,
					slidingSubmenus: false,
					counters	: true,
					navbar 		: {
						title		: ''
					},
					navbars		: [
						 {
							position	: 'top',
							content		: [
								'prev',
								'title',
								'close'
							]
						}, 
					]
				});
			});
		</script>
		<script>
    $(document).ready(function() {
		
		
 
  //Sort random function
  function random(owlSelector){
    owlSelector.children().sort(function(){
        return Math.round(Math.random()) - 0.5;
    }).each(function(){
      $(this).appendTo(owlSelector);
    });
  }
 
  $("#owl-demo2, #owl-demo3").owlCarousel({
    navigation: true,
    navigationText: [
      "<i class='fa fa-chevron-left'></i>",
      "<i class='fa fa-chevron-right'></i>"
      ],
    beforeInit : function(elem){
      //Parameter elem pointing to $("#owl-demo")
      random(elem);
    }
 
  });
 
});
    
    </script> 
		
		<script>


$('.nav#menu').click(function(){
	alert('gh');
	$(this).toggleClass('mob-cross');
	$('.mob-menu').fadeToggle();
	$('body').toggleClass('sca');
});

   
           
  $(window).resize(function(){
    
        $('.mob-menu').hide();
        $('.mob-toggle').removeClass('mob-cross');
        $('body').removeClass('sca');
   });


$(document).ready(function(){
	$('.con_1').slideUp();
	$('.gh').addClass( 'fa-plus')
	
	$("div.bx").click(function(){
		//var index = $(this).index();
		
		if($(this).children('div').css('display') == 'block'){
			$(this).children('div').slideUp();
		 	
			
		}
		
		if($(this).children('div').css('display') == 'none'){
				$('div.con_1').slideUp();
				
			$(this).children('div').slideDown();
			
		
		 
		}
		
		//$(this).children('div.con_1').slideToggle();
 });

		
});	


</script> 

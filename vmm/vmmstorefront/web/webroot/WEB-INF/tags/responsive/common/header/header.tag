<%@ tag body-content="empty" trimDirectiveWhitespaces="true"%>
<%@ attribute name="hideHeaderLinks" required="false"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="cms" uri="http://hybris.com/tld/cmstags"%>
<%@ taglib prefix="ycommerce" uri="http://hybris.com/tld/ycommercetags"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
<%@ taglib prefix="nav" tagdir="/WEB-INF/tags/responsive/nav"%>

<cms:pageSlot position="TopHeaderSlot" var="component" element="div" class="container">
	<cms:component component="${component}" />
</cms:pageSlot>

<header class="js-mainHeader">
	
	<%-- a hook for the my account links in desktop/wide desktop--%>
	
<nav class="navbar navbar-inverse top_navbar display_b">
  <div class="container">
    <nav id="bs-navbar" class="">
      <ul class="nav navbar-nav country_sel">
        <li></li>
        <li class="dropdown"> <a class="dropdown-toggle"  data-toggle="dropdown" href="#" >GBP (&euro;) <span class="caret"></span></a>
          <ul class="dropdown-menu dropdown-color disply-li ">
            <li><a href="#"><img src="${themeResourcePath}/images/flag.png" class="img-responsive" /> GBP (&euro;)</a></li>
            <li><a href="#"><img src="${themeResourcePath}/images/india.png" class="img-responsive" /> EUR (&euro;)</a></li>
          </ul>
        </li>
        <li> <a href=""><i class="fa fa-map-marker" aria-hidden="true"></i> Find a store</a> </li>
     
      </ul>
    </nav>
    <nav>
      <ul class="nav navbar-nav navbar-right sign_in_tab">
      <li>
      <sec:authorize ifNotGranted="ROLE_ANONYMOUS">
								<c:set var="maxNumberChars" value="25" />
								<c:if test="${fn:length(user.firstName) gt maxNumberChars}">
									<c:set target="${user}" property="firstName"
										value="${fn:substring(user.firstName, 0, maxNumberChars)}..." />
								</c:if>

								<li class="logged_in js-logged_in">
									<ycommerce:testId code="header_LoggedUser">
									
									<li><a href="login.html"><i class="fa fa-user" aria-hidden="true"></i>
										<spring:theme code="header.welcome" arguments="${user.firstName},${user.lastName}" htmlEscape="true" /></a>
									</ycommerce:testId>
								</li>
							</sec:authorize>
      
      
      </li>
     
        
        
        
        <li class="dropdown mega-dropdown">
         <cms:pageSlot position="HeaderLinks" var="link">
								 <cms:component component="${link}" element="li" />
							 </cms:pageSlot>
        </li>
        <sec:authorize ifAnyGranted="ROLE_ANONYMOUS">
        <li><a href="<c:url value='/login'/>"><i class="fa fa-sign-in" aria-hidden="true"></i> <spring:theme code="header.link.login" /></a></li>
        </sec:authorize>
        <sec:authorize ifNotGranted="ROLE_ANONYMOUS">
        <li><a href="<c:url value='/logout'/>"><i class="fa fa-sign-out" aria-hidden="true"></i> <spring:theme code="header.link.logout" /></a></li>
        </sec:authorize>
        <li><a href="cart"><i class="fa fa-shopping-cart" aria-hidden="true"></i> <spring:theme code="header.link.basket" /></a></li>
      </ul>
    </nav>
    <!--/.navbar-collapse -->
  </div>
</nav>

<div class="container-fluid head_bg display_b" >
  <div class="container ">
    <div class="row">
      <div class="col-md-3"> <cms:pageSlot position="SiteLogo" var="logo" limit="1">
						<cms:component component="${logo}" element="div" class="yComponentWrapper"/>
					</cms:pageSlot> </div>
      <div class="col-md-9 col-sm-9 col-xs-12">
        <div class="" style="border-radius:15px; background-color:#fff;">
          <div class="input-group">
            <input type="text" class="form-control" placeholder="Search for toys" style="background-color:transparent; border:none;">
            <span class="input-group-btn">
            <button class="btn btn-default" style="background-color:transparent; border:none;" type="button"><i class="fa fa-search" aria-hidden="true"></i></button>
            </span> </div>
        </div>
      </div>
    </div>
    <div class="row">
      <div class="col-md-12">
        <div id="navbar">
        <nav:topNavigation />
          <%-- <nav class="navbar navbar-default navbar-static-top nav-main-menu" role="navigation">
            <div class="collapse navbar-collapse" id="navbar-collapse-1">
              <ul class="nav navbar-nav  main_nav">
                <li class="dropdown"> <a href="#" class="dropdown-toggle" data-toggle="dropdown">Toys <b class="caret"></b></a>
                  <ul class="dropdown-menu drp-dwn-1">
                    <li><a href="#">Dropdown Link 1</a></li>
                    <li><a href="#">Dropdown Link 2</a></li>
                    <li><a href="#">Dropdown Link 3</a></li>
                    <li class="dropdown dropdown-submenu"><a href="#" class="dropdown-toggle" data-toggle="dropdown">Dropdown Link 4</a>
                      <ul class="dropdown-menu drp-dwn-2">
                        <li><a href="#">Dropdown Submenu Link 4.1</a></li>
                        <li><a href="#">Dropdown Submenu Link 4.2</a></li>
                        <li><a href="#">Dropdown Submenu Link 4.3</a></li>
                        <li><a href="#">Dropdown Submenu Link 4.4</a></li>
                        <li><a href="#">Dropdown Submenu Link 4.4</a></li>
                      </ul>
                    </li>
                    <li><a href="#">Dropdown Link 5</a></li>
                  </ul>
                </li>
                <li> <a href="#">Baby</a> </li>
                <li> <a href="#">Outdoor</a> </li>
                <li> <a href="#">Gift</a> </li>
                <li> <a href="#">Special Offers</a> </li>
              </ul>
            </div>
            <!-- /.navbar-collapse -->
          </nav> --%>
        </div>
      </div>
    </div>
 

    <!--<div class="row">
       <div class="col-md-3 col-xs-12">
       <div class="bannr_tab">
       <a href="#">FREE HOME DELIVERY</a>
       <a href="#">FINDOUT MORE</a>
       </div>
       
       </div>
    
    
    </div>-->
  </div>
</div>
   <div class="container">
  <div id="owl-demo" class="owl-carousel owl-theme" style="opacity: 1; display: block;">
    <div class="owl-wrapper-outer"><div class="owl-wrapper" style="width: 1986px; left: 0px; display: block; transition: all 1000ms ease; transform: translate3d(0px, 0px, 0px);"><div class="owl-item" style="width: 331px;"><div class="item">
      <div class="bannr_tab"> <a href="faq">FREE HOME DELIVERY</a> <a href="faq" class="find_more_a">FINDOUT MORE</a> </div>
    </div></div><div class="owl-item" style="width: 331px;"><div class="item">
      <div class="bannr_tab"> <a href="faq">Order by 7pm &amp; Get next day delivery</a> <a href="faq" class="find_more_a">FINDOUT MORE</a> </div>
    </div></div><div class="owl-item" style="width: 331px;"><div class="item bodr_none">
      <div class="bannr_tab"> <a href="faq">click &amp; collect in store</a> <a href="faq" class="find_more_a">FINDOUT MORE</a> </div>
    </div></div></div></div>
    
    
  </div>
</div>
<div class="container-fluid head_bg display_n">

  <nav class="mob-menu">
     <div id="page">
			<div class="header">
				<a href="#menu"></a>
				Demo
			</div>
			
			<nav id="menu">
				<ul>
					<li><a href="#">GBP (&euro;)</a>
					
					<ul class="disply-li ">
							 <li><a href="#"><img src="images/flag.png" class="img-responsive" /> GBP (&euro;)</a></li>
            <li><a href="#"><img src="images/india.png" class="img-responsive" /> EUR (&euro;)</a></li>
								</ul>
					</li>
					<li><a href="#about"><i class="fa fa-user" aria-hidden="true"></i> &nbsp; Sign in / Register</a>
						<ul>
							<li><a href="#">History</a></li>
							<li><a href="#">The team</a></li>
							<li><a href="#">Our address</a></li>
						</ul>
					</li>
					<li><a href="#">Toys</a>
					<ul>
							<li><a href="#">Action Figures and Playsets</a></li>
							<li><a href="#">Construction and Cars</a></li>
							<li><a href="#">Lego And Bricks</a></li>
							<li><a href="#">Pre-school</a></li>
							<li><a href="#">2 For 15</a></li>
						</ul>
					
					</li>
						<li><a href="#">Baby</a></li>
							<li><a href="#">Outdoor</a></li>
							<li><a href="#">Video Games</a></li>
							<li><a href="#">Gifts</a></li>
							<li><a href="#">Special Offers</a></li>
				</ul>
			</nav>
		</div>
  </nav>
  
  
  <div class="row margn_bot_15">
    <div class="col-xs-2 col-sm-1 mobile_manu">
    <a href="#menu"> <i class="fa fa-bars" aria-hidden="true"></i></a>
    </div>
    <div class="col-xs-6 col-sm-9 text-center"> <a href="index.html"><img src="images/v_mart_logo_mob.png" /></a> </div>
    <div class="col-xs-2 col-sm-1 text-right mobile_manu"> <a href="#"><i class="fa fa-map-marker" aria-hidden="true"></i></a> </div>
    <div class="col-xs-2 col-sm-1 text-right mobile_manu"> <a href="#"><i class="fa fa-shopping-cart" aria-hidden="true"></i></a> </div>
  </div>
  <div class="row">
    <div class="col-xs-12">
      <div class="" style="border-radius:15px; background-color:#fff;">
        <div class="input-group">
          <input type="text" class="form-control" placeholder="Search for toys" style="background-color:transparent; border:none;">
          <span class="input-group-btn">
          <button class="btn btn-default" style="background-color:transparent; border:none; color: #1f96f4;" type="button"><i class="fa fa-search" aria-hidden="true"></i></button>
          </span> </div>
      </div>
    </div>
  </div>
</div>
	
</header>


<cms:pageSlot position="BottomHeaderSlot" var="component" element="div"	class="container-fluid">
	<cms:component component="${component}" />
</cms:pageSlot>

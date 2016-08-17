	<%@ page trimDirectiveWhitespaces="true" %>
		<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
		<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
		<%@ taglib prefix="cms" uri="http://hybris.com/tld/cmstags" %>

		<c:set value="${component.styleClass} ${dropDownLayout}" var="bannerClasses"/>

		<li class="dropdown">
			
			<cms:component component="${component.link}" evaluateRestriction="true"/>
			
			<c:if test="${not empty component.navigationNode.children}">

				<c:set var="totalSubNavigationColumns" value="${0}"/>

				<c:forEach items="${component.navigationNode.children}" var="subSection" varStatus="loop">
					<c:set value="${fn:length(subSection.links)/component.wrapAfter}" var="subSectionColumns"/>
					<c:choose>
						<c:when test="${subSectionColumns > 1}">
							<c:set var="totalSubNavigationColumns" value="${totalSubNavigationColumns + subSectionColumns}" />
						</c:when>

						<c:when test="${subSectionColumns < 1}">
							<c:set var="totalSubNavigationColumns" value="${totalSubNavigationColumns + 1}" />
						</c:when>
					</c:choose>

					<c:if test="${not empty subSection.title}">
						<c:set var="hasTitleClass" value="has-title"/>
					</c:if>
				</c:forEach>

				<c:choose>
					<c:when test="${totalSubNavigationColumns > 0 && totalSubNavigationColumns <= 1}">
						<c:set value="col-md-3 col-lg-2" var="subNavigationClass"/>
						<c:set value="col-md-12" var="subNavigationItemClass"/>
					</c:when>

					<c:when test="${totalSubNavigationColumns == 2}">
						<c:set value="col-md-6 col-lg-4" var="subNavigationClass"/>
						<c:set value="col-md-6" var="subNavigationItemClass"/>
					</c:when>

					<c:when test="${totalSubNavigationColumns == 3}">
						<c:set value="col-md-9 col-lg-6" var="subNavigationClass"/>
						<c:set value="col-md-4" var="subNavigationItemClass"/>
					</c:when>

					<c:when test="${totalSubNavigationColumns == 4}">
						<c:set value="col-md-12 col-lg-8" var="subNavigationClass"/>
						<c:set value="col-md-3" var="subNavigationItemClass"/>
					</c:when>

					<c:when test="${totalSubNavigationColumns == 5}">
						<c:set value="col-md-12" var="subNavigationClass"/>
						<%--custom grid class required because 1/5th columns aren't supported by bootstrap--%>
						<c:set value="column-20-percent" var="subNavigationItemClass"/>
					</c:when>

					<c:when test="${totalSubNavigationColumns > 5}">
						<c:set value="col-md-12" var="subNavigationClass"/>
						<c:set value="col-md-2" var="subNavigationItemClass"/>
					</c:when>
				</c:choose>
				<%-- <c:if test="${not empty component.navigationNode.children}"><span class="glyphicon  glyphicon-chevron-right hidden-md hidden-lg nav__link--drill__down js_nav__link--drill__down"></span></c:if> --%>
			
					
					
					<c:forEach items="${component.navigationNode.children}" var="child">
						<c:if test="${child.visible}">
							
								<%-- for a large amount of links (depending on what wrapAfter is set to) that would exceed 6 columns, insert a clearfix div to have the next row properly aligned --%>
								

								<!-- in loop
									only add title on first loop for each sub-section -->
									

									 <ul class="dropdown-menu drp-dwn-1">
										<c:forEach items="${child.links}" var="childlink" begin="${i.index}" end="${i.index + component.wrapAfter - 1}">
											<%-- <c:if test="${fn:contains(childlink.uid, 'BrowseAll')}">
												<span class="text-uppercase">
											</c:if> --%>
											<cms:component component="${childlink}" evaluateRestriction="true" element="li"  />
											<c:if test="${fn:contains(childlink.uid, 'BrowseAll')}">
												</span>
											</c:if>
										</c:forEach>
									</ul> 

								
							
						</c:if>
					</c:forEach>
				
				
			</c:if>
		</li>

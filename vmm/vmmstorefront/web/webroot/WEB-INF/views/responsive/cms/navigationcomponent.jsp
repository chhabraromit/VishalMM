<%@ page trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="cms" uri="http://hybris.com/tld/cmstags"%>

 <c:set value="${component.styleClass}" var="navigationClass" />

<c:if test="${component.visible}">
    <div class="${navigationClass} js-${navigationClass} display-none NAVcompONENT" data-title="${component.navigationNode.title}">
        <nav class="${navigationClass}__child-wrap display-none">
            <c:if test="${not empty component.navigationNode.title }">
           
                <div>
                    <c:out value="${component.navigationNode.title}"/>
                </div>
            </c:if>
            <c:forEach items="${component.navigationNode.children}" var="topLevelChild">
            
                <c:forEach items="${topLevelChild.entries}" var="entry">
                    <div>
                        <cms:component component="${entry.item}" evaluateRestriction="true" />
                    </div>
                </c:forEach>
            </c:forEach>
        </nav>
    </div>
</c:if> 



 <a href="#" class="dropdown-toggle" data-toggle="dropdown">${component.navigationNode.title}</a>
          <ul class="dropdown-menu mega-dropdown-menu container dropdown-color dropdown-right-mrgn">
           <c:forEach items="${component.navigationNode.children}" var="topLevelChild">
           
           	<c:forEach items="${topLevelChild.entries}" var="entry">
           	
            <li class="col-sm-3">
              <ul class="drp-dwn-ul">
                 <li><a href="<c:url value='${entry.item.url}'/>"><i class="fa fa-user" aria-hidden="true"></i> ${entry.item.linkName}</a></li>
                <!-- <li><a href="#"><i class="fa fa-envelope-o" aria-hidden="true"></i> Email Address</a></li> -->
               <!--  <li><a href="#"> <i class="fa fa-lock" aria-hidden="true"></i> Password</a></li> -->
              </ul>
            </li>
            </c:forEach>
            </c:forEach>
           <!--  <li class="col-sm-3">
              <ul class="drp-dwn-ul">
                <li><a href="#"><i class="fa fa-envelope-o" aria-hidden="true"></i> Email Address</a></li>
                <li><a href="#"><i class="fa fa-hdd-o" aria-hidden="true"></i> Order History</a></li>
              </ul>
            </li>
            <li class="col-sm-3">
              <ul class="drp-dwn-ul">
                <li><a href="#"><i class="fa fa-credit-card" aria-hidden="true"></i> Payment Detail</a></li>
                <li><a href="#"><i class="fa fa-book" aria-hidden="true"></i> Address Book</a></li>
              </ul>
            </li>
            <li class="col-sm-3">
              <ul class="drp-dwn-ul">
                <li><a href="#"><i class="fa fa-male" aria-hidden="true"></i> Children</a></li>
              
              </ul>
            </li> -->
            
          </ul>
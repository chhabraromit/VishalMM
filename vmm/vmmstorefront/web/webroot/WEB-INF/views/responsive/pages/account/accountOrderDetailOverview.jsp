<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="order" tagdir="/WEB-INF/tags/responsive/order" %>
<%@ taglib prefix="ycommerce" uri="http://hybris.com/tld/ycommercetags" %>

<!-- <div class="well well-tertiary well-lg"> -->
<!-- <div class="container">
  
  <div class="row">
     <div class="col-md-6 col-sm-6 col-xs-12 margn_bot_50"> -->
<!--       <h2 class="margn_bot_25 margn_tp_n">Order History</h2>
 -->    <ycommerce:testId code="orderDetail_overview_section">
        <order:accountOrderDetailsOverview order="${orderData}"/>
    </ycommerce:testId>
    <!-- </div>
    </div>
    </div> -->
   
<!-- </div> -->
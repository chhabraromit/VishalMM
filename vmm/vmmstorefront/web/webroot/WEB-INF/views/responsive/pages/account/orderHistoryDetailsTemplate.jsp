<%@ page trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="template" tagdir="/WEB-INF/tags/responsive/template"%>
<%@ taglib prefix="cms" uri="http://hybris.com/tld/cmstags"%>

<template:page pageTitle="${pageTitle}">
   <div class="container">
   <div class="row">
    <div class="col-md-6 col-sm-6 col-xs-12 margn_bot_50">
      <h2 class="margn_bot_25 margn_tp_n">Order History</h2>
      <div class="order_history_div">
   <%--  <cms:pageSlot position="orderdetailsheader" var="feature">
        <cms:component component="${feature}" />
    </cms:pageSlot> --%>
    
        
            <cms:pageSlot position="orderdetailsoverview" var="feature" element="div" class="row no-margin">
                <cms:component component="${feature}" element="div" />
            </cms:pageSlot>
        <cms:pageSlot position="orderdetailsshippinginfo" var="feature" element="div" class="landingLayout2PageSection2C">
                <cms:component component="${feature}" element="div" class="yComponentWrapper"/>
            </cms:pageSlot>
        
          
        
        <%-- <div class="col-xs-12">
            <cms:pageSlot position="orderdetailsshippinginfo" var="feature" element="div" class="landingLayout2PageSection2C">
                <cms:component component="${feature}" element="div" class="yComponentWrapper"/>
            </cms:pageSlot>
        </div> --%>
    

   
    
    </div>
    </div>
      <div class="col-md-6 col-sm-6 col-xs-12 margn_bot_50">
            <h2 class="margn_bot_25 margn_tp_n">Item Details</h2>
            <div class="order_history_div">
      
      <cms:pageSlot position="orderDetailsItemsinfo" var="feature" element="div" class="row no-margin">
                <cms:component component="${feature}" element="div"/>
            </cms:pageSlot>
            <div class="dvider_t"></div>
             <cms:pageSlot position="orderdetailstotalinfo" var="feature" element="div">
        <cms:component component="${feature}" element="div" class="no-space yComponentWrapper"/>
    </cms:pageSlot>
            <div class="dvider_t"></div>

    <cms:pageSlot position="orderdetailsactioncomponent" var="feature" element="div" class="row no-margin">
        <cms:component component="${feature}" element="div" />
    </cms:pageSlot>
    </div>
    </div>
    </div>
    </div>

</template:page>

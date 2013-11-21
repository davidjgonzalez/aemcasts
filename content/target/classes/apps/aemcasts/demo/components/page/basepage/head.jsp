<%@include file="/apps/aemcasts/demo/global/global.jsp"%><%
%><%@page session="false" import="com.adobe.granite.xss.XSSAPI"%><%

    /* Services */
    final XSSAPI xss = sling.getService(XSSAPI.class);

    /* Page Properties */
    final String pageTitle = currentPage.getPageTitle();
    final String pageDescription = currentPage.getDescription();
%>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title><%= xss.encodeForHTML(pageTitle) %></title>
    <meta name="description" content="<%= xss.encodeForHTML(pageDescription) %>">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <cq:include script="headlibs.jsp"/>
    <cq:include script="/libs/wcm/core/components/init/init.jsp"/>
</head>
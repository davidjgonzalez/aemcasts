<%@include file="/apps/aemcasts/demo/global/global.jsp"%><%
%><%@page session="false" import="com.day.cq.i18n.I18n,
    com.adobe.granite.xss.XSSAPI,
    com.day.cq.wcm.api.WCMMode"%><%

    /* Services and Utilities */
    final XSSAPI xss = sling.getService(XSSAPI.class);
    final I18n i18n = new I18n(slingRequest);
    final WCMMode mode = WCMMode.fromRequest(slingRequest);

    /* Component Properties and Data */
    final String question = properties.get("question", "");
    final String answer = properties.get("answer", "");
    final String seeMorePath = properties.get("seeMorePath", "");
    final Page seeMorePage = pageManager.getContainingPage(seeMorePath);

%>

<%-- Component Init Checks --%>
<% if(seeMorePage == null || "".equals(question) || "".equals("answer")) {
    if(WCMMode.EDIT.equals(mode)) {
        %><div><img src="/libs/cq/ui/resources/0.gif" class="cq-text-placeholder" alt=""></div><%
    }
    return;
} %>

<%-- Component Presentation --%>
<div class="q-and-a js-aemcasts-demo-components-content-general-q-and-a">
    <a class="question" href="#">
        <span class="open">( <%= i18n.get("Open") %> )</span>
        <span class="close">( <%= i18n.get("Close") %> )</span>

        <cq:text property="question" tagName="span" escapeXml="true"/>
    </a>
    <div class="answer">
        <cq:text property="answer" tagName="div" escapeXml="true"/>
        <div class="see-more">
            <hr/>
            <%= i18n.get("See More") %>
            <a href="<%= resourceResolver.map(seeMorePage.getPath()) %>.html"><%= xss.encodeForHTML(seeMorePage.getTitle()) %></a>
        </div>
    </div>
</div>
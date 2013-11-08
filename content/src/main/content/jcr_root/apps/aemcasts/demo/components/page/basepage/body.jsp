<%@include file="/apps/aemcasts/demo/global/global.jsp"%><%
%><%@page session="false" import="com.adobe.granite.xss.XSSAPI"%>

<body>
    <div class="container_12">
        <header class="header clearfix">
            <div class="grid_4 logo">AEM Casts</div>

            <div class="grid_8 nav">
                <ul>
                    <li><a href="#">Home</a></li>
                    <li><a href="#">Page 1</a></li>
                    <li><a href="#">Page 2</a></li>
                </ul>
            </div>
        </header>

        <hr/>

        <div class="page-content">
            <cq:include script="main.jsp"/>
        </div>

        <hr/>

        <footer class="footer clearfix">
            2013 AEMCasts
        </footer>

    </div>

    <cq:includeClientLib js="aemcasts.demo.all"/>
</body>
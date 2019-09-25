<%--
  Created by IntelliJ IDEA.
  User: zxg05
  Date: 2019/9/23
  Time: 21:17
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>jsp-test</title>
</head>
<body>
<h1>Request请求携带参数一览</h1>
<h2>servletRequest接口定义的方法</h2>
<div>
    <tr><td>参数名</td><td>参数值</td></tr>

    <tr><td>--</td><td><% request.getAttribute("message");%></td></tr>
    <tr><td>--</td><td><% request.getAttributeNames();%></td></tr>
    <tr><td>--(也可已设置)</td><td><% request.getCharacterEncoding();%></td></tr>

    <tr><td>--</td><td><% request.getContentLength();%></td></tr>
    <tr><td>--</td><td><% request.getContentLengthLong();%></td></tr>
    <tr><td>--</td><td><% request.getContentType();%></td></tr>
    <tr><td>--</td><td><% request.getInputStream();%></td></tr>
    <%--<tr><td>--</td><td><% request.getReader();%></td></tr>--%>
    <tr><td>--</td><td><% request.getParameter("userName");%></td></tr>
    <tr><td>--</td><td><% request.getParameterNames();%></td></tr>
    <tr><td>--(返回string[])</td><td><% request.getParameterValues("txTime");%></td></tr>
    <tr><td>--</td><td><% request.getParameterMap();%></td></tr>

    <tr><td>--</td><td><% request.getProtocol();%></td></tr>
    <tr><td>--</td><td><% request.getScheme();%></td></tr>
    <tr><td>--</td><td><% request.getServerName();%></td></tr>

    <tr><td>远程主机</td><td><% request.getRemoteHost();%></td></tr>
    <tr><td>远程地址</td><td><% request.getRemoteAddr();%></td></tr>
    <tr><td>远程地址</td><td><% request.getRemotePort();%></td></tr>


    <tr><td>服务端口</td><td><% request.getServerPort();%></td></tr>

    <tr><td>--</td><td><% request.getLocale();%></td></tr>
    <tr><td>--</td><td><% request.getLocales();%></td></tr>
    <tr><td>--</td><td><% request.getRequestDispatcher("servlet");%></td></tr>
    <tr><td>--</td><td><% request.getLocalName();%></td></tr>
    <tr><td>--</td><td><% request.getLocalAddr();%></td></tr>
    <tr><td>--</td><td><% request.getLocalPort();%></td></tr>

    <tr><td>没有set,本模块就是servletContest</td><td><% request.getServletContext();%></td></tr>
    <%--支持异步context部分，可以把请求发给一个asynchronous mode;需要定义可以set()--%>
    <tr><td>-是否支持-</td><td><% request.isAsyncSupported();%></td></tr>
   <%-- <tr><td>-AsyncContext-</td><td><% request.getAsyncContext();%></td></tr>--%>
</div>

<div>
    <%--java servlet标准提供了处理请求的基本接口，及里面的方法，那么想使用java servlet标准就得遵守它的标准（接口）；同时呢
    他本身也提供了一个基于http协议的实现实例 供我们使用（可以认为是官方实现版本了）。我们当然也可以基于java servlet标准
    去用其他的协议标准如sftp等等实现request--response需求（信息交互，信息传递功能）--%>
    <h2>httpServletRequest额外提供的方法</h2>
        <tr><td>参数名</td><td>参数值</td></tr>
        <tr><td>--</td><td><% request.getAuthType();%></td></tr>
        <tr><td>--</td><td><% request.getCookies();%></td></tr>
        <tr><td>--</td><td><% request.getDateHeader("message");%></td></tr>
        <tr><td>-返回某个请求的头部信息？-</td><td><% request.getHeader("message");%></td></tr>
        <tr><td></td><td><% request.getHeaderNames();%></td></tr>
        <tr><td>--</td><td><% request.getHeaders("message");%></td></tr>
        <tr><td>--</td><td><% request.getIntHeader("data");%></td></tr>

        <tr><td>--</td><td><% request.getMethod();%></td></tr>
        <tr><td>--</td><td><% request.getPathInfo();%></td></tr>
        <tr><td>--</td><td><% request.getPathTranslated();%></td></tr>
        <tr><td>--</td><td><% request.getContextPath();%></td></tr>
        <tr><td>--</td><td><% request.getQueryString();%></td></tr>
        <tr><td>--</td><td><% request.getRemoteUser();%></td></tr>
        <tr><td>--</td><td><% request.getRequestedSessionId();%></td></tr>
        <tr><td>--</td><td><% request.getRequestURI();%></td></tr>
        <tr><td>--</td><td><% request.getRequestURL();%></td></tr>
        <tr><td>--</td><td><% request.getServletPath();%></td></tr>

        <tr><td>--</td><td><% request.getSession();%></td></tr>
        <tr><td>--</td><td><% request.isRequestedSessionIdValid();%></td></tr>
        <tr><td>--</td><td><% request.isRequestedSessionIdFromCookie();%></td></tr>
        <tr><td>--</td><td><% request.isRequestedSessionIdFromURL();%></td></tr>

        <%--还提供了了 login()和logout()方法--%>
        <%--还有getPart(String)方法,但是必须请求是multipart/form-data类型，看下multipart类型的东西--%>

        <tr><td>--</td><td><% request.isUserInRole("admin");%></td></tr>
        <tr><td>--</td><td><% request.getUserPrincipal();%></td></tr>


</div>
</body>
</html>

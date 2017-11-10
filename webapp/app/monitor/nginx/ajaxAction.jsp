<%@ page import="com.eweaver.base.util.StringHelper" %>
<%@ page import="com.eweaver.app.interfaces.HttpRequestUtils" %>
<%@ page import="net.sf.json.JSONObject" %>
<%@ page contentType="text/html; charset=UTF-8"%>
<%
    String action = StringHelper.null2String(request.getParameter("action"));
    String url = StringHelper.null2String(request.getParameter("url"));
    if("nginxNums".equals(action)){
        JSONObject jsonObject = HttpRequestUtils.httpGetNginxRequestNums(url);
        response.getWriter().print(jsonObject.toString());
    }
%>
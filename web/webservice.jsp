<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    
        <title>JSP Page</title>
    </head>
    <header onload="suma();">
        
            <script>

            function suma() {
            alert(result);   
         
            }
            </script>
    </header >
        <%-- start web service invocation --%><hr/>
    <%
    
        String rfcc = request.getParameter("rfc");
	org.tempuri.WebService1 service = new org.tempuri.WebService1();
	org.tempuri.WebService1Soap port = service.getWebService1Soap12();
	 // TODO initialize WS operation arguments here
	java.lang.String rfc = rfcc;
	// TODO process result here
	java.lang.String result = port.consultarfc(rfc);
	out.println(result);
      

        if(request.getParameter("btn") != null){
      if(result.equalsIgnoreCase("registro completado")){
            response.sendRedirect("Cliente.jsp");
            
        }else{
            response.sendRedirect("index.jsp");
        }
        }
    %>
    
   
</html>

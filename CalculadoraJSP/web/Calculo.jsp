<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body style="background-color: blue;margin: 0px">
        <%
            double numero1 = 0;
            double numero2 = 0;
            double res = 0;
            numero1 = Double.parseDouble(request.getParameter("num1"));
            numero2 = Double.parseDouble(request.getParameter("num2"));
            if (request.getParameter("Ope").equals("Suma")) {
                res = numero1 + numero2;
            } else if (request.getParameter("Ope").equals("Resta")) {
                res = numero1 - numero2;
            } else if (request.getParameter("Ope").equals("Multiplicacion")) {
                res = numero1 * numero2;
            } else {
                res = numero1 / numero2;
            }
            out.println("El resultado es :" + res);
        %>
    </body>
</html>

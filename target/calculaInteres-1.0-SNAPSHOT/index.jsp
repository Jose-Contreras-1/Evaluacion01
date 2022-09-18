<!Doctype>
<html>
<head><title>Calculadora</title></head>
<body>
    
<%! double resultado; %>

<h1>Calculadora de Interes </h1>   
<form method="post" action="">
    <table>
        <tr>
        <td>Capital</td>
        <td> <input name="capital" type=number> </td>
        </tr>
        <tr>
        <td>N° años</td>
        <td> <input name="n" type=number> </td>
        </tr>
        
        <tr>
        <td>Interes Anual</td>
        <td> <input name="tazaI" type=number> </td>
        </tr>
    </table>
        <input type="submit" name="submit" value="enviar">
        
    </form>

    <h1><%= resultado %></h1>
</body>

</html>
<%

if(request.getParameter("submit")!= null){

    //double isp = Double.parseDouble( request.getParameter("isp") );
    double capital = Double.parseDouble( request.getParameter("capital") );
    double tazaInteresA = Double.parseDouble( request.getParameter("tazaI") );
    int n = Integer.parseInt( request.getParameter("n") );
    resultado = capital*(tazaInteresA/100)*n;
    
    
    
    }





%>

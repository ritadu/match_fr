<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="fr.match.Equipe" %>

<%@ page info="Afficher d'un list des équipes en JSP"%>

<!DOCTYPE html>
<html lang="fr">
<meta charset="UTF-8">
<head>
<title>Essai de page JSP</title>
</head>
<body>
<p align="center">L'inclusion d'un fichier dans la JSP</p>

<%
List<Equipe> list = new ArrayList();
list.add(new Equipe("Marseille"));
list.add(new Equipe("Paris"));
list.add(new Equipe("Nantes"));

%>

<h1>Afficher un liste des résultats des matchs</h1>

        <table style="width:50%">
            <tr>

             <th>Id</th>
            <th>Nom et prénom Joueur</th>
            <th>Equipe</th>
            <th>Match</th>
            </tr>

            <tr>
                <td>1</td>
                <td>Charles Dupont</td>
                <td>OM Marseille</td>
                <td>OM Marseille-AS Monaco</td>
            </tr>

            <tr>
                <td>2</td>
                <td>Karl Surpont</td>
                <td>AM Sud</td>
                <td>AM Sud-Argentine</td>
            </tr>

            <tr>
                <td>3</td>
                <td>Michel Mazerand</td>
                <td>Paris France</td>
                <td>Paris France-Albanie</td>
            </tr>

        </table>
            <p><input type="text"
                  border="3"
                  cellpadding="4"
                  cellspacing="0"
                  width="20%"
                  text-align="center">
            <tr bgcolor="#DCDCDC">
                <td align="center">Résultats</Td>
            </Tr>
        </table></p>

     <form action="/equipe.jsp" target="_blank">
                Nom et prénom Joueur:<br>
                <input type="text" name="Nom et prénom Joueur" value="">
                <br>
                Nom Equipe:<br>
                <input type="text" name="Equipe" value="">
                <br><br>
                <input type="submit" value="Submit">
     </form>


<p align="center">fin</p>
</body>
</html>
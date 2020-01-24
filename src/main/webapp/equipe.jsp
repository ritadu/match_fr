<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="fr.match.Equipe" %>
<%@ page import="fr.match.EquipeRepository" %>

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
    EquipeRepository repository = new EquipeRepository();
    List<Equipe> list = repository.findAll();
%>

<h1>Afficher un liste des resultats des matchs</h1>

        <table style="width:50%">
            <tr>
                <th>Id</th>
                <th>Nom et prenom Joueur</th>
                <th>Equipe</th>
                <th>Match</th>
            </tr>

            <% for(Equipe equipe: list) { %>
                <tr>
                    <td></td>
                    <td></td>
                    <td><%= equipe.getNom() %></td>
                    <td></td>
                </tr>
            <% } %>

        </table>
            <p><input type="text"
                  border="3"
                  cellpadding="4"
                  cellspacing="0"
                  width="20%"
                  text-align="center">
            <tr bgcolor="#DCDCDC">
                <td align="center">Resultats</Td>
            </Tr>
        </table></p>

     <form action="/equipe.jsp" target="_blank">
                Nom et prenom Joueur:<br>
                <input type="text" name="Nom et prenom Joueur" value="">
                <br>
                Nom Equipe:<br>
                <input type="text" name="Equipe" value="">
                <br><br>
                <input type="submit" value="Submit">
     </form>


<p align="center">fin</p>
</body>
</html>
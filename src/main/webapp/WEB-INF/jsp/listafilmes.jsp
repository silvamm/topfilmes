<%-- 
    Document   : listafilmes
    Created on : 11/09/2018, 21:53:53
    Author     : Matheus
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang ="pt-br">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        
        <!--BOOTSTRAP4-->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
        <!--BOOTSTRAP3-->
        <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
        
        <title>TOPFilmes - A seleção dos melhores</title>
    </head>
    <body>
        <nav class="navbar navbar-default">
            <div class="container-fluid">
                <div class="navbar-header">
                    <a class="navbar-brand" href="#">
                        <img src="https://s3.envato.com/files/81289605/preview_80_2.png" style="margin-top: -20px;">
                    </a>
                </div>
            </div>
        </nav>
      <div class="panel panel-primary" style="margin: 10px;">
            <div class="panel-heading" >
               <div class="clearfix">
                        <h1 class="panel-title" style="float: left; padding: 10px;">Lista de Filmes</h1>
                        <a class="btn btn-success" href="adicionar"
                           style="float: right; color: white"><span class="glyphicon glyphicon-plus" style="margin-right: 5px;"></span>Adicionar Filme</a>
                           <a class="btn btn-danger" href="login" onclick="if(!(confirm('Tem certeza que deseja sair?'))) return false" style="position: relative;  left:  830px; color: white">
                           <span class="glyphicon glyphicon-log-out" style="margin-right: 5px;"></span>Sair</a>
                    </div>   
            </div>
          <div class="panel-body">
              <table class="table table-bordered table-striped">
                  <thead>
                      <tr>
                          <th class="text-center col-md-1">ID</th>
                          <th class="text-center col-md-2">Título</th>
                          <th class="text-center col-md-4 col-xs-5">Descrição</th>
                          <th class="text-center  col-md-1">Ações</th>
                      </tr>
                  </thead>
                      <tbody>
                        <c:forEach items="${listaFilmes}" var = "filme">
                            <c:url var="editarLink" value="editarFilme">
                                <c:param name="filmeId" value="${filme.id}"></c:param>
                            </c:url>
                            <c:url var="deletarLink" value="deletarFilme">
                                <c:param name="filmeId" value ="${filme.id}"></c:param>
                            </c:url>
                          <tr>
                                <td class="text-center">${filme.id}</td>
                                <td>${filme.titulo}</td>
                                <td>${filme.descricao}</td>
                                <td class="text-center">
                                    <a class="btn btn-link btn-xs" href="${editarLink}" title="Editar" rel="tooltip" data-placement="bottom" style="margin-right: 20px;"> 
                                        <span class="glyphicon glyphicon-pencil"></span>
                                    </a>
                                    <a class="btn btn-link btn-xs" href="${deletarLink}" 
                                       onclick="if(!(confirm('Tem certeza que deseja deletar? Essa ação é definitiva.'))) return false" 
                                       title="Excluir" rel="tooltip" data-placement="bottom"> 
                                           
                                        <span class="glyphicon glyphicon-remove" ></span>
                                    </a>
                                </td>
                          </tr>
                        </c:forEach>
                      </tbody>
              </table>
          </div>
      </div> 
        <script language="javascript" type="text/javascript">
            $(function(){
                $('[rel="tooltip"]').tooltip();
            });
    </script>
    </body>
</html>

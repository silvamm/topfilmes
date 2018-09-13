<%-- 
    Document   : newjsp
    Created on : 11/09/2018, 10:41:38
    Author     : Matheus
--%>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang ="pt-br">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
        <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
        <title>Adicionar Filmes</title>
    </head>
    <body>
        <form class="form-horizontal" modelAttribute="filme" action="salvarFilme" method="post">
            <div class="panel panel-primary" style="margin: 10px;">
                <div class="panel-heading" >
                    <div class="clearfix">
                        <h1 class="panel-title" style="float: left; padding: 10px;">Novo Filme</h1>
                        <a class="btn btn-default" href="listafilmes"
                           style="float: right; color: black"><span class="glyphicon glyphicon-list" style="margin-right: 5px;"></span>Lista de Filmes</a>
                    </div>   
                </div>
                <div class="panel-body">

                    <input type="hidden" value="${filme.id}" name="id"/>
                    <div class="form-group">
                        <label for="titulo" class="col-sm-2 control-label">Título</label>
                        <div class="col-sm-10">
                            <input required type="text" class="form-control" id="titulo" name="titulo" 
                                   autocomplete="off" value="${filme.titulo}"/>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="descricao" class="col-sm-2 control-label">Descrição</label>
                        <div class="col-sm-10">
                            <textarea required class="form-control" rows="3" id="descricao" name="descricao" >${filme.descricao}</textarea>
                        </div>
                    </div>
                    <div class="form-group">
                        <br>
                        <div class="col-sm-offset-2 col-sm-10">
                            <button type="hidden" class="btn btn-primary">Salvar</button>
                        </div>
                    </div>
                </div>
            </div>
        </form>    
    </body>
</html>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">

<html lang ="pt-br">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>TOPFilmes - A seleção dos melhores</title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
        <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    </head>

    <body>
        <form modelAttribute= "usuario" action="listafilmes" method="post">
            <div class="container">
                <div class="row">
                    <div class="col-md-3"></div>
                    <div class="col-md-6 col-xs-12" style="margin-top: 20px;">
                        <div class="jumbotron">
                            <h1 class="text-center">Login</h1>
                            <br>
                            <div class="form-group">
                                <label class="control-lable" for="usuario">Usuário</label>
                                <input required type="text" id="usuario" name="login" class="form-control" autofocus autocomplete="off">
                            </div>
                            <div class="form-group">
                                <label class="control-lable" for="senha">Senha</label>
                                <input required type="password" name="senha" class="form-control" id="senha">
                            </div>
                            <div class="pull-right">
                                <br>
                                <button type="hidden" value="Submit" class="btn btn-outline-primary" style="">Entrar</button>
                            </div>
                        </div>
                            <!--<img src="https://abrindoascaixas.files.wordpress.com/2012/07/rolo.png"
                                 style="position: relative; bottom: 400px; right: 400px;">-->
                            <img src="https://imagensemoldes.com.br/wp-content/uploads/2018/03/Imagem-de-Desenhos-–-Imagem-Bob-Zoom-Pipoca-PNG.png"
                                 style="position: relative; left: -50px;">
                    <div class="col-md-3"></div>
                </div>
            </div>
            </div>    
        </form>     
    </body>
</html>

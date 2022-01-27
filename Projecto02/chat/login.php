<?php
session_start();
?>

<?php

  //credenciais
  
  $servidor="localhost";
  $usuario="root";
  $senha="";
  $db="sms";
  
  
  
  //conexao
  $conn = mysqli_connect($servidor, $usuario, $senha, $db);
  
  //$nome = "joelson";
  $nome = $_POST['nome'];
  $senha = $_POST['senha'];

  
   $listar = "SELECT * FROM login WHERE nome='$nome' AND senha='$senha'"; 

    
  
  //Query 	  echo "nome_professor:".$mostrar['nome_prof']."<br>;
  $result_listar = mysqli_query($conn, $listar);
  
if($mostrar = mysqli_fetch_assoc($result_listar))
{  
    header('location:chat.php');
  }
else
{
  $_SESSION['ona']='<div class="alert alert-danger col-md-8 offset-md-9">senhaa ou nome incorreto </div>';
  header('location:index.html');
}
   
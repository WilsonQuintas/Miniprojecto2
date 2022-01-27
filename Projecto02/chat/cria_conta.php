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
  $tel = $_POST['tel'];
  $genero = $_POST['genero'];
  $idade = $_POST['idade'];
  $email = $_POST['email'];
  
  //insert
  $resultado = "INSERT INTO login(nome, senha, tel, genero, idade, email)
  VALUE('$nome','$senha','$tel','$genero','$idade','$email')";

  
  //Query
  $result_listar = mysqli_query($conn, $resultado);
  
  //verificacao de insercao
  if(mysqli_insert_id($conn)){
	 
	echo"perfeito <br>";
    echo"conta criada com sucesso".mysqli_insert_id($conn);	
    header('location:index.html');
  }else{
	echo"erro de insercao de registro";
   }
  

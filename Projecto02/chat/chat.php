<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Chat Simples</title>
    <link rel="stylesheet" href="style.css">
    <script src="https://kit.fontawesome.com/a076d05399.js"></script>
    <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
</head>
<body>
<form method="POST" action="insert.php">
		<?php
			if(isset($_SESSION['msg'])){
				echo "<p>".$_SESSION['msg']. "</p>";
				//Destruir sessão
				unset($_SESSION['msg']);
			}
			
		?>

			

					
			 
			
			


    <div class="wrapper">
        <div class="title">CHAT DO ISPCAN</div>
        <div class="form">
            <div class="bot-inbox inbox">

                <div class="msg-header">
                   <?php

                     //credenciais
  
                     $servidor="localhost";
                     $usuario="root";
                     $senha="";
                     $db="sms";
  
                      //conexao
                     $conn=mysqli_connect($servidor, $usuario, $senha, $db);
                     //Select
                       $listar = "SELECT * FROM chat"; 
  
                       //Query
                      $result_listar = mysqli_query($conn, $listar);
  
                      while($mostrar = mysqli_fetch_assoc($result_listar))
                     {
                         echo "".$mostrar['nome']."<br>";
  	                     echo "".$mostrar['mensagem']."<br>";
  	                     echo "".$mostrar['data_msg']."<br><hr>";

                     }
  
                    ?>
  
  
                </div>
            </div>
            
        </div>
        <div class="typing-field">
            <div class="input-data">
                	<input type="text" name="nome" placeholder="Escreva o nome" required><br><br>
            </div>
        </div>
		<div class="typing-field">
            <div class="input-data">
			<textarea type="text" name="mensagem" placeholder="Escreva a mensagem aqui.." required></textarea><br><br>
            </div>
        </div>
		<div class="typing-field">
            <div class="input-data">
						<input type="submit" value="Enviar">
            </div>
        </div>
 
    </div>
    <script>
        
    </script>
</form>	
    <footer id="rodape" align="center">
    </br>
      

      <p align="center"><p align="center"><p align="center">
      <p href="#" target="_blank"><img src="facebook.png" alt="facebook" width="30" height="30" /></p>
      <p href="#" target="_blank"><img src="twitter.png" alt="twitter" width="30" height="30" /></p>
      <p href="#" target="_blank"><img src="whatsapp.png" alt="Whatsapp" width="30" height="30" /></p>
      <p href="#" target="_blank"><img src="instagram.png" alt="Instagram"  width="30" height="30"/></p>
    </footer>

</body>
</html>
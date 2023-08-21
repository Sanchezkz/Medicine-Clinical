<!DOCTYPE html>
<?php
include_once("conexao.php");
?>
<html lang="pt-br">
    <head>
        <meta charset="utf-8">
        <title>Login</title>
        <script src="https://cdn.jsdelivr.net/npm/sweetalert2@10"></script>
        <script language="javascript">
            function sucesso(){
                setTimeout("window.location='cad.php'", 2000);
            }
        </script>
    </head>
    <body>
        <?php
        include_once ('conexao.php');
   
   if ($conexao -> connect_error){
           die ("falha na conexao com o DB!");
   }
   $nome= $_POST['nome'];
   $sexo= $_POST['Sexo'];
   $nascimento = $_POST['data'];
   $RG= $_POST['RG'];
   $CPF= $_POST['CPF'];
   $telefone= $_POST['Telefone'];
   $cidade= $_POST['Cidade'];
   $endereco= $_POST['Endereco'];
   $bairro= $_POST['Bairro'];

           
   $inserir = mysqli_query($conexao, "INSERT INTO paciente( Nome_paciente, Data_nascimento, Sexo, RG, CPF, Telefone, Endereco, Bairro, Cod_cidade)
   VALUES('$nome','$nascimento','$sexo','$RG','$CPF','$telefone','$endereco','$bairro','$cidade')");
            
        ?>
        <script>Swal.fire({
        position: 'top',
        icon: 'success',
        title: 'Your work has been saved',
        showConfirmButton: false,
        timer: 1500
      })</script>
      
<script language='javascript'>sucesso()</script>
    </body> 
</html>
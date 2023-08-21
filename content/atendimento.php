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
                setTimeout("window.location='registrar.php'", 2000);
            }
        </script>
    </head>
    <body>
        <?php
   
   if ($conexao -> connect_error){
           die ("falha na conexao com o DB!");
   }
   $data = $_POST['data'];
   $nome= $_POST['Horario'];
   $sexo= $_POST['Medico'];
   $nascimento = $_POST['Paciente'];

   $inserir = mysqli_query($conexao, "INSERT INTO atendimento ( Data_atendimento, cod_agenda, cod_espec, cod_medico, cod_paciente)
   VALUES($data,$nome,$sexo,$nascimento)");          
        ?>
        <script>Swal.fire({
        position: 'center',
        icon: 'success',
        title: 'Your work has been saved',
        showConfirmButton: false,
        timer: 1500
      })</script>
      
<script language='javascript'>sucesso()</script>
    </body> 
</html>
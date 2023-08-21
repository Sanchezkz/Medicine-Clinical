<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@10"></script>
    <script language="javascript">
            function sucesso(){
                setTimeout("window.location='att.php'", 2000);
            }
        </script>
</head>
<body>

<?php 
    include_once('conexao.php');

    $paciente =$_POST['paciente'];
    $nome= $_POST['nome'];
    $sexo= $_POST['Sexo'];
    $nascimento = $_POST['data'];
    $RG= $_POST['RG'];
    $CPF= $_POST['CPF'];
    $telefone= $_POST['Telefone'];
    $cidade= $_POST['Cidade'];
    $endereco= $_POST['Endereco'];
    $bairro= $_POST['Bairro'];

    $atualiza = mysqli_query($conexao, "UPDATE paciente 
                                        SET Nome_paciente = '$nome', Sexo = '$sexo', Data_nascimento = '$nascimento', RG = '$RG', CPF = '$CPF', Telefone = '$telefone', Cod_cidade = '$cidade', Endereco = '$endereco', Bairro = '$bairro' 
                                        WHERE Cod_paciente = '$paciente'");
          
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
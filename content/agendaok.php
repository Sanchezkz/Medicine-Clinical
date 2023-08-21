
<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@10"></script>
    <script language="javascript">
            function sucesso(){
                setTimeout("window.location='agendar.php'", 2000);
            }
        </script>
</head>
<body>
    <?php

    include_once('conexao.php');

    $espec = $_POST['espec'];
    $data = $_POST['data'];
    $paciente = $_POST['paciente']; 
    $medico = $_POST['medico']; 
    $agenda = $_POST['agenda'];
    
    
    $inserir = mysqli_query($conexao, "INSERT INTO consulta (Data_consulta, Cod_medico, Cod_paciente, Cod_agenda, Cod_espec)
                                       VALUES ('$data', $medico, $paciente, $agenda,$espec)");

    
   
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

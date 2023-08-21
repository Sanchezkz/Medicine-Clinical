<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <style>
    body {
        font-family: Arial, sans-serif;
        padding: 20px;
    }

    form {
        max-width: 400px;
        margin: 0 auto;
        background-color: #fff;
        padding: 20px;
        border-radius: 5px;
    }

    label {
        display: block;
        font-weight: bold;
        margin-bottom: 5px;
    }

    select,
    input[type="submit"] {
        width: 100%;
        padding: 8px;
        border-radius: 3px;
        border: 1px solid #ccc;
        margin-bottom: 10px;
    }
    input[type="submit"]:hover{
        cursor: pointer;
    }
</style>

</head>
<body>
    <form action="agendaok.php" method="POST">
    
    <?php
    $espec = $_POST['espec'];
    ?>
    <label style="display: none;">Especialidade</label>
    <select name="espec" style="display: none;">

<?php
    include_once("conexao.php");
    
    $consulta = mysqli_query($conexao, "SELECT Cod_espec as Codigo, Nome_espec as nome FROM especialidades WHERE Cod_espec = $espec");

    while($resultado = mysqli_fetch_array($consulta)){
        echo "<option value='".$resultado ['Codigo']."'>".$resultado['nome']."</option>";
    }
?>

</select>
<label>Paciente</label>
<select name="paciente">

<?php
    include_once("conexao.php");
    $consulta = mysqli_query($conexao, "SELECT Cod_paciente as Codigo, Nome_paciente as paciente 
                                        FROM paciente");

    while($resultado = mysqli_fetch_array($consulta)){
        echo "<option value='".$resultado ['Codigo']."'>".$resultado['paciente']."</option>";
    }
?>
    </select>
    <label>Médico</label>
    <select name="medico">
    <?php

        include_once("conexao.php");
        
                
        $consultam = mysqli_query($conexao, "SELECT Cod_medico as Codigo, Nome_medico as nome
                                             FROM medico
                                             WHERE Cod_espec = '$espec'"); 
                                             if (!$consultam) {
                                                die("Erro na consulta: " . mysqli_error($conexao));
                                             }

        while($resultadom = mysqli_fetch_array($consultam)){
                    echo "<option value='".$resultadom ['Codigo']."'>".$resultadom['nome']."</option>";
                }           
    ?>
    </select>
    <label>Data</label>
    <input type="date" name="data">
    <label for="">Horário</label>
    <select name="agenda">
        <?php
            $consultaa = mysqli_query($conexao, "SELECT agenda.Cod_agenda as Codigoa, agenda.Horario as Horario, medico.Cod_medico as medico, especialidades.Cod_espec
                                                FROM agenda inner join medico ON
                                                medico.Cod_medico = agenda.Cod_medico INNER JOIN especialidades ON
                                                especialidades.Cod_espec = medico.Cod_espec
                                                ORDER BY agenda.Horario");

                while($resultadoa = mysqli_fetch_array($consultaa)){
                echo"<option value='".$resultadoa ['Codigoa']."'>".$resultadoa['Horario']." </option>";
            }
        
    
        ?>
    </select>
    <input type="submit" value="Agendar">
    </form>
</body>
</html>
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

    select,
    input[type="submit"] {
        width: 100%;
        padding: 8px;
        border-radius: 3px;
        border: 1px solid #ccc;
        margin-bottom: 10px;
    }

    input[type="submit"] {
        display: inline-block;
        padding: 10px 20px;
        background-color: #4caf50;
        color: #fff;
        border: none;
        border-radius: 5px;
        cursor: pointer;
        font-size: 14px;
    }

    input[type="submit"]:hover {
        background-color: #45a049;
    }
</style>

</head>
<body>
    <form method="post" action="atendimento.php">
        <select name="data">
            <?php
                include_once("conexao.php");
                $consulta = mysqli_query($conexao, "SELECT Cod_consulta as codigo, DATE_FORMAT(consulta.Data_consulta, '%d / %m / %Y') AS dataa FROM consulta");
                while($resultado = mysqli_fetch_array($consulta)){
                    echo "<option value='".$resultado ['codigo']."'>".$resultado['dataa']."</option>";
                }
            ?>
        </select>

        <select name="Horario">
            <?php
                include_once("conexao.php");
                $consulta = mysqli_query($conexao, "SELECT consulta.Cod_consulta as codigo, agenda.Horario as horario 
                                                    FROM consulta INNER JOIN agenda ON
                                                    consulta.Cod_agenda = agenda.Cod_agenda");
                while($resultado = mysqli_fetch_array($consulta)){
                    echo "<option value='".$resultado ['codigo']."'>".$resultado['horario']."</option>";
                }
            ?>
        </select>

        <select name="Medico">
            <?php
                include_once("conexao.php");
                $consulta = mysqli_query($conexao, "SELECT consulta.Cod_consulta as codigom, medico.Nome_medico as medico 
                                                    FROM consulta INNER JOIN medico ON
                                                    consulta.Cod_medico = medico.Cod_medico");
                while($resultado = mysqli_fetch_array($consulta)){
                    echo "<option value='".$resultado ['codigom']."'>".$resultado['medico']."</option>";
                }
            ?>
        </select>

        <select name="Paciente">
            <?php
                include_once("conexao.php");
                $consulta = mysqli_query($conexao, "SELECT Cod_paciente, Nome_Paciente FROM Paciente");
                while($resultado = mysqli_fetch_array($consulta)){
                    echo "<option value='".$resultado ['Cod_paciente']."'>".$resultado['Nome_Paciente']."</option>";
                }
            ?>
        </select>

        <input type="submit" value="enviar"> 
    </form>
</body>
</html>

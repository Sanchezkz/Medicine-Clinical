<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Dados da Tabela</title>
    <style>
    body {
        font-family: Arial, sans-serif;
        padding: 20px;
    }

    table {
        width: 100%;
        border-collapse: collapse;
    }

    th, td {
        padding: 8px;
        text-align: left;
        border-bottom: 1px solid #ddd;
    }

    th {
        background-color: #4CAF50;
        color: white;
    }
    tr{
        background-color: #fff;
    }
    tr:nth-child(odd) {
        background-color: #f1f1f1;
    }
    </style>
</head>
<body>
    <?php
    // Incluir arquivo de conexão com o banco de dados
    include_once("conexao.php");

    // Consultar os dados da tabela com junções (joins) para obter informações das tabelas relacionadas
    $consulta = mysqli_query($conexao, "SELECT  DATE_FORMAT(atend.Data_atendimento, '%d / %m / %Y') AS data, agenda.Cod_agenda, espec.Cod_espec, medico.Cod_medico, paciente.Cod_paciente, agenda.horario as horario, espec.Nome_espec as espec, medico.Nome_medico as medico, paciente.Nome_paciente as paciente
    FROM atendimento AS atend
    INNER JOIN especialidades AS espec ON atend.Cod_espec = espec.Cod_espec
    INNER JOIN agenda ON atend.Cod_agenda = agenda.Cod_agenda
    INNER JOIN medico ON atend.Cod_medico = medico.Cod_medico
    INNER JOIN paciente ON atend.Cod_paciente = paciente.Cod_paciente
    WHERE atend.data_atendimento > CURDATE()");
    if (mysqli_num_rows($consulta) > 0) {
        echo "<table>";
        echo "<tr><th>Data Atendimento</th><th>Horario atendimento</th><th>Especialidade</th><th>Nome médico</th><th>Nome paciente</th></tr>";
        
        while ($row = mysqli_fetch_assoc($consulta)) {
            echo "<tr>";
            echo "<td>".$row['data']."</td>";
            echo "<td>".$row['horario']."</td>";
            echo "<td>".$row['espec']."</td>";
            echo "<td>".$row['medico']."</td>";
            echo "<td>".$row['paciente']."</td>";
            echo "</tr>";
        }
        
        echo "</table>";
    } else {
        echo "Nenhum dado encontrado na tabela.";
    }

    // Fechar a conexão com o banco de dados
    mysqli_close($conexao);
    ?>
</body>
</html>

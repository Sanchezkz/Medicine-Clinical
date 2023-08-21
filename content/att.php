<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="../css/stylecad.css">
</head>
<body>
<form method="post" action="atualizar.php">
<div>
    <label for="">paciente</label>
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
</div>
    <div><label>Nome </label><input name="nome" type="text" placeholder="Nome" required></div>
    <div>
        <label>Sexo</label>
        <select name="Sexo" required>
            <option value="F">Feminino</option>
            <option value="M">Masculino</option>
        </select>
    </div>
    <div><label>Data de Nascimento</label><input name="data" type="date" required></div>
    <div><label>RG</label><input type="number" name="RG" placeholder="00.000.000" required></div>
    <div><label>CPF</label><input type="number" name="CPF" placeholder="000.000.000.00" required></div>
    <div><label>Telefone</label><input type="number" name="Telefone" placeholder="(31) 0000-0000" required></div>
    <div>
        <label>Cidade</label>
        <select name="Cidade" required>
            <?php
                include_once("conexao.php");
                
                $consulta = mysqli_query($conexao, "SELECT Cod_cidade as Codigo, Nome_cidade as Cidade FROM Cidade");

                while($resultado = mysqli_fetch_array($consulta)){
                    echo "<option value='".$resultado ['Codigo']."'>".$resultado['Cidade']."</option>";
                }
            ?>

            </select>
    </div>
    <div><label>Endereço</label><input type="text" name="Endereco" placeholder="Rua do Amendoim" required></div>
    <div><label>Bairro</label><input type="text" name="Bairro" placeholder="Bairro Bandeirantes" required></div>
    <input type="submit" class="btn" value="enviar">
</form>
</body>
</html>
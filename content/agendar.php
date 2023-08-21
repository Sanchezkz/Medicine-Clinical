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
<form method="Post" action="agenda.php">
    <label for=""><h3>Especialidades</h3></label>

        <select name="espec">

            <?php
                include_once("conexao.php");
                
                $consulta = mysqli_query($conexao, "SELECT Cod_espec as Codigo, Nome_espec as nome FROM especialidades");

                while($resultado = mysqli_fetch_array($consulta)){
                    echo "<option value='".$resultado ['Codigo']."'>".$resultado['nome']."</option>";
                }
            ?>

            </select>
            <input type="submit" value="enviar">
</form>
</body>
</html>
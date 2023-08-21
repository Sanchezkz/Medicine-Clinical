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
                setTimeout("window.location='../inicio.html'", 1500);
            }
            function failed(){
                setTimeout("window.location='../index.html'", 2000);
            }
        </script>
    </head>
    <body>
        <?php
            $login = $_POST['login'];
            $senha = $_POST['senha'];
            $consulta = mysqli_query($conexao,"SELECT Usuario, senha FROM Usuario WHERE Usuario = '$login' AND senha = '$senha'") or die (mysqli_error($conexao));
            $linhas = mysqli_num_rows($consulta);
            
            if($linhas == 0){
                ?>
                <script>Swal.fire({
                    icon: 'error',
                    title: 'Oops...',
                    text: 'Something went wrong!',
                    showConfirmButton: false,
                    timer: 2000
                })</script>
                <script language='javascript'>failed()</script>
                <?php
            } else {
				session_start();
                $_SESSION["login"]=$_POST["login"];
                $_SESSION["senha"]=$_POST["senha"];
                ?>
                <script>Swal.fire({
                    position: 'center',
                    icon: 'success',
                    title: 'Login feito com Sucesso',
                    showConfirmButton: false,
                    timer: 1500
                  })</script>
                <script language='javascript'>sucesso()</script>
                <?php
            }
        ?>
    </body> 
</html>
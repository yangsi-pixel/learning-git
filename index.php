<?php
require 'db_conn.php';
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <link rel="stylesheet" href="css/style.css">
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>To-Do-List</title>
</head>
<body>
<div class = "main section">

      <div class ="add-section">
      <form action="app/add.php" method="post" autocomplete="off">
            <?php if(isset($_GET['mess']) && $_GET['mess'] == 'error'){ ?>
                  <input type="text"
            name="title"
            style="border-color: #ff6666"
            placeholder="This field is required"/>
            <button type="submit">Add &nbsp; <span>&#43;</span></button>
            
            <?php } else{ ?>
                  <input type="text"
                  name="title"
                  placeholder="what do you need to do?" />
                  <button type="submit">Add &nbsp; <span>&#43;</span></button>
                  <?php } ?>
            </form>
            </div>
      <?php
      $todos = $conn->query("SELECT * FROM todos ORDER BY id DESC");
      ?>
      <div class="show-todo-section">
      <?php if($todos->rowCount() <= 0) { ?>
      <div class="todo-item">
           <div class="empty">
             <img src="img/bk.jpg" width="100%" />
             <img src="img/stif.gif" width="200px" />
           </div>
      </div>
      <?php } ?>

      <?php while($todo = $todos->fetch(PDO::FETCH_ASSOC)) { ?>
      <div class="todo-item">
            <span id="<?php echo $todo['id']; ?>"
            class="remove-to-do">X</span>
            <?php if($todo['checked']){ ?>
       <input type="checkbox"
             class="check-box"
             checked />
       <h2 class="checked"><?php echo $todo['title'] ?></h2>
       <?php }else { ?> 
            <input type="checkbox"
             class="check-box" />
       <h2><?php echo $todo['title'] ?></h2>
      <?php } ?>
       <br>
       <small>created: <?php echo $todo['date_time'];?> </small>                                 
      </div>
      <?php } ?>   
      </div>
</div>
<script src="js/jquery-3.6.0.js"></script>

<script>
      $(document).ready(function(){
            $('.remove-to-do').click(function(){
            const id = $(this).attr('id');

            $.post("app/remove.php",
            {
                  id: id
            },
            (data) => {
             if(data){
                 $(this).parent().hide(600);
                      }
                  }
               );
            });
      });
      </script>
</body>
</html>
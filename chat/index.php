<?php
include('../app/insertChatOperator.php');
?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="refresh" content="30">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" href="css/chat.css">
    <title>USSD UZ Chat</title>
</head>

<body>
    <div class="container py-5 px-4">
    <a href="../tarif.php" class="btn btn-danger mainPageButton" style="position: absolute; top: 10px; left: 10px;">Bosh sahifa</a>
        <!-- For demo purpose-->
        <header class="text-center">
            <h1 class="display-4 text-white">USSD UZ Chat</h1>
        </header>

        <div class="row rounded-lg overflow-hidden shadow">
            <!-- Users box-->
            <div class="col-5 px-0">
                <div class="bg-white">

                    <div class="bg-gray px-4 py-2 bg-light">
                        <p class="h5 mb-0 py-1">So'nggi xabarlar</p>
                    </div>

                    <div class="messages-box">
                        <div class="list-group rounded-0">
                            <?php


                            $activeUser = $_GET['token'];
                            $getUsers = ('SELECT `id`, `date`, `time`, GROUP_CONCAT(notViewed), GROUP_CONCAT(date), GROUP_CONCAT(time), token, GROUP_CONCAT(message) messages FROM `chat` GROUP BY token ORDER BY `notViewed` DESC, `date` DESC, `time` DESC, `id` DESC');
                            $result = $conn->query($getUsers);
                            if ($result->num_rows > 0) {
                                while ($row = $result->fetch_assoc()) {
                                    $date = explode(",", $row['GROUP_CONCAT(date)']);
                                    // $token2 = explode(",", $row['token']);
                                    $messages = explode(",", $row['messages']);
                                    $notViewed = array_sum(explode(",", $row['GROUP_CONCAT(notViewed)']));
                            ?>
                                    <a class="list-group-item list-group-item-action <?= ($row['token'] == $activeUser) ? "active text-white" : " text-muted" ?>  rounded-0" href="index.php?token=<?= $row['token'] ?>">
                                        <div class="media"><img src="img/user avatar.png" alt="user" width="50" class="rounded-circle">
                                            <div class="media-body ml-4">
                                                <div class="d-flex align-items-center justify-content-between mb-1">
                                                    <h6 class="mb-0"><?= $row['token'];
                                                                        ?></h6><small class="small font-weight-bold"><?= $date[(count($date) - 1)] ?></small>
                                                </div>
                                                <p class="font-italic mb-0 text-small d-flex align-items-center justify-content-between"><?= $messages[(count($messages) - 1)] ?><span class="badge badge-pill badge-success"><?= ($notViewed == 0) ? "" : $notViewed ?></span></p>

                                            </div>
                                        </div>
                                    </a>
                            <?php
                                }
                            } ?>


                        </div>
                    </div>
                </div>
            </div>
            <!-- Chat Box-->
            <div class="col-7 px-0">
                <div class="px-4 py-5 chat-box bg-white" id="chatBody">
                    <?php
                    $token = $_GET['token'];
                    $getMessages = ('SELECT * FROM `chat` WHERE `token`= "' . $token . '" ORDER BY `date`');
                    $result = $conn->query($getMessages);
                    if ($result->num_rows > 0) {
                        while ($rowMsg = $result->fetch_assoc()) {
                            $setView = ('UPDATE `chat` SET `notViewed`=0 WHERE id= "' . $rowMsg['id'] . '"');
                            $conn->query($setView);
                    ?>
                            <!-- Sender Message-->
                            <div class="media w-50 <?= ($rowMsg['message_type'] == 'user') ? " " : "ml-auto " ?> mb-3"><img src="<?= ($rowMsg['message_type'] == 'user') ? "img/user avatar.png " : "img/operator avatar.png " ?>" alt="user" width="50" class="rounded-circle">
                                <div class="media-body ml-3">
                                    <div class="<?= ($rowMsg['message_type'] == 'user') ? "bg-light " : "bg-primary " ?>rounded py-2 px-3 mb-2">
                                        <p class="text-small mb-0 <?= ($rowMsg['message_type'] == 'user') ? "text-muted " : "text-white " ?>"><?= $rowMsg['message'] ?></p>
                                    </div>
                                    <p class="small text-muted"><?= $rowMsg['date'] . ' | ' . $rowMsg['time'] ?></p>
                                </div>
                            </div>
                    <?php
                        }
                    } ?>
                </div>

                <!-- Typing area -->
                <form action="" class=" bg-light" method="POST">
                    <div class="input-group">
                        <input type="text" placeholder="Xabaringgizni kiriting" aria-describedby="button-addon2" class="form-control rounded-0 border-0 py-4 bg-light" name="message" id="messageInput" oninput="checkForEmpty()">
                        <div class="input-group-append">
                            <button id="button-addon2" type="submit" class="btn btn-link" name="sendMessage" id="sendMessageButton"><img src="img/telegram-plane-brands.svg" alt="" srcset="" id="sendButton"></button>
                        </div>
                    </div>
                </form>

            </div>
        </div>
    </div>




    <script src="js/bootstrap.js"></script>
    <script src="js/jquery.js"></script>
    <script>
        let chatBody = document.querySelector('#chatBody');
        $(document).ready(function() {
            chatBody.scrollTop = 9999;
        });

        if ($('#messageInput').val() == "") {
            $('button').attr('disabled', 'disabled');
        }

        function checkForEmpty() {
            if ($('#messageInput').val() == "") {
                $('button').attr('disabled', 'disabled');
            } else {
                $('button').prop("disabled", false);
            }
        }
    </script>
</body>

</html>
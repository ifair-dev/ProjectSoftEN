<?php

	include('conn.php');

	$title = $_POST['title'];
	$head = $_POST['head'];
	$numattend = $_POST['numattend'];
	$listname = $_POST['listname'];
	$roomid = $_POST['roomid'];
	$start = $_POST['start'];
	$end = $_POST['end'];
	$addequipment = $_POST['addequipment'];
	$remark = $_POST['remark'];
	// $meetfile = $_POST['meetfile'];
	$userid = $_POST['userid'];

	$file = $_FILES['meetfile'];
	$filename = $_FILES["meetfile"]["name"];
	$filTmpename = $_FILES["meetfile"]["tmp_name"];
	$fileExt = explode(".", $filename);
	$fileAcExt = strtolower(end($fileExt));
	$newFilename = time() . "." . $fileAcExt;
	$fileDes = 'upload/' . $newFilename;
	move_uploaded_file($filTmpename, $fileDes);
	$meetfilelocation = $fileDes;
	$meetfile = $meetfilelocation;

	if (mysqli_query($conn, "insert into 
		meeting (title, head, numattend, listname, roomid, start, end, addequipment, userid, remark, meetfile) 
		values ('$title', '$head', '$numattend', '$listname', '$roomid', '$start', '$end', '$addequipment', '$userid', '$remark', '$meetfile')")) {
		header('location:addmeet.php');
	} else {
		echo "ERROr <br>";
		echo $title . "<br>" . $head . "<br>" . $numattend . "<br>" . $listname . "<br>" . $roomid . "<br>" . $start . "<br>" . $end . "<br>" . $addequipment . "<br>" . $remark . "<br>" . $meetfile . "<br>" . $userid;
	}

?>

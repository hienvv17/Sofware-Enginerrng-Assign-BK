 <?php
	if(isset($_POST['tim_kiem'])){
		if( !empty($_POST['tu_khoa']))
		{
			$tukhoa = $_POST['tu_khoa'];
	
			$sql_mon = mysqli_query($con,"SELECT * FROM menu WHERE ten_mon LIKE '%$tukhoa%' ORDER BY id_mon ASC");		

			$title = "Món ".$tukhoa." gợi ý";
		}
		else{
			$sql_mon = mysqli_query($con,"SELECT * FROM menu ORDER BY id_mon ASC ");
			$title = "Tất cả món ăn";
		}
	
	}	
	else {
		$sql_mon = mysqli_query($con,"SELECT * FROM menu ORDER BY id_mon ASC ");
		$title = "Tất cả món ăn";
	}	
	include('trangthai.php');
?>
<?php
function tglindo($tgl) {
	$tanggal = substr($tgl,8,2);
	$bulan = substr($tgl,5,2);
	$tahun = substr($tgl,0,4);
	return $tanggal."-".$bulan."-".$tahun;
	}

function cekloginadmin(){
    if (!$_SESSION["admin"])
        go2("index.php");
    }

    function go2($url){
	echo "<meta http-equiv='Refresh' content='0;url=$url'>";
	exit;
	}
?>

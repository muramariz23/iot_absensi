<?php 

//class CRUD siswa
class controller_waktu{

	//property
	var $db;
	var $con;
	var $query;
	var $data; 
	var $result;

	var $Mwaktu;

	var $id_jam;
	var $jMasuk;
	var $jMasuk_bt;
	var $jPulang;
	

	//method main variabel
		function __construct()
		{
			// membuat objek dari class module pegawai
			include '../models/model_waktu.php';
			$this->Mwaktu = new model_waktu();
		}


		//method untuk mengambil semua data dari table
		function GetData_All()
		{
			//perintah GET data
			return $this->Mwaktu->GET();
		}

		
		//method untuk mengambil data seleksi dari tabel
		function GetData_Where($id_jam)
		{
			//perintah get data where
			return $this->Mwaktu->GET_Where($id_jam);
		}



		//method memasukan data ke dalam tabel
		function PUTData($id_jam,$jMasuk,$jMasuk_bt,$jPulang)
		{
			//perintah PUT data
			$this->Mwaktu->PUT($id_jam,$jMasuk,$jMasuk_bt,$jPulang);
		}

}


 ?>
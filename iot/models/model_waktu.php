 <?php 

//class model siswa (CRUD siswa)
class Model_waktu{

	//property
	var $db;
	var $con;
	var $query;
	var $data; 
	var $result;

	var $id_jam;
	var $jMasuk;
	var $jMasuk_bt;
	var $jPulang;


	//method main variabel
		function __construct()
		{
			//membuat objek dari kelas database
			include '../config/database.php';
			$this->db = new database();
			$this->con = $this->db->connect();
		}


		//method mengambil semua data dari tabel
		function GET()
		{
			//perintah Get data
			$this->query=mysqli_query($this->con,"select * from w_absen");
			while ($this->data=mysqli_fetch_array($this->query)) {
				$this->result[]=$this->data;
			}
			return $this->result;
		}


		//method untuk mengambil data seleksi dari tabel
		function GET_Where($id_jam)
		{
			//perintah get where data
			$this->query=mysqli_query($this->con,"select * from w_absen where id_jam='$id_jam'");
			while($this->data=mysqli_fetch_array($this->query))
			{
				$this->result[]=$this->data;
			}
			return $this->result;
		}


		//method memasukan data kedalam tabel
		function PUT ($id_jam,$jMasuk,$jMasuk_bt,$jPulang)
		{
			//perintah PUT data
			mysqli_query($this->con,"update w_absen set
				jMasuk='".$jMasuk."',
				jMasuk_bt='".$jMasuk_bt."',
				jPulang='".$jPulang."'
				where id_jam='".$id_jam."'
				");
		}


}

 ?> 
<?php
class penduduk extends database{
    public function __construct($home) {
        $this->select = "SELECT * FROM penduduk WHERE 1";
        $this->insert = "INSERT INTO penduduk (nama,alamat,telp,status,desa,rfid)VALUES(?,?,?,?,?,?)";
        $this->update = "UPDATE penduduk SET nama=?,alamat=?,telp=?,status=?,desa=?,rfid=? WHERE id=?";
        $this->delete = "DELETE FROM penduduk WHERE id=?";
        $this->paramSelect = array('id','nama','alamat','telp','status','desa');
        $this->paramInsert = array('nama','alamat','telp','status','desa','KTP','kk','rfid');
        $this->paramUpdate = array('nama','alamat','telp','status','desa','KTP','kk','rfid','edit');
        $this->paramDelete = array('hapus');
        $this->paramDetail = array('nama','alamat','telp','status','desa','KTP','kk','rfid','foto');
        $this->home = $home;
        parent::__construct();
    }
    public function qinsert() {
        if(!empty($_FILES["file"]["tmp_name"])){
            $this->uploadsPhoto();
            $this->insert = "INSERT INTO penduduk (nama,alamat,telp,status,desa,rfid,foto)VALUES(?,?,?,?,?,?,?)";
            $this->query("UPDATE rfidlist SET status='unavailable' WHERE rfid='".filter_input(0,'rfid')."'");
        }
        parent::qinsert();
        $this->foto = NULL;
    }
    public function qupdate(){
        if(!empty($_FILES["file"]["tmp_name"])){
            $this->deletePhoto();
            $this->uploadsPhoto();
            $this->queryStat("UPDATE penduduk SET foto=? WHERE id=?",array($this->foto,filter_input(0,'edit')));
        }
        parent::qupdate();
        $this->foto = NULL;
    }
    public function qdelete() {
        $this->deletePhoto();
        parent::qdelete();
    }
    public function queryForm(){
        if(!empty(filter_input(1,'edit'))){ $this->querySelect(); $d = $this->data[0]; }
        ?>
        <form action="" method="POST" id="menuForm" class="form-horizontal" enctype="multipart/form-data">
            <?php
            foreach($this->paramInsert AS $p){ if(empty($d[$p])){ $d[$p]="";}}
            $form = new form();
            $form->formInput("nama","text","Nama",60,4,true,$d['nama']);
            $form->formInput("alamat","text","Alamat",60,4,true,$d['alamat']);
            $form->formInput("telp","text","Telp",20,4,true,$d['telp']);
            $status = array('menikah','belum menikah');
            $form->formRadio("status","Status",$status,true,$d['status']);
            $form->formInput("desa","text","Desa",60,4,true,$d['desa']);
            $form->formInput("KTP","text","Kartu Tanda Penduduk",60,4,false,$d['KTP']);
            $form->formInput("kk","text","Kartu Keluarga",60,4,false,$d['kk']);
            $this->formselectdb("rfid","RFID","SELECT rfid FROM rfidlist WHERE status='available'","rfid","rfid",true,$d['rfid']);
            $form->formFile("file","Foto");
            if(!empty($d['foto'])){ $form->formPic($form->dir.str_replace(".","_Thumb.",$d['foto'])); 
            }else{ $form->formPic($form->dir.'thumbs.jpg'); }
            if(!empty(filter_input(1,'edit'))){ $form->formHidden("edit",filter_input(1,'edit')); }
            $form->formSubmit("submit","Kirim");
            ?>
        </form>
        <?php
    }
    public function queryDetail() {
        parent::queryDetail();
        $this->relatedList("SELECT nama,id FROM ukm WHERE pemilik='".filter_input(1,'detail')."'",'nama','UKM','index.php?p=ukm&detail=');
        $this->relatedList("SELECT nama,id FROM dokumen WHERE pemilik='".filter_input(1,'detail')."'",'nama','Dokumen','index.php?p=dokumen&detail=');
    }
}

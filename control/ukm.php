<?php
class ukm extends database{
    public function __construct($home) {
        $this->select = "SELECT a.nama AS ukm,b.nama AS pemilik,"
                . "c.nama AS bidang,a.id AS id,a.alamat AS alamat,a.diskripsi AS diskripsi "
                . "FROM ukm AS a,penduduk AS b,bidang AS c "
                . "WHERE a.pemilik=b.id AND a.bidang=c.id";
        $this->insert = "INSERT INTO ukm (nama,alamat,bidang,pemilik,diskripsi)VALUES(?,?,?,?,?)";
        $this->update = "UPDATE ukm SET nama=?,alamat=?,bidang=?,pemilik=?,diskripsi=? WHERE id=?";
        $this->delete = "DELETE FROM ukm WHERE id=?";
        $this->paramSelect = array('ukm','pemilik','bidang');
        $this->paramInsert = array('nama','alamat','bidang','pemilik','diskripsi');
        $this->paramUpdate = array('nama','alamat','bidang','pemilik','diskripsi','edit');
        $this->paramDelete = array('hapus');
        $this->paramDetail = array('ukm','alamat','pemilik','bidang','diskripsi');
        $this->home = $home;
        parent::__construct();
    }
    public function queryForm(){
        if(!empty(filter_input(1,'edit'))){ 
            $this->select = "SELECT * FROM ukm WHERE 1";
            $this->querySelect(); $d = $this->data[0];
        }
        ?>
        <form action="" method="POST" id="menuForm" class="form-horizontal">
            <?php
            foreach($this->paramInsert AS $p){ if(empty($d[$p])){ $d[$p]="";}}
            $form = new form();
            $form->formInput("nama","text","Nama",60,4,true,$d['nama']);
            $form->formInput("alamat","text","Alamat",60,4,true,$d['alamat']);
            $this->formselectdb("bidang","Bidang","SELECT id,nama FROM bidang","id","nama",true,$d['bidang']);
            $this->formselectdb("pemilik","Pemilik","SELECT id,nama FROM penduduk","id","nama",true,$d['pemilik']);
            $form->formArea("diskripsi","Diskripsi",60,5,true,$d['diskripsi']);
            if(!empty(filter_input(1,'edit'))){ $form->formHidden("edit",filter_input(1,'edit')); }
            $form->formSubmit("submit","Kirim");
            ?>
        </form>
        <?php
    }
    public function querySelectExcept() {
        if(!empty(filter_input(1,'edit'))){ $this->select .= " AND id='".filter_input(1,'edit')."'"; }
        else if(!empty(filter_input(0,'edit'))){ $this->select .= " AND id='".filter_input(0,'edit')."'"; }
        else if(!empty(filter_input(1,'hapus'))){ $this->select .= " AND id='".filter_input(1,'hapus')."'"; }
        else if(!empty(filter_input(1,'detail'))){ $this->select .= " AND a.id='".filter_input(1,'detail')."'"; }
    }
}

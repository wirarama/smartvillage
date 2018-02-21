<?php
class jenis extends database{
    public function __construct($home) {
        $this->select = "SELECT * FROM jenis WHERE 1";
        $this->insert = "INSERT INTO jenis (nama)VALUES(?)";
        $this->update = "UPDATE jenis SET nama=? WHERE id=?";
        $this->delete = "DELETE FROM jenis WHERE id=?";
        $this->paramSelect = array('nama');
        $this->paramInsert = array('nama');
        $this->paramUpdate = array('nama','edit');
        $this->paramDelete = array('hapus');
        $this->home = $home;
        parent::__construct();
    }
    public function queryForm(){
        if(!empty(filter_input(1,'edit'))){ $this->querySelect(); $d = $this->data[0]; }
        ?>
        <form action="" method="POST" id="menuForm" class="form-horizontal">
            <?php
            foreach($this->paramInsert AS $p){ if(empty($d[$p])){ $d[$p]="";}}
            $form = new form();
            $form->formInput("nama","text","Nama",60,4,true,$d['nama']);
            if(!empty(filter_input(1,'edit'))){ $form->formHidden("edit",filter_input(1,'edit')); }
            $form->formSubmit("submit","Kirim");
            ?>
        </form>
        <?php
    }
}

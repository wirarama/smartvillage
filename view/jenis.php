<?php
class viewjenis extends template{
    var $title = "Jenis Dokumen";
    public function objdef() {
        require 'control/jenis.php';
        $this->home = 'index.php?p=jenis';
        $this->obj = new jenis($this->home);
    }
    public function bodymain() {
        $this->obj->maincontent();
    }
    public function bodymainjs(){
        parent::bodymainjs();
    }
}
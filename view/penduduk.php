<?php
class viewpenduduk extends template{
    var $title = "Kependudukan";
    public function objdef() {
        require 'control/penduduk.php';
        $this->home = 'index.php?p=penduduk';
        $this->obj = new penduduk($this->home);
    }
    public function bodymain() {
        $this->obj->maincontent();
    }
    public function bodymainjs(){
        parent::bodymainjs();
    }
}
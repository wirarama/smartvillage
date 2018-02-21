<?php
class viewbidang extends template{
    var $title = "Bidang UKM";
    public function objdef() {
        require 'control/bidang.php';
        $this->home = 'index.php?p=bidang';
        $this->obj = new bidang($this->home);
    }
    public function bodymain() {
        $this->obj->maincontent();
    }
    public function bodymainjs(){
        parent::bodymainjs();
    }
}
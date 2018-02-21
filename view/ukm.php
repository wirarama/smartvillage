<?php
class viewukm extends template{
    var $title = "UKM";
    public function objdef() {
        require 'control/ukm.php';
        $this->home = 'index.php?p=ukm';
        $this->obj = new ukm($this->home);
    }
    public function bodymain() {
        $this->obj->maincontent();
    }
    public function bodymainjs(){
        parent::bodymainjs();
    }
}
<?php

class data extends database{
    public function inputPenduduk() {
        $trunc = $this->conn->prepare("TRUNCATE TABLE penduduk");
        $trunc->execute();
        $trunc1 = $this->conn->prepare("UPDATE rfidlist SET status='available'");
        $trunc1->execute();
        $qrfid = $this->conn->prepare("SELECT rfid,id FROM rfidlist ORDER BY id ASC");
        $qrfid->execute();
        $status = array('belum menikah','menikah');
        require 'randomname.php';
        while($d = $qrfid->fetch()){
            $q = "INSERT INTO penduduk VALUES"
                . "(null,'".$people[rand(0,999)]."','alamat".$d['id']."',"
                . "'081".rand(10000,99999)."',"
                . "'".$status[rand(0,1)]."','desa".rand(1,5)."',"
                . "'".rand(1000000,9999999)."','".rand(1000000,9999999)."',"
                . "'".$d['rfid']."',null)";
            $ins = $this->conn->prepare($q);
            $ins->execute();
        }
    }
    public function inputDokumen(){
        $trunc = $this->conn->prepare("TRUNCATE TABLE jenis");
        $trunc->execute();
        $trunc1 = $this->conn->prepare("TRUNCATE TABLE dokumen");
        $trunc1->execute();
        $jenis = array('Kartu Keluarga','Asuransi Kesehatan','Surat Ijin Bertamu',
            'Kartu Tanda Penduduk','Surat Kelakuan Baik');
        $qjenis = "INSERT INTO jenis VALUES";
        $qjenisarr = array();
        foreach($jenis AS $jenis1){
            array_push($qjenisarr,"(null,'".$jenis1."')");
        }
        $qjenis .= implode(',',$qjenisarr);
        $insjenis = $this->conn->prepare($qjenis);
        $insjenis->execute();
        $qpenduduk = $this->conn->prepare("SELECT nama,id FROM penduduk ORDER BY id ASC");
        $qpenduduk->execute();
        while($d = $qpenduduk->fetch()){
            $i = 1;
            foreach($jenis AS $jns){
                $q = "INSERT INTO dokumen VALUES"
                    . "(null,'".$jns.' '.$d['nama']."','".$i."',"
                    . "'".$d['id']."','".$jns.' '.$d['nama']."',null)";
                $ins = $this->conn->prepare($q);
                $ins->execute();
                $i++;
            }
        }
    }
    public function inputUKM(){
        $trunc = $this->conn->prepare("TRUNCATE TABLE bidang");
        $trunc->execute();
        $trunc1 = $this->conn->prepare("TRUNCATE TABLE ukm");
        $trunc1->execute();
        $jenis = array('Pertanian','Perdagangan','Kuliner');
        $qjenis = "INSERT INTO bidang VALUES";
        $qjenisarr = array();
        foreach($jenis AS $jenis1){
            array_push($qjenisarr,"(null,'".$jenis1."')");
        }
        $qjenis .= implode(',',$qjenisarr);
        $insjenis = $this->conn->prepare($qjenis);
        $insjenis->execute();
        $qpenduduk = $this->conn->prepare("SELECT nama,id FROM penduduk ORDER BY id ASC");
        $qpenduduk->execute();
        while($d = $qpenduduk->fetch()){
            $n = rand(1,5);
            for($i=0;$i<$n;$i++){
                $jns = rand(1,sizeof($jenis));
                $q = "INSERT INTO ukm VALUES"
                    . "(null,'".$jenis[($jns-1)].' '.$d['nama']."','".$jns."',"
                    . "'".$d['id']."','".$jenis[($jns-1)].' '.$d['nama']."',"
                    . "'Alamat UKM ".$d['nama']."')";
                $ins = $this->conn->prepare($q);
                $ins->execute();
            }
        }
    }
}

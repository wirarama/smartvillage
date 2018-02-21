<?php
require 'class/viewinterface.php';
require 'class/view.php';
require 'class/template.php';
require 'class/databaseInterface.php';
require 'class/database.php';
require 'class/form.php';
switch(filter_input(1,'p')){
    case('penduduk'):
        require 'view/penduduk.php';
        $view = new viewpenduduk();
        break;
    case('ukm'):
        require 'view/ukm.php';
        $view = new viewukm();
        break;
    case('bidang'):
        require 'view/bidang.php';
        $view = new viewbidang();
        break;
    case('jenis'):
        require 'view/jenis.php';
        $view = new viewjenis();
        break;
    case('dokumen'):
        require 'view/dokumen.php';
        $view = new viewdokumen();
        break;
    case('login'):
        require 'view/login.php';
        $view = new viewlogin();
        break;
    case('rfidlist'):
        require 'view/rfidlist.php';
        $view = new viewrfidlist();
        break;
    case('laporan'):
        require 'view/laporan.php';
        $view = new viewlaporan();
        break;
    case('chart'):
        require 'view/chart.php';
        $view = new viewchart();
        break;
    default:
        require 'view/index.php';
        $view = new viewindex();
        break;
}
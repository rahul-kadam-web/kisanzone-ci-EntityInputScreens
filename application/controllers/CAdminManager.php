<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class CAdminManager Extends CI_Controller{

    public function index(){
        //Load the dashboard view
        $this->load->view('admin/dashboard');
    }

    public function addBrand(){
        //Load the addBrand view
        $this->load->view('admin/addBrand.php');
    }

    public function addCategory(){
        //Load the addCategory view
        $this->load->view('admin/addCategory');
    }

    public function addProduct(){
        //Load the addProduct view
        $this->load->view('admin/addProduct');
    }
}
?>
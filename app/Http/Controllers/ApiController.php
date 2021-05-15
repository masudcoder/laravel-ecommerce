<?php
/**
 * Created by PhpStorm.
 * User: ts-masud.masuduzzama
 * Date: 2020-10-22
 * Time: 22:18
 */

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Http\Requests;
use Session;
use DB;

class ApiController extends Controller
{
    public function homeProducts() {
        $products =  \App\Models\Product::take(8)->get();
        echo json_encode($products);
    }

    public function productDetails($product_row_id) {
        $product =  \App\Models\Product::where('product_row_id', $product_row_id)->first();
        echo json_encode($product);
    }
}
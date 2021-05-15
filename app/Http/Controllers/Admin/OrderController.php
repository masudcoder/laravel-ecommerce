<?php

namespace App\Http\Controllers\Admin;

use Illuminate\Http\Request;
use App\Http\Requests;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Redirect;

use DB;
use Session;

use App\Models\Order;

class OrderController extends Controller
{

    public function __construct()
    {
        $this->middleware('admin-auth');
    }

    public function index()
    {
        $data['orders_list'] = Order::orderByDesc('order_row_id')->get();

        return view('admin.order.home', ['data' => $data]);
    }

    public function orderDetails($order_row_id)
    {


        $data['orders_details'] = Order::get()->where('order_row_id', $order_row_id)->first();


        // $data['orders_details'] = DB::table('orders As To')
        //                       ->join('products As p', 'To.product_row_id', '=', 'p.product_row_id')
        //                       ->where('To.order_row_id', $order_row_id)
        //                       ->select('p.*', 'To.*')
        //                       ->get();

        // $data['orders_details']=Order::get()->where('order_row_id',$order_row_id)->first()->orders_details;

        $data['total_price'] = Order::get()->where('order_row_id', $order_row_id)->first()->total_price;

        return view('admin.order.details', ['data' => $data]);
    }

    public function downloadPdf($order_id)
    {

        $data['order_by_id'] = DB::table('orders')->where('order_row_id', $order_id)->first();
        $data['order-details-by_order-no'] = DB::table('orders')->where('order_row_id', $order_id)->get();
        $pdf = \PDF::loadView('admin.order.invoice', ['data' => $data]);
        return $pdf->stream('Invoice_' . sprintf('%06d', $order_id) . '.pdf');
    }

    public function saveStatus(Request $request) {

        $order_status = $request->order_status ? 1 : 0;
        DB::Table('orders')
            ->where('order_row_id', $request->order_row_id)
            ->update(
                [
                    'order_status' => $order_status,
                    'order_status_notes'=> $request->order_status_notes
                ]
            );

        Session::flash('success-message', 'Delivery status has been changed successfully!');
        return Redirect::to('/admin/orders');

    }

}

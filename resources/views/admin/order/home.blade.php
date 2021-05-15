@extends('admin.layouts.app')
@section('page_specific_include_css_file')
<!-- DataTables CSS -->
<link href="{{ asset('sb-admin/vendor/datatables-plugins/dataTables.bootstrap.css') }}" rel="stylesheet">
<!-- DataTables Responsive CSS -->
<link href="{{ asset('sb-admin/vendor/datatables-responsive/dataTables.responsive.css') }}" rel="stylesheet">
@endsection

@section('content')
<div id="page-wrapper">
  <div class="row">
      <div class="col-lg-12">
          <h1 class="page-header">Orders List</h1>
      </div>
      <!-- /.col-lg-12 -->
  </div>
  <!-- /.row -->
  <!-- /.row -->
  <div class="row">
      <div class="col-lg-12">
          <div class="panel panel-default">
              <div class="panel-heading">
                  Orders
              </div>
              <!-- /.panel-heading -->
              <div class="panel-body">
                 <table width="100%" class="table table-striped table-bordered table-hover dataTables">
                    <thead>
                        <tr>
                        <th>Order ID </th>
                        <th>Customer Name</th>
                        <th>Status</th>
                        <th>Shipping Address</th>
                        <th>Total Price </th>
                        <th>Action</th>
                        </tr>
                    </thead>
                    <tbody>

                          @foreach($data['orders_list'] as $row)
                          <?php $shiping_address=json_decode($row->shiping_address);
                              $order_status=$row->order_status;
                               ?>

                          <tr class="table table-bordered table-hover">
                          <td> ORD -  {{sprintf('%06d', $row->order_row_id)}} </td>
                          <td> {{$shiping_address->name}} </td>
                          <td> {{$row->order_status == 0 ? 'Pending' : 'Delivered'}} </td>
                          <td>
                          <p>  <label>Address:</label>  {{$shiping_address->address}}</p>
                          <p> <label> Mobile:</label> {{$shiping_address->mobile}}</p>
                          <p> <label>E-mail:</label>  {{$shiping_address->email}}</p>
                          </td>
                         <td> {!! $row->total_price  !!} </td>
                          <td>
                              <div style="margin-top: 2px">
                                  <a href="{{asset('/admin/orders/details/')}}/{{$row->order_row_id}}"
                                            class="btn btn-default">Details</a>
                              </div>
                              <div style="margin-top: 2px">
                                <a href="#smsModal" data-toggle="modal" data-mobile="{{$shiping_address->mobile}}"
                                class="btn btn-default">  Send SMS </a>
                           </div>
                           <div style="margin-top: 2px">
                              <a href="#" data-toggle="modal" data-target='#orderDeliveryModal'
                                 data-order-row-id="{{$row->order_row_id}}" data-order-status="{{$row->order_status}}"
                             class="btn btn-default delivery-status-icon"> Change Delivered Status </a>
                           </div>
                          </td>
                          </tr>
                          @endforeach
                    </tbody>
                  </table>
              </div>
              <!-- /.panel-body -->
          </div>
          <!-- /.panel -->
      </div>
      <!-- /.col-lg-12 -->
  </div>
</div>

<!--orderDeliveryModal  Modal -->
  <div class="modal fade" id="orderDeliveryModal" role="dialog">
    <div class="modal-dialog">

      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4 class="modal-title">Change Order Status</h4>
        </div>
        <div class="modal-body">
        <form method="post" action="{{ url('/')}}/admin/orders/saveStatus">
            {!! csrf_field() !!}

            <div class="form-group">
            <label for="mobile">Delevired successfully?</label>
            <input type="checkbox" class="form-control" id="order_status" name="order_status" >
            </div>
            <div class="form-group">
            <label for="pwd">Comment</label>
            <textarea class="form-control" rows="6" name="message" style="resize: none;" id="message" placeholder="Write message here !!!" ></textarea>
            </div>
            <input type="hidden" name="order_row_id" id="order_row_id" />

            <button type="submit" class="btn btn-primary">Send</button>
      </form>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-danger" data-dismiss="modal">Close</button>
      </div>
    </div>

  </div>
  </div>
  <!--orderDeliveryModal  Modal -->

  <!--SMS  Modal -->
  <div class="modal fade" id="smsModal" role="dialog">
    <div class="modal-dialog">

      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4 class="modal-title">@Send SMS</h4>
        </div>
        <div class="modal-body">
          <form method="post" action="#">
                  {!! csrf_field() !!}
        <div class="form-group">
          <label for="mobile">Mobile</label>
          <input type="text" class="form-control" id="mobile" value="" name="mobile" required>
        </div>
        <div class="form-group">
          <label for="pwd">Message</label>
          <textarea class="form-control" rows="6" name="message" style="resize: none;" id="message" placeholder="Write message here !!!" required></textarea>
        </div>
        <button type="submit" class="btn btn-primary">Send</button>
      </form>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-danger" data-dismiss="modal">Close</button>
      </div>
    </div>

  </div>
  </div>
  <!--SMS  Modal -->
@endsection

@section('page_specific_include_js_file')
<script src="{{ asset('sb-admin/vendor/datatables/js/jquery.dataTables.min.js') }}"></script>
<script src="{{ asset('sb-admin/vendor/datatables-plugins/dataTables.bootstrap.min.js') }}"></script>
<script src="{{ asset('sb-admin/vendor/datatables-responsive/dataTables.responsive.js') }}"></script>
@endsection

@section('page_level_js')
<script type="text/javascript">
     $('#smsModal').on('show.bs.modal', function (e) {
       let mobile = $(e.relatedTarget).data('mobile');
       $("#mobile").attr("value", mobile);
     });

     $('.delivery-status-icon').click( function () {
      let order_row_id = $(this).attr('data-order-row-id');
      $("#order_row_id").attr("value", order_row_id);

      let order_status = $(this).attr('data-order-status');
      if(order_status == 1) {
          $('#order_status').prop('checked', true);
      }
  });


</script>
@endsection
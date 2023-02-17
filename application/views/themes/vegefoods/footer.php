<?php
defined('BASEPATH') OR exit('No direct script access allowed');
?>

  
  


<!-- loader -->
<div id="ftco-loader" class="show fullscreen"><svg class="circular" width="48px" height="48px"><circle class="path-bg" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke="#eeeeee"/><circle class="path" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke-miterlimit="10" stroke="#e83e8c"/></svg></div>

<script src="<?php echo get_theme_uri('js/popper.min.js'); ?>"></script>
<script src="<?php echo get_theme_uri('js/bootstrap.min.js'); ?>"></script>
<script src="<?php echo get_theme_uri('js/jquery.easing.1.3.js'); ?>"></script>
<script src="<?php echo get_theme_uri('js/jquery.waypoints.min.js'); ?>"></script>
<script src="<?php echo get_theme_uri('js/jquery.stellar.min.js'); ?>"></script>
<script src="<?php echo get_theme_uri('js/owl.carousel.min.js'); ?>"></script>
<script src="<?php echo get_theme_uri('js/jquery.magnific-popup.min.js'); ?>"></script>
<script src="<?php echo get_theme_uri('js/aos.js'); ?>"></script>
<script src="<?php echo get_theme_uri('js/jquery.animateNumber.min.js'); ?>"></script>
<script src="<?php echo get_theme_uri('js/bootstrap-datepicker.js'); ?>"></script>
<script src="<?php echo get_theme_uri('js/scrollax.min.js'); ?>"></script>
<script src="<?php echo get_theme_uri('js/main.js'); ?>"></script>
<script src="<?php echo base_url('assets/plugins/toastr/toastr.min.js'); ?>"></script>

<script>
  toastr.options = {
  "closeButton": false,
  "debug": false,
  "newestOnTop": false,
  "progressBar": false,
  "positionClass": "toast-top-right",
  "preventDuplicates": false,
  "onclick": null,
  "showDuration": "300",
  "hideDuration": "1000",
  "timeOut": "5000",
  "extendedTimeOut": "1000",
  "showEasing": "swing",
  "hideEasing": "linear",
  "showMethod": "fadeIn",
  "hideMethod": "fadeOut"
}

  $.ajax({
    method: 'GET',
    url: '<?php echo site_url('shop/cart_api?action=cart_info'); ?>',
    success: function (res) {
      var data = res.data;

      var total_item = data.total_item;
      $('.cart-item-total').text(total_item);
    }
  });

  $('.add-cart').click(function(e) {
    e.preventDefault();

    var id = $(this).data('id');
    var sku = $(this).data('sku');
    var qty = $(this).data('qty');
    qty = (qty > 0) ? qty : 1;
    var price = $(this).data('price');
    var name = $(this).data('name');

    $.ajax({
      method: 'POST',
      url: '<?php echo site_url('shop/cart_api?action=add_item'); ?>',
      data: {
        id: id,
        sku: sku,
        qty: qty,
        price: price,
        name: name
      },
      success: function (res) {
        if (res.code == 200) {
          var totalItem = res.total_item;

          $('.cart-item-total').text(totalItem);
          toastr.info('Item ditambahkan dalam keranjang');
        }
        else {
          console.log('Terjadi kesalahan');
        }
      }
    });
  });
</script>
  
</body>
</html>
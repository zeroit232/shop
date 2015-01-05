<div id="cart">
  <div class="heading">
    <h4><?php echo $heading_title; ?></h4>
    <a><span id="cart-total"><?php echo $text_items; ?></span></a></div>
  <div class="content">
  <div class="bg_content">
    <?php if ($products || $vouchers) { ?>
    <div class="mini-cart-info">
      <table>
        <?php foreach ($products as $product) { ?>
        <tr>
          <td class="image">
		  <?php if ($product['thumb']) { ?>
            <a href="<?php echo $product['href']; ?>"><img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" title="<?php echo $product['name']; ?>" /></a>
            <?php } ?>
		  </td>
          <td class="name">
			<div class="name"><a href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a></div>
            <div class="subs">
              <?php foreach ($product['option'] as $option) { ?>
              - <small><?php echo $option['name']; ?> <?php echo $option['value']; ?></small><br/><br/>
              <?php } ?>
	      
              <?php if ($product['recurring']): ?>
              - <small><?php echo $text_payment_profile ?> <?php echo $product['profile']; ?></small><br />
              <?php endif; ?>
            </div>
            <div class="total"><?php echo $product['price']; ?>&nbsp;&nbsp;x&nbsp;<?php echo $product['quantity']; ?></div>
			<div class="remove">
			<a onclick="(getURLVar('route') == 'checkout/cart' || getURLVar('route') == 'checkout/checkout') ? location = 'index.php?route=checkout/cart&amp;remove=<?php echo $product['key']; ?>' : $('#cart').load('index.php?route=module/cart&amp;remove=<?php echo $product['key']; ?>' + ' #cart > *');"><?php echo $button_remove; ?></a>
			</div>
		</td>
          
        </tr>
        <?php } ?>
        <?php foreach ($vouchers as $voucher) { ?>
        <tr>
          <td class="image">
		  </td>
          <td class="name">
			<div class="name"><span><?php echo $voucher['description']; ?></span></div>
			  <div class="total"><?php echo $voucher['amount']; ?></div>
			  <div class="quantity">x&nbsp;1</div>
			  <div class="remove">
				<a onclick="(getURLVar('route') == 'checkout/cart' || getURLVar('route') == 'checkout/checkout') ? location = 'index.php?route=checkout/cart&amp;remove=<?php echo $voucher['key']; ?>' : $('#cart').load('index.php?route=module/cart&amp;remove=<?php echo $voucher['key']; ?>' + ' #cart > *');"><?php echo $button_remove; ?></a>
			  </div>
		  </td>
        </tr>
        <?php } ?>
      </table>
    </div>
    <div class="mini-cart-total">
      <table>
        <?php foreach ($totals as $total) { ?>
        <tr>
          <td class="left<?php echo($total==end($totals) ? ' last' : ''); ?>"><?php echo $total['title']; ?></td>
          <td class="right<?php echo($total==end($totals) ? ' last' : ''); ?>"><?php echo $total['text']; ?></td>
        </tr>
        <?php } ?>
      </table>
    </div>
    <div class="checkout"><a class="button_black" href="<?php echo $cart; ?>"><span><?php echo $text_cart; ?></span></a>  <a class="button_pink" href="<?php echo $checkout; ?>"><span><?php echo $text_checkout; ?></span></a></div>
    <?php } else { ?>
    <div class="empty"><?php echo $text_empty; ?></div>
    <?php } ?>
  </div>
  </div>
</div>

<script type="text/javascript"><!--
$(document).ready(function() {
	if(getWidthBrowser() < 959) {
		$('#cart > .heading a').live('click', function() {
			if($('#cart').hasClass('my-active')){
				$('#cart').removeClass('active');
				$('#cart').removeClass('my-active');
			} else {
				$('#cart').addClass('my-active');
			}
		});
	}
});
--></script>
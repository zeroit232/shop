<!DOCTYPE html>
<html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>">
<head>
<meta charset="UTF-8" />
<title><?php echo $title; ?></title>
<base href="<?php echo $base; ?>" />
<?php if ($description) { ?>
<meta name="description" content="<?php echo $description; ?>" />
<?php } ?> 
<meta content="width=device-width, initial-scale=1, maximum-scale=1" name="viewport">
<?php if ($keywords) { ?>
<meta name="keywords" content="<?php echo $keywords; ?>" />
<?php } ?>
<?php if ($icon) { ?>
<link href="<?php echo $icon; ?>" rel="icon" />
<?php } ?>
<?php foreach ($links as $link) { ?>
<link href="<?php echo $link['href']; ?>" rel="<?php echo $link['rel']; ?>" />
<?php } ?>
<link rel="stylesheet" type="text/css" href="catalog/view/theme/bt_optronics/stylesheet/stylesheet.css" />
<link rel="stylesheet" type="text/css" href="catalog/view/theme/bt_optronics/stylesheet/boss_add_cart.css" />
<?php foreach ($styles as $style) { ?>
<link rel="<?php echo $style['rel']; ?>" type="text/css" href="<?php echo $style['href']; ?>" media="<?php echo $style['media']; ?>" />
<?php } ?>
<link rel="stylesheet" type="text/css" href="catalog/view/theme/bt_optronics/stylesheet/skeleton.css" />
<link rel="stylesheet" type="text/css" href="catalog/view/theme/bt_optronics/stylesheet/responsive.css" />
<script type="text/javascript" src="catalog/view/javascript/jquery/jquery-1.7.1.min.js"></script>
<script type="text/javascript" src="catalog/view/javascript/jquery/ui/jquery-ui-1.8.16.custom.min.js"></script>
<link rel="stylesheet" type="text/css" href="catalog/view/javascript/jquery/ui/themes/ui-lightness/jquery-ui-1.8.16.custom.css" />
<script type="text/javascript" src="catalog/view/javascript/common.js"></script>
<script type="text/javascript" src="catalog/view/javascript/bossthemes/getwidthbrowser.js"></script>
<script type="text/javascript" src="catalog/view/javascript/bossthemes/bossthemes.js"></script>
<script type="text/javascript" src="catalog/view/javascript/bossthemes/notify.js"></script>
<?php foreach ($scripts as $script) { ?>
<script type="text/javascript" src="<?php echo $script; ?>"></script>
<?php } ?>
<!--[if IE 8]>
<link rel="stylesheet" type="text/css" href="catalog/view/theme/bt_optronics/stylesheet/ie8.css" />
<![endif]-->

<!--[if IE 9]>
<link rel="stylesheet" type="text/css" href="catalog/view/theme/bt_optronics/stylesheet/ie9.css" />
<![endif]-->

<!--[if IE 7]>
<link rel="stylesheet" type="text/css" href="catalog/view/theme/bt_optronics/stylesheet/ie7.css" />
<![endif]-->

<!--[if lt IE 7]>
<link rel="stylesheet" type="text/css" href="catalog/view/theme/bt_optronics/stylesheet/ie6.css" />
<script type="text/javascript" src="catalog/view/javascript/DD_belatedPNG_0.0.8a-min.js"></script>
<script type="text/javascript">
DD_belatedPNG.fix('#logo img');
</script>
<![endif]-->
<?php if ($stores) { ?>
<script type="text/javascript"><!--
$(document).ready(function() {
<?php foreach ($stores as $store) { ?>
$('body').prepend('<iframe src="<?php echo $store; ?>" style="display: none;"></iframe>');
<?php } ?>
});
//--></script>
<?php } ?>
<?php echo $google_analytics; ?>
</head>
<?php 
	$array = (explode('/',$_SERVER['REQUEST_URI']));
	$end = end($array);
	if($end == "index.php" || $end == "home" || $end == ""){
		$home_page='home_page';
	}else{
		$home_page="other_page";
	}
?>
<body <?php echo 'class='.$home_page; ?>>
<div class="frame_container">
<div id="container" class="container">
<div id="header" class="sixteen columns">
	<div id="mb-links"></div>
	<div id="mb-logo"></div>
	<div id="mb-search">
		<input type="text" name="search" placeholder="<?php echo $text_search; ?>" value="<?php echo $search; ?>" />
		<div class="button-search" title="<?php echo $text_search; ?>"></div>
	</div>
	<div id="mb-login"></div>
	<div id="mb-cart"></div>
	<div class="header-top">
		<div id="pc-login">	
		<?php if(isset($boss_login)){echo $boss_login; }?>
		<?php if(isset($language)){echo $language; }?>
		<?php if(isset($currency)){echo $currency; }?>
		</div>
		<div id="pc-links"><div class="links"><a href="<?php echo $wishlist; ?>" id="wishlist-total"><?php echo $text_wishlist; ?></a><a class="no-need" href="<?php echo $account; ?>"><?php echo $text_account; ?></a><a class="no-need" href="<?php echo $checkout; ?>"><?php echo $text_checkout; ?></a></div></div>
	</div>
	<div class="header-middle">		
		<?php if ($logo) { ?>
		<div id="logo"><a href="<?php echo $home; ?>"><img src="<?php echo $logo; ?>" title="<?php echo $name; ?>" alt="<?php echo $name; ?>" /></a></div>
		<?php } ?>
			<?php if(isset($header_top)){echo $header_top; }?>
	</div>
	<div class="header-bottom">
			<?php if(isset($boss_megamenu)){echo $boss_megamenu; }?>
		<div id="pc-search"><?php if(isset($boss_search)){echo $boss_search; }?></div>
		<div id="pc-cart"><?php echo $cart; ?></div>
	<?php if(isset($header_bottom)){echo $header_bottom; }?>
	</div>
</div>
<script type="text/javascript">
		$(document).ready(function() {
			boss_header_move_mobile();
		});
		$(window).resize(function() {
			boss_header_move_mobile();
		});
		
		function boss_header_move_mobile()	{
			if(getWidthBrowser() < 767){        
               $('#pc-search').css("display", "none");
               $('#mb-search').css("display", "block");        
				if ($("#pc-links").html()) {
					$("#mb-links").html($("#pc-links").html());
					$("#pc-links").html("");
					$("#pc-links").css("display", "none");
                }
				if ($("#logo").html()) {
					$("#mb-logo").html($("#logo").html());
					$("#logo").html("");
					$("#pc-links").css("display", "none");
                }
				if ($("#pc-login").html()) {
					$("#mb-login").html($("#pc-login").html());
					$("#pc-login").html("");
					$("#pc-login").css("display", "none");
                }
				if ($("#pc-cart").html()) {
					$("#mb-cart").html($("#pc-cart").html());
					$("#pc-cart").html("");
					$("#pc-cart").css("display", "none");
					$('#cart > .heading a').live('click', function() {
						if($('#cart').hasClass('my-active')){
							$('#cart').removeClass('active');
							$('#cart').removeClass('my-active');
						} else {
							$('#cart').addClass('my-active');
						}
						$('#cart').addClass('active');
		
						$('#cart').load('index.php?route=module/cart #cart > *');
						
						$('#cart').live('mouseleave', function() {
							$(this).removeClass('active');
						});
					});
                }
			}else {
				$('#mb-search').css("display", "none");
				$('#pc-search').css("display", "block");
				if ($("#mb-links").html()) {
					$("#pc-links").html($("#mb-links").html());
					$("#mb-links").html("");
					$("#pc-links").css("display", "block");
				}
				if ($("#mb-logo").html()) {
					$("#logo").html($("#mb-logo").html());
					$("#mb-logo").html("");
					$("#logo").css("display", "block");
				}
                if ($("#mb-login").html()) {
					$("#pc-login").html($("#mb-login").html());
					$("#mb-login").html("");
					$("#pc-login").css("display", "block");
				}
                if ($(".mb-cart").html()) {
					$(".pc-cart").html($("#mb-cart").html());
					$(".mb-cart").html("");
                    $(".pc-cart").css("display", "block");
				}
			}
		}
</script>
<?php if ($error) { ?>
    
    <div class="warning"><?php echo $error ?><img src="catalog/view/theme/default/image/close.png" alt="" class="close" /></div>
    
<?php } ?>
<div id="notification"></div>
<div class="sixteen columns">
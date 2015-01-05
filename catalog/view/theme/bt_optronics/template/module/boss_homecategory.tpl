<?php if(!empty($tabs)){ ?>
<div class="boss_category_tabs">
	<div class="box-heading" id="boss-category-heading-<?php echo $module; ?>"><?php echo $tabs['name']; ?></div>
	<div id="boss_category_tabs<?php echo $module; ?>" class="boss_htabs">
		<?php foreach ($tabs['categories'] as $key => $category) { ?>
		<a <?php echo ( $key>4 ? 'class="display-none"' : ''); ?> href="#categorytab-<?php echo $key; ?><?php echo $module; ?>"><?php echo $category['name']; ?></a>
		<?php } ?>
	</div>
	<div class="boss_category_content" id="boss_category_content<?php echo $module; ?>">
		<?php foreach ($tabs['categories'] as $key => $category) { ?>
		<div class="box-heading" style="display: none">
			<?php echo $category['name']; ?>
		</div>
		<div class="box" id="categorytab-<?php echo $key; ?><?php echo $module; ?>">
			<div class="box-content hc-es-carousel-wrapper">
				<div class="hc-box-product hc-es-carousel">
				<?php if(!empty($category['products'])){ ?>
					<ul class="skin-opencart">
						<?php foreach ($category['products'] as $product) { ?>
							<li><div class="one-product-category">
							<?php if ($product['thumb']) { ?>
							<div class="image"><a href="<?php echo $product['href']; ?>"><img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" title="<?php echo $product['name']; ?>"/></a></div>
							<?php } ?>
							<div class="name"><a href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a></div>
							<div class="description"><?php echo $product['description']; ?></div>
							<?php if ($product['rating']) { ?>
							<div class="rating"><img src="catalog/view/theme/<?php echo $template; ?>/image/stars-<?php echo $product['rating']; ?>.png" alt="<?php echo $product['reviews']; ?>" /></div>
							<?php } ?>
							<?php if ($product['price']) { ?>
							<div class="price">
								<?php if (!$product['special']) { ?>
								<?php echo $product['price']; ?>
								<?php } else { ?>
								<span class="price-old"><?php echo $product['price']; ?></span> <span class="price-new"><?php echo $product['special']; ?></span>
								<?php } ?>
							</div>
							<?php } ?>
							<div class="cart"><span class="button_pink"><input type="button" value="<?php echo $button_cart; ?>" onclick="boss_addToCart('<?php echo $product['product_id']; ?>');" class="button" /></span></div>
							</div>
							</li>
						<?php } ?>
					</ul>
				<?php } ?>
				</div>
			</div>
		</div>
		<script type="text/javascript"><!--
		if(getWidthBrowser() > 959){
			$('#categorytab-<?php echo $key; ?><?php echo $module; ?>').elastislide({
				imageW 		: 183,
				border		: 0,
				current		: 0,
				margin		: 10,
				onClick 	: true,
				minItems	: 1,
				disable_touch		: false
			});	
		}else if(getWidthBrowser() > 766 && getWidthBrowser() < 960) {
			$('#categorytab-<?php echo $key; ?><?php echo $module; ?>').elastislide({
				imageW 		: 177,
				border		: 0,
				current		: 0,
				margin		: 10,
				onClick 	: true,
				minItems	: 1,
				disable_touch		: false
			});	
		}
		//--></script>
		<?php } ?>
	</div>
		
	<script type="text/javascript"><!--
		$('#boss_category_content<?php echo $module; ?> div.box-heading').click(function() {
			$(this).next().toggle();
			if($(this).next().css('display') == 'block'){
				$(this).addClass('selected');
			}else{
				$(this).removeClass('selected');
			}
			return false;
		}).next().hide();	
		
		$(document).ready(function() {
			boos_homecategory_resize<?php echo $module; ?>();
		});
		$(window).resize(function() {
			boos_homecategory_resize<?php echo $module; ?>();
		});
		
		function boos_homecategory_resize<?php echo $module; ?>()	{
			if(getWidthBrowser() < 767){
				$('#boss_category_tabs<?php echo $module; ?>').hide();
				$('#boss_category_content<?php echo $module; ?> div.box-heading').show();	
				//$('.boss_category_content .box').hide();
			} else {
				$('#boss_category_tabs<?php echo $module; ?>').show();
				$('#boss_category_content<?php echo $module; ?> div.box-heading').hide();
			}
		}
		$('#boss_category_tabs<?php echo $module; ?> a').tabs();
	//--></script>	
</div>
<?php } ?>

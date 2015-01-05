function boss_addToCart(product_id) {
  $.ajax({
      url: 'index.php?route=bossthemes/cart/add',
      type: 'post',
      data: 'product_id=' + product_id,
      dataType: 'json',
      success: function(json) {

          if (json['redirect']) {
              location = json['redirect'];
          }

          if (json['error']) {
              if (json['error']['warning']) {
                  addProductNotice(json['title'], json['thumb'], json['error']['warning'], 'failure');
              }
          }

          if (json['success']) {
              addProductNotice(json['title'], json['thumb'], json['success'], 'success');
              $('#cart_menu span.s_grand_total').html(json['total_sum']);
              $('#cart_menu div.s_cart_holder').html(json['output']);
			  $('#cart-total').html(json['total']);
          }
      }
  });
}

function boss_addToWishList(product_id) {
	$.ajax({
		url: 'index.php?route=bossthemes/wishlist/add',
		type: 'post',
		data: 'product_id=' + product_id,
		dataType: 'json',
		success: function(json) {
			if (json['success']) {
				addProductNotice(json['title'], json['thumb'], json['success'], 'success');
			}
			if (json['failure']) {
				addProductNotice(json['title'], json['thumb'], json['failure'], 'failure');
			}
			$('#wishlist-total').html(json['total']);
		}
	});
}

function boss_addToCompare(product_id) {
	$.ajax({
		url: 'index.php?route=bossthemes/compare/add',
		type: 'post',
		data: 'product_id=' + product_id,
		dataType: 'json',
		success: function(json) {
			if (json['success']) {
                addProductNotice(json['title'], json['thumb'], json['success'], 'success');
				$('#compare-total').html(json['total']);
			}
		}
	});
}

function appendNoticeTemplates() {
  if (!$("#notification-container").length) {
    var tpl = '<div id="notification-container" style="display: none">\
                 <div id="thumb-template">\
                   <a class="ui-notify-cross ui-notify-close boss_button_remove" href="javascript:;"></a>\
                   <h2 class="boss_icon_success"><span class="boss_title">#{title}</span></h2>\
                   <div class="boss_text">\
                     #{thumb}\
                     <h3>#{text}</h3>\
                   </div>\
                 </div>\
                 <div id="nothumb-template">\
                   <a class="ui-notify-cross ui-notify-close boss_button_remove" href="javascript:;"></a>\
                   <h2 class="boss_icon_success"><span class="boss_title">#{title}</span></h2>\
                   <div class="boss_text">\
                     <h3>#{text}</h3>\
                   </div>\
                 </div>\
               </div>';
    $(tpl).appendTo("body");
    $("#notification-container").notify();
  }
}

function addProductNotice(title, thumb, text, type) {
    if ($.browser.msie && $.browser.version.substr(0,1) < 8) {
        simpleNotice(title, text, type);

        return false;
    }
    appendNoticeTemplates();
    $("#notification-container").notify("create", "thumb-template", {
        title: title,
        thumb: thumb,
        text:  text,
        type: type
        },{
        expires: 4000
        }
    );
}

function simpleNotice(title, text, type) {
    appendNoticeTemplates();
    $("#notification-container").notify("create", "nothumb-template", {
        title: title,
        text:  text,
        type: type
        },{
        expires: 4000
        }
    );
}

$(document).ready(function() {
	$('#header input[name=\'filter_name\']').keydown(function(e) {
		if (e.keyCode == 13) {
			$('#header #boss-button-search').trigger('click');
		}
	});

	$('#header #boss-button-search').bind('click', function() {
		url = 'index.php?route=product/search';
		
		var search = $('#header input[name=\'filter_name\']').attr('value');
		
		if (search) {
			url += '&search=' + encodeURIComponent(search);
		}

		var category_id = $('#header select[name=\'filter_category_id\']').attr('value');
		
		if (category_id > 0) {
			url += '&category_id=' + encodeURIComponent(category_id);
		}

		location = url;
	});
});

/* mega boss menu */
$(window).load(function(){
	var menuWidth = 745;
	var numColumn = 6;
	var currentWidth = $("#container").outerWidth() - 215;
	// responsive
	if (currentWidth < menuWidth) {
		new_width_column = currentWidth / numColumn - 4;
		$('#boss_menu div.dropdown').each(function(index, element) {
			if($(this).width() > currentWidth){
				$(this).width(parseFloat($(this).css("width"))/menuWidth*numColumn * new_width_column);
			}
		});
		$('#boss_menu div.option').each(function(index, element) {
			if($(this).width() > currentWidth){
				$(this).width(parseFloat($(this).css("width"))/menuWidth*numColumn * new_width_column);
			}
		});
		$('#boss_menu ul.column').each(function(index, element) {
			if($(this).width() > currentWidth){
				$(this).width(parseFloat($(this).css("width"))/menuWidth*numColumn * new_width_column);
			}
		});
	}
	// end responsive
	hover();	
});
$(document).ready(function() {
	$('#boss_menu > ul > li > a').hover(function(){ 
		 hover();
	});
});
function hover(){
	var menu = jQuery("#boss_menu ul.display-menu");
	menuY = menu.offset().top;
	menuOuterH = menu.outerHeight();
	
	var list_li = jQuery("#boss_menu ul.display-menu>li");
	
	list_li.each(function(idx) {
		
		var li_menuY = jQuery(this).offset().top;
		
		var dropdown = jQuery(this).find('div.dropdown');
		var dropdownOuterH = dropdown.outerHeight();
		
		if(menuOuterH <= dropdownOuterH || li_menuY - menuY <= dropdownOuterH){
			dropdown.css('top', menuY - li_menuY + 'px');
		}
		else{
			
			var temp = menuOuterH - (li_menuY - menuY);
			
			if(temp <= dropdownOuterH){
				var this_outerH = jQuery(this).outerHeight();
				dropdown.css('top', 0 - (dropdownOuterH - this_outerH) + 'px');
			}
		}
	});
}
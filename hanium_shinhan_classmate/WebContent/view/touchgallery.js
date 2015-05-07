/*
* Touch Image Gallery (c) Dynamic Drive (www.dynamicdrive.com)
* Visit http://www.dynamicdrive.com/ for this script and 100s more.
* Requires: jQuery 1.7 or higher
* Requires: jquery.touchSwipe.min.js
* Last updated: Aug 3rd, 2013:
* - Clicking on forward/back nav buttons no longer selects entire DIV
*/

(function($){

	var gallerydefaults = {
		width: 300,
		height: 250, 
		navarea: '20%',
		curslide: 0,
		threshold: 75,
		navbuttons : ['/hanium_shinhan_classmate/view/left.png', '/hanium_shinhan_classmate/view/right.png', 90]
	}

	var swipeOptions={
		triggerOnTouchEnd : true,
		triggerOnTouchLeave : true,
		allowPageScroll:"vertical"
	}

	var transform = typeof $(document.documentElement).css('transform') != "undefined" // test for support for CSS3 transform
	var detecttouch = !!('ontouchstart' in window) || !!('ontouchstart' in document.documentElement) || !!window.ontouchstart || !!window.Touch || !!window.onmsgesturechange || (window.DocumentTouch && window.document instanceof window.DocumentTouch)

	$.fn.touchgallery = function(options){
		return this.each(function(){
			var setting = $.extend({}, gallerydefaults, options)
				$slideshow = $(this),
				swipestart = false,
				initialx = 0,
				dist = 0,
				swipecount = 0
			var $belt = $slideshow.find('ul:eq(0)')
			$belt.moveit = function(val){
				//if (transform)
					//this.css('transform', 'translateX(' + val + 'px)')
				//else
					this.css('left', val)
				this.data('curleft', val)			
			}
			var $lis = $belt.find('li')
			var imgcount = $lis.length			
			
			var $navbuttons = $('<div style="position:absolute; width: ' + setting.navarea + '; height: 100%; left: 0; top: 0; text-align: left; line-height:' + setting.height + 'px; cursor: none; opacity: 0" />')
				.clone()
				.addBack()
				.eq(0)
				.data({'dir': 'back'})
				.html('<img src="' + setting.navbuttons[0] + '" style="vertical-align: middle; position:relative; top:' + setting.navbuttons[2] +'px" title="Back one image" />')
				.end()
				.eq(1)
				.data({'dir': 'forth'})
				.css({left: 'auto', right: 0, textAlign: 'right'}).html('<img src="' + setting.navbuttons[1] + '" style="vertical-align: middle; position:relative; top:' + setting.navbuttons[2] +'px" title="Forward one image" />')
				.end()
				.on('selectstart', function(){
					return false
				})
				.appendTo($slideshow)

			if (!detecttouch)
				$navbuttons.css('cursor', 'pointer')

			$slideshow.on('mouseenter mouseleave', function(e){
				var opacity = (e.type == 'mouseenter')? 1 : 0
					$navbuttons.animate({opacity: opacity}, 200)
			})

			function navigate(keyword){
				clearTimeout(setting.hidenavtimer)
				var curslide = setting.curslide 
				switch (keyword){
					case 'forth':
						setting.curslide = (curslide < imgcount-1)? curslide + 1 : 0
						break
					case 'back':
						setting.curslide = (curslide >0)? curslide - 1 : imgcount-1
						break
					default:
						setting.curslide = parseInt(keyword)
				}
				
				$belt.moveit( -setting.width * setting.curslide )
			}
	
			$slideshow.add($lis).css({
				width: setting.width,
				height: setting.height
			})
	
			$belt.css({width: setting.width * imgcount})
			navigate(setting.curslide)
	
			swipeOptions.swipeStatus = function(event, phase, direction, distance){
				if (phase == 'start'){
					swipestart = true
					swipecount = 0
					initialx = parseInt( $belt.data('curleft') )
					dist = 0
				}
				else if (phase == "move" && swipestart){
					dist = (direction == 'left'? -1 : 1) * distance + initialx
					$belt.moveit( Math.min(dist, (setting.curslide+1) * setting.width) )
				}
				else if (phase == 'cancel'){
					$belt.moveit( -setting.width * setting.curslide )
				}
				else if (phase == 'end'){
					if (distance < setting.threshold){ // snap back
						navigate(setting.curslide)
					}
					else{
						swipecount ++
						if (swipecount == 1){
							navigate( (direction == 'left')? 'forth' : 'back' )
						}
					}
					swipestart = false
				}
			}

			swipeOptions.tap = function(event, obj){
				$navbuttons.css({opacity: 1})
				setting.hidenavtimer = setTimeout(function(){
					$navbuttons.css({opacity: 0})
				}, 2000)
			}		
	
			$slideshow.swipe(swipeOptions)

			$navbuttons.swipe({
				tap: function(e){
					var $target = $(this)
					navigate( $target.data('dir') )
				}
			})

			
		})
	}


}) (jQuery)
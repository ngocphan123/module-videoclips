<!-- BEGIN: main -->
<link rel="stylesheet" href="{NV_BASE_SITEURL}themes/{TEMPLATE}/css/flexslider.css" type="text/css" media="screen" />
<div id="videotop" class="flexslider videotop col-md-24">
	<ul class="groups_notice slides">
		<!-- BEGIN: loop -->
		<li class="clearfix">
			<!-- BEGIN: youtube -->
			<div class="col-md-24 col-sm-24 col-xs-24" style="padding:0px 0px;">
				<iframe style="width: 100%;" width="100%" allowfullscreen="allowfullscreen" frameborder="0"  src="//www.youtube.com/embed/{CODE}?rel=0&amp;controls=1&amp;autohide=0" ></iframe>
			</div>
			<!-- END: youtube -->
		
			<!-- BEGIN: player -->
			<div class="detailContent_bl">
				<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/swfobject/2.2/swfobject.js"></script>
                <script type="text/javascript" src="{NV_BASE_SITEURL}themes/{TEMPLATE}/images/{MODULE_NAME}/jwplayer/jwplayer.js"></script>
                <script type="text/javascript">jwplayer.key="KzcW0VrDegOG/Vl8Wb9X3JLUql+72MdP1coaag==";</script>
				<script type="text/javascript">
					function BlockvideoPlay(d, c) {
						var a = $("#" + c).outerWidth(), b;
						a = 277;
						640 < a && ( a = 640);
						b = a;
						a = Math.ceil(45 * a / 80) + 4;
						$("#" + c).parent().css({
							width : b,
							height : a,
							margin : "0 auto"
						});
						
						jwplayer(c).setup({
				            file: d,
				            width: b,
				            height: a
				        });																					
						return !1
					};
		
				</script>
				<div class="videoplayer_bl">
					<div class="cont">
						<div id="videoCont_bl"></div>
					</div>
				</div>
				<script type="text/javascript">
					$(function() {
						BlockvideoPlay("{DETAILCONTENT.filepath}", "videoCont_bl"), $("html,body").animate({
							scrollTop : $(".detailContent_bl").offset().top
						}, 500)
					});
				</script>
			</div>
			<!-- END: player -->
		</li>
		<!-- END: loop -->
	</ul>
</div>

<ul class="flex-direction-nav">
<li class="flex-nav-prev"><a href="#" class="flex-next">Sau <i class="fa fa-angle-right fa-lg"></i></a></li>
<li class="flex-nav-next"><a href="#" class="flex-prev"><i class="fa fa-angle-left fa-lg"></i> Trước</a></li></ul>
<script defer src="{NV_BASE_SITEURL}themes/{TEMPLATE}/js/jquery.flexslider.js"></script>
<script type="text/javascript">
	$(window).on('load', function() {
		$('#videotop').flexslider({
			animation : "slide",
			controlNav : false,
			animationLoop : false,
			slideshow : false,
			controlsContainer: $(".custom-controls-container"),
    		customDirectionNav: $(".custom-navigation a")
		});
	}); 
</script>
<br/><br/>
<!-- END: main -->
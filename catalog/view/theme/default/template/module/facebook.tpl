<script type="text/javascript">
if(!document.getElementById('fb-root')){
var fbdiv = document.createElement('div');
fbdiv.setAttribute('id', 'fb-root');
if(document.body != null){
document.body.appendChild(fbdiv);
}
}

(function(d, s, id) {
var js, fjs = d.getElementsByTagName(s)[0];
if (d.getElementById(id)) return;
js = d.createElement(s); js.id = id;
js.src = "//connect.facebook.net/<?php echo $locale;?>/all.js#xfbml=1";
fjs.parentNode.insertBefore(js, fjs);
}(document, 'script', 'facebook-jssdk'));
</script>
<div class="fb-comments"
     data-href="<?php echo $siteurl; ?>"
     data-num-posts="<?php echo $numpost; ?>"
     data-width="<?php echo $width; ?>"
     data-colorscheme="<?php echo $colorscheme; ?>"></div>

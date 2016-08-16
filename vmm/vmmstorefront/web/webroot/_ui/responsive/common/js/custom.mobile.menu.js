$('.mob-toggle').click(function(){
	
	$(this).toggleClass('mob-cross');
	$('.mob-menu').fadeToggle();
	$('body').toggleClass('sca');
});

   
           
  $(window).resize(function(){
    
        $('.mob-menu').hide();
        $('.mob-toggle').removeClass('mob-cross');
        $('body').removeClass('sca');
   });


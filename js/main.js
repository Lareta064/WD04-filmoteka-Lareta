$(document).ready(function() {

    

    if($result = true){
         $('.add-success').fadeIn(4000);         
     } else{
        $('.add-not-success').fadeIn(4000); 
     } ;
     
     setTimeout(function() {
        $('.add-success').fadeOut('fast');
    }, 1000);
     setTimeout(function() {
        $('.message-delete').fadeOut('fast');
    }, 1500);


    // Cut long post titles in cards Portfolio titles
    var portfolioTitle = $('.card-portfolio__title'); 
    maxPortfolioTitleSize = 24;
    portfolioTitle.each(function(index, value){
        var text = $(value).text()
        if (text.length > maxPortfolioTitleSize) {
            text = text.slice(0, maxPortfolioTitleSize) + '...';
        }
        $(this).text(text);
    });

    // Cut long post titles in cards Posts title
    var postTitle = $('.card-post__title'); 
    maxPostTitleSize = 40;
    postTitle.each(function(index, value){
        var text = $(value).text()
        if (text.length > maxPostTitleSize) {
            text = text.slice(0, maxPostTitleSize) + '...';
        }
        $(this).text(text);
    });

    $(".left-panel").customScrollbar({preventDefaultScroll: true});

});
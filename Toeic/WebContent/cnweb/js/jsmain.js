var kt = document.getElementsByClassName("slide")[0].clientWidth;
var chuyenslide = document.getElementsByClassName("chuyen-slide")[0];
var slide = chuyenslide.getElementsByClassName("slide_block");
var max = kt*(slide.length -1);
var chuyen = 0 ;
function Next(){
    chuyen +=kt;
    if( chuyen > max)
        chuyen = 0;
    chuyenslide.style.marginLeft = '-' + chuyen + 'px';
}
function Previous(){
    chuyen -=kt;
    if( chuyen < 0)
        chuyen = max;
    chuyenslide.style.marginLeft = "-"+chuyen + 'px';
}

setInterval(function(){
    Next();
}, 3000);
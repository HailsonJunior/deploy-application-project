/* const chk = document.getElementById('chk');
chk.addEventListener('change', () => {
	document.body.classList.toggle('dark');
});
floating_btn.addEventListener('click', () => {
	social_panel_container.classList.toggle('visible')
});
close_btn.addEventListener('click', () => {
	social_panel_container.classList.remove('visible')
});  */


const floating_btn = document.querySelector('.floating-btn');
const close_btn = document.querySelector('.close-btn');
const social_panel_container = document.querySelector('.social-panel-container');


$(document).ready(function(){
    $(".menu-button").click(function(){
        $(".menu-bar").toggleClass( "open" );
    })
    $(".img").click(function(){
        $(".menu-bar").toggleClass( "open" );
    })
    $(".prd").click(function(){
        $(".menu-bar").toggleClass( "open" );
    })
    $(".form").click(function(){
        $(".menu-bar").toggleClass( "open" );
    })
    $(".fot").click(function(){
        $(".menu-bar").toggleClass( "open" );
    })
})

$(document).ready(function ($) {
    $("#dark-mode").activeClick(function () {
        $('body').addClass('body-dark');
        $('.card-title').addClass("dark-title");
        $('.card').addClass("dark-card");
        $('i').addClass("i-dark");
    }, function () {
        $('body').removeClass('body-dark');
        $('.card-title').removeClass("dark-title");
        $('.card').removeClass("dark-card");
        $('i').removeClass("i-dark");
    })

    $('#inptTel').mask('(00)00000-0000');
});

/* 
    $(".getSaldo").on("click", function(){


        $.ajax({
                    type : "POST",
                    url  : "tuaClasse.php",
                    data: {metodo: 'getSaldo'},
                    dataType: "json",
                    success :  function(response){

                        if (response.codigo == 1) {
                            alert(response.mensagem)
                        }
                        if (response.codigo == 0) {

                            $("#saldo").val(response.valor);

                        }

                    }

                })

    })
*/

/*identifica click ativado ou desativado*/
jQuery.fn.activeClick = function(enable, disable){
    return this.each(function() {
        var self = this;
        jQuery(this).click(function () {
            var clicks = $(this).data('clicks');
            if(clicks === undefined){
                clicks = true;
            }
            if (clicks) {
                enable.call(self);
            } else {
                disable.call(self);
            }
            $(this).data("clicks", !clicks);
        });
    });
}

/*indentifica um single ou quick double click*/
jQuery.fn.single_double_click = function(single_click_callback, double_click_callback, timeout) {
    return this.each(function(){
        var clicks = 0, self = this;
        jQuery(this).click(function(event){
            clicks++;
            if (clicks == 1) {
                setTimeout(function(){
                    if(clicks == 1) {
                        single_click_callback.call(self, event);
                    } else {
                        double_click_callback.call(self, event);
                    }
                    clicks = 0;
                }, timeout || 300);
            }
        });
    });
}
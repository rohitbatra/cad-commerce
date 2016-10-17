<?php echo $header; ?>
<style>
/* 10 - Preloader
---------------------------------------------------------------------- */
#preloader{
    position: relative;
    width: 100%;
    background: rgba(255,255,255,.97);
    height: 100%;
    z-index: 99999999999;

}

#loader {
    position: absolute;
    top: 0;
    left: 0;
    right: 0;
    bottom: 0;
    width: 175px;
    height: 175px;
    margin: auto;
}
#loader .dot {
    position: absolute;
    top: 0;
    left: 0;
    right: 0;
    bottom: 0;
    width: 87.5px;
    height: 100%;
    margin: auto;
}
#loader .dot:before {
    content: '';
    position: absolute;
    top: 0;
    left: 0;
    right: 0;
    width: 87.5px;
    height: 87.5px;
    border-radius: 100%;
    -webkit-transform: scale(0);
    -moz-transform: scale(0);
    -ms-transform: scale(0);
    -o-transform: scale(0);
    transform: scale(0);
}
#loader .dot:nth-child(7n+1) {
    -webkit-transform: rotate(45deg);
    -moz-transform: rotate(45deg);
    -ms-transform: rotate(45deg);
    -o-transform: rotate(45deg);
    transform: rotate(45deg);
}
#loader .dot:nth-child(7n+1):before {
    background: #00ff80;
    -webkit-animation: load 0.8s linear 0.1s infinite;
    -moz-animation: load 0.8s linear 0.1s infinite;
    -ms-animation: load 0.8s linear 0.1s infinite;
    -o-animation: load 0.8s linear 0.1s infinite;
    animation: load 0.8s linear 0.1s infinite;
}
#loader .dot:nth-child(7n+2) {
    -webkit-transform: rotate(90deg);
    -moz-transform: rotate(90deg);
    -ms-transform: rotate(90deg);
    -o-transform: rotate(90deg);
    transform: rotate(90deg);
}
#loader .dot:nth-child(7n+2):before {
    background: #00ffea;
    -webkit-animation: load 0.8s linear 0.2s infinite;
    -moz-animation: load 0.8s linear 0.2s infinite;
    -ms-animation: load 0.8s linear 0.2s infinite;
    -o-animation: load 0.8s linear 0.2s infinite;
    animation: load 0.8s linear 0.2s infinite;
}
#loader .dot:nth-child(7n+3) {
    -webkit-transform: rotate(135deg);
    -moz-transform: rotate(135deg);
    -ms-transform: rotate(135deg);
    -o-transform: rotate(135deg);
    transform: rotate(135deg);
}
#loader .dot:nth-child(7n+3):before {
    background: #00aaff;
    -webkit-animation: load 0.8s linear 0.3s infinite;
    -moz-animation: load 0.8s linear 0.3s infinite;
    -ms-animation: load 0.8s linear 0.3s infinite;
    -o-animation: load 0.8s linear 0.3s infinite;
    animation: load 0.8s linear 0.3s infinite;
}
#loader .dot:nth-child(7n+4) {
    -webkit-transform: rotate(180deg);
    -moz-transform: rotate(180deg);
    -ms-transform: rotate(180deg);
    -o-transform: rotate(180deg);
    transform: rotate(180deg);
}
#loader .dot:nth-child(7n+4):before {
    background: #0040ff;
    -webkit-animation: load 0.8s linear 0.4s infinite;
    -moz-animation: load 0.8s linear 0.4s infinite;
    -ms-animation: load 0.8s linear 0.4s infinite;
    -o-animation: load 0.8s linear 0.4s infinite;
    animation: load 0.8s linear 0.4s infinite;
}
#loader .dot:nth-child(7n+5) {
    -webkit-transform: rotate(225deg);
    -moz-transform: rotate(225deg);
    -ms-transform: rotate(225deg);
    -o-transform: rotate(225deg);
    transform: rotate(225deg);
}
#loader .dot:nth-child(7n+5):before {
    background: #2a00ff;
    -webkit-animation: load 0.8s linear 0.5s infinite;
    -moz-animation: load 0.8s linear 0.5s infinite;
    -ms-animation: load 0.8s linear 0.5s infinite;
    -o-animation: load 0.8s linear 0.5s infinite;
    animation: load 0.8s linear 0.5s infinite;
}
#loader .dot:nth-child(7n+6) {
    -webkit-transform: rotate(270deg);
    -moz-transform: rotate(270deg);
    -ms-transform: rotate(270deg);
    -o-transform: rotate(270deg);
    transform: rotate(270deg);
}
#loader .dot:nth-child(7n+6):before {
    background: #9500ff;
    -webkit-animation: load 0.8s linear 0.6s infinite;
    -moz-animation: load 0.8s linear 0.6s infinite;
    -ms-animation: load 0.8s linear 0.6s infinite;
    -o-animation: load 0.8s linear 0.6s infinite;
    animation: load 0.8s linear 0.6s infinite;
}
#loader .dot:nth-child(7n+7) {
    -webkit-transform: rotate(315deg);
    -moz-transform: rotate(315deg);
    -ms-transform: rotate(315deg);
    -o-transform: rotate(315deg);
    transform: rotate(315deg);
}
#loader .dot:nth-child(7n+7):before {
    background: magenta;
    -webkit-animation: load 0.8s linear 0.7s infinite;
    -moz-animation: load 0.8s linear 0.7s infinite;
    -ms-animation: load 0.8s linear 0.7s infinite;
    -o-animation: load 0.8s linear 0.7s infinite;
    animation: load 0.8s linear 0.7s infinite;
}
#loader .dot:nth-child(7n+8) {
    -webkit-transform: rotate(360deg);
    -moz-transform: rotate(360deg);
    -ms-transform: rotate(360deg);
    -o-transform: rotate(360deg);
    transform: rotate(360deg);
}
#loader .dot:nth-child(7n+8):before {
    background: #ff0095;
    -webkit-animation: load 0.8s linear 0.8s infinite;
    -moz-animation: load 0.8s linear 0.8s infinite;
    -ms-animation: load 0.8s linear 0.8s infinite;
    -o-animation: load 0.8s linear 0.8s infinite;
    animation: load 0.8s linear 0.8s infinite;
}

@-webkit-keyframes load {
    100% {
        opacity: 0;
        -webkit-transform: scale(1);
    }
}
@-moz-keyframes load  {
    100% {
        opacity: 0;
        -moz-transform: scale(1);
    }
}
@-ms-keyframes load {
    100% {
        opacity: 0;
        -ms-transform: scale(1);
    }
}
@-o-keyframes load {
    100% {
        opacity: 0;
        -o-transform: scale(1);
    }
}
@keyframes load {
    100% {
        opacity: 0;
        transform: scale(1);
    }
}

/* 10 - Preloader End
---------------------------------------------------------------------- */
</style>
<div class="container">
    <div id="content" class="col-sm-12">
        <h3 class="text-center">Please wait, while we transfer you to our Seller Control Panel!</h3>
        <br/>
        <div id="preloader">
            <div id="loader">
                <div class="dot"></div>
                <div class="dot"></div>
                <div class="dot"></div>
                <div class="dot"></div>
                <div class="dot"></div>
                <div class="dot"></div>
                <div class="dot"></div>
                <div class="dot"></div>

            </div>
        </div>
    </div>
    <?php echo $content_bottom; ?>
</div>
<script>
    $(document).ready(function() {

        setTimeout(
                function()
                {
                    //do something special
                    $(location).attr('href', 'http://cad.ergoasia.com/admin/');
                }, 2000);
    });
</script>
<?php echo $footer; ?>
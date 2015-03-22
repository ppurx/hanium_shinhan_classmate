window.mySwipe = new Swipe(document.getElementById('slider'), {
    startSlide: 2, // Index position Swipe should start at (default:0)
    speed: 400, // Speed of prev and next transitions in milliseconds. (default:300)
    auto: 3000, // Begin with auto slideshow (time in milliseconds between slides)
    callback: function(event, index, elem) {

      // Runs at the end of any slide change. (effective for updating position indicators/counters)

    }
});
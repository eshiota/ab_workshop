var gallery = (function() {

    // Defaults
    // --------

    var DEFAULT_OPTIONS = {
        autoplayInterval: 1000,
        animationSpeed: 300,
        newImageClass: 'hotel-page__gallery__main-photo--bottom',
        activeImageClass: 'hotel-page__gallery__thumb--active',
        autoplay: true
    };

    // Private properties
    // ------------------

    var $root;
    var $thumbs;
    var $mainPhoto;

    var options;
    var active = 0;
    var galleryLength = 0;
    var autoplayIntervalId;

    // Callbacks
    // ---------

    function onLinkClick(event) {
        var id = $(event.currentTarget).parent().data('hotel-gallery-thumb-id');

        event.preventDefault();

        showPhotoByIndex(id);
    }

    // Private API
    // -----------

    function attachEvents() {
        $thumbs.find('[data-hotel-gallery-link]').on('click', onLinkClick);

        if (options.autoplay) {
            $mainPhoto
                .on('mouseenter', stop)
                .on('mouseleave', play);
        }
    }

    function showPhotoByIndex(index) {
        if (index === active) {
            return;
        }

        if (index > galleryLength - 1) {
            index = 0;
        } else if (index < 0) {
            index = galleryLength - 1;
        }

        var $thumb = $thumbs.eq(index);
        var src = $thumb.find('[data-hotel-gallery-link]').attr('href');
        var currentImg = $mainPhoto.find('img');
        var newImg = $('<img />');

        newImg.addClass(options.newImageClass);

        newImg.on('load', function() {
            currentImg.fadeOut(options.animationSpeed, function() {
                currentImg.remove();
            });

            newImg.fadeIn(options.animationSpeed, function() {
                newImg.removeClass(options.newImageClass);
            });
        }).hide().appendTo($mainPhoto).attr('src', src);

        active = index;

        $thumbs.removeClass(options.activeImageClass);
        $thumb.addClass(options.activeImageClass);

        resetInterval();
    }

    function play() {
        autoplayIntervalId = setInterval(function() {
            showPhotoByIndex(active + 1);
        }, options.autoplayInterval);
    }

    function stop() {
        clearInterval(autoplayIntervalId);
    }

    function resetInterval() {
        stop();
        play();
    }

    // Public API
    // ----------

    var api = {};

    api.init = function(element, opts) {
        options = $.extend({}, DEFAULT_OPTIONS, opts);

        $root = $(element);
        $mainPhoto = $root.find('[data-hotel-gallery-main-photo]');
        $thumbs = $root.find('[data-hotel-gallery-thumb]');

        galleryLength = $thumbs.length;

        attachEvents();

        $thumbs.eq(0).addClass(options.activeImageClass);

        if (options.autoplay) {
            play();
        }
    };

    return api;

})();

var experiments = (function() {
    return {
        // Returns the experiment variant and sends the tracking request
        track: function(name) {
            $.ajax({
                url: '/experiments/track',
                type: 'get',
                data: {
                    name: name
                },
                success: function() {
                    console.log('Successfully tracked exp. ' + name);
                },
                error: function() {
                    console.error('Error tracking exp. ' + name);
                }
            });

            return B.jsExpData[name];
        }
    };
})();

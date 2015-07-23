(function() {
    'use strict';

    angular
        .module('angularSeedApp')
        .run(runBlock);

    /** @ngInject */
    function runBlock($log) {

        $log.debug('runBlock end');
    }

})();
angular.module('rc.configs', [])
angular.module('rc.services', [])
angular.module('rc.controllers', [])
angular.module('rc.directives', [])
angular.module('rc.filters', [])
angular.module('underscore', []).factory('_', ()->
    return window._;
)
angular.module('D3', []).factory('d3', ()->
    return window.d3;
)

angular.module('rcApp',[

	'rc.configs',
	'rc.services',
	'rc.controllers',
	'rc.directives',
	'rc.filters',
	'underscore',
	'D3'

])
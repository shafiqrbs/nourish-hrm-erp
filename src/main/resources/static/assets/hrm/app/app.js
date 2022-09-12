'use strict';
var app = angular.module("cloudErpApp",['ui.router','ui.bootstrap','kendo.directives','flash','ngTouch','ngAnimate']);

// The configuration below will disable the close on [ESC / click outside] for all modals.
app.config(function($provide) {
  $provide.decorator('$uibModal', function($delegate) {
    var open = $delegate.open;

    $delegate.open = function(options) {
      options = angular.extend(options || {}, {
        backdrop: 'static',
        keyboard: false
      });

      return open(options);
    };
    return $delegate;
  })
});
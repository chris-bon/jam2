(function() {
  'use strict';
  angular.module('app').controller('userCtrl', function($scope) {
    $scope.messages = [];
    $scope.alertMe = function(message) { alert(message); };
    $scope.addMessage = function(message) { $scope.messages.push(message); };
    window.$scope = $scope;  // To call $scope in the console
  });
})();
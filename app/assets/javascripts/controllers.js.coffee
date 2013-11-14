app = angular.module('angularblogApp', [])

class BlogListCtrl
  @$inject: ['$scope', '$http']

  constructor: ($scope, $http) ->
    $http.get('/posts.json')
      .success (data)->
        $scope.posts = data

    $scope.ctrl = @
    $scope.orderProp = 'age'


app.controller 'BlogListCtrl', BlogListCtrl

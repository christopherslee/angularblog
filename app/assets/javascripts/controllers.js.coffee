app = angular.module('angularblogApp', [])

class BlogListCtrl
  @$inject: ['$scope']

  constructor: ($scope) ->
    $scope.posts = [
      { title: 'Blog Post #1' }
      { title: 'Blog Post #2' }
      { title: 'Blog Post #3' }
    ]
    $scope.ctrl = @

app.controller 'BlogListCtrl', BlogListCtrl

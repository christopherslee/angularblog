app = angular.module('angularblogApp', [])

class BlogListCtrl
  constructor: ($scope) ->
    $scope.posts = [
      { title: 'Z Blog Post One', age: 1 }
      { title: 'Y Blog Post Two', age: 2 }
      { title: 'X Blog Post Three', age: 3}
    ]

    $scope.orderProp = 'age'

app.controller 'BlogListCtrl', BlogListCtrl

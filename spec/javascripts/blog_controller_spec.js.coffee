//= require spec_helper

describe 'BlogListCtrl', ->

  beforeEach ->
    module 'angularblogApp'
    inject ($controller) =>
      @scope = {}
      ctrl = $controller('BlogListCtrl', { $scope: @scope })

  it 'creates 3 blog posts', ->
    expect(@scope.posts.length).to.eq 3

  it 'sets the default order prop to age', ->
    expect(@scope.orderProp).to.eq 'age'

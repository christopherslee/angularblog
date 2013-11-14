//= require spec_helper

describe 'BlogListCtrl', ->

  beforeEach ->
    module 'angularblogApp'

  it 'creates 3 blog posts', ->
    inject ($controller) =>
      @scope = {}
      ctrl = $controller('BlogListCtrl', { $scope: @scope })
    expect(@scope.posts.length).to.eq 3

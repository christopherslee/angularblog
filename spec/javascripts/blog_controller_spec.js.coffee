//= require spec_helper

describe 'BlogListCtrl', ->

  beforeEach ->
    module 'angularblogApp'
    inject ($httpBackend, $rootScope, $controller) =>
      @httpBackend = $httpBackend
      @httpBackend.expectGET('/posts.json')
        .respond([{title: 'Test blog post'}, {title: 'Test blog post two'}])

      @scope = $rootScope.$new()
      ctrl = $controller('BlogListCtrl', { $scope: @scope })

  it 'fetches posts from server', ->
    expect(@scope.posts).to.eq undefined
    @httpBackend.flush()
    expect(@scope.posts.length).to.eq 2

  it 'sets the default order prop to age', ->
    expect(@scope.orderProp).to.eq 'age'

class PostsController < ApplicationController
  def index
    @posts = Post.all
    respond_to do |format|
      format.json do
        render json: [
          { title: 'A Blog Post 1', age: 3 },
          { title: 'B Blog Post 2', age: 2 },
          { title: 'D Blog Post 3', age: 1 }
        ]
      end
      format.html
    end
  end
end

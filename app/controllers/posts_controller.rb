class PostsController < ApplicationController
  def index #indexアクションを定義した。これは講義の意味ではインスタンスメソッドではあるが、狭義ではアクションメソッドとして扱う
    @posts = Post.all.order(id: "DESC")
  end

  

  def create
    Post.create(content: params[:content])
  end

  def checked
    post = Post.find(params[:id])
    if post.checked
      post.update(checked: false)
    else
      post.update(checked: true)
    end

    item = Post.find(params[:id])
    render json: { post: item }
  end
end

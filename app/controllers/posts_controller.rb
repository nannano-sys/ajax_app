class PostsController < ApplicationController
  def index #indexアクションを定義した。これは講義の意味ではインスタンスメソッドではあるが、狭義ではアクションメソッドとして扱う
    @posts = Post.all
  end

  def new
  end

  def create
    Post.create(content: params[:content])
  end

end
#クラスの中にで定義してあれば、インスタンスメソッドとして扱うことができる
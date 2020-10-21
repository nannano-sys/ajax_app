class PostsController < ApplicationController
  def index #indexアクションを定義した。これは講義の意味ではインスタンスメソッドではあるが、狭義ではアクションメソッドとして扱う
    @posts = Post.all.order(id: "DESC")
  end

  

  def create
    Post.create(content: params[:content])
    redirect_to action: :index
  end

end
#クラスの中にで定義してあれば、インスタンスメソッドとして扱うことができる
class BlogsController < ApplicationController
  def index
    @blogs = Blog.all
  end

  def edit
    @blog = Blog.find(params[:id])
  end

  def show
    @blog = Blog.find(params[:id])
  end

  def new
    @blog = Blog.new
  end

  def update
    blog = Blog.find(params[:id])
    blog.update(blog_params) #ストロングパラムで受け取る
    redirect_to blog_path(blog.id)
  end

  def create
    blog = Blog.new(blog_params)
    blog.save
    redirect_to blog_path(blog.id)
  end

  def destroy   #あれこれ、httpリクエストでデータ削除するならいつこの destroy は呼ばれるのよ。
    blog = Blog.find(params[:id])
    blog.destroy
    redirect_to blogs_path
  end

  private
  def blog_params
    params.require(:blog).permit(:title, :category, :body)
  end
end

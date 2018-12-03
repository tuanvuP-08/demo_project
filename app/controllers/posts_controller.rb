class PostsController < ApplicationController
  before_action :load_post, except: [:index, :new, :create]

  def new
    @post = Post.new
  end

  def create
    @post = Post.new post_params

    if @post.save
      flash[:success] = t "create_successfully"
      redirect_to root_path
    else
      render :new
    end
  end

  def index
    @posts = Post.all.sort_by_created_desc
  end

  def show; end

  def destroy
    if @post.destroy
      flash[:success] = t "delete_successfully"
    else
      flash[:danger] = t "error_message"
    end
    redirect_to posts_url
  end

  def update
    if @post.update_attributes post_params
      flash[:success] = t "update_successfully"
      redirect_to @post
    else
      render :edit
    end
  end

  def edit; end

  private

  def post_params
    params.require(:post).permit :title, :content
  end

  def load_post
    @post = Post.find_by id: params[:id]
    return if @post
    render file: "public/404.html", status: :not_found, layout: false
  end
end

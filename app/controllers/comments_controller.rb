class CommentsController < ApplicationController
  before_action :load_post
  before_action :load_comment, except: [:new, :create]
  before_action :authenticate_user!
  before_action :correct_user, except: [:new, :create]

  def new; end

  def create
    @comment = @post.comments.build comment_params
    @comment.user_id = current_user.id

    if @comment.save
      flash[:success] = t "create_successfully"
      redirect_to post_path @post
    else
      render :new
    end
  end

  def edit; end

  def update
    if @comment.update_attributes comment_params
    flash[:success] = t "update_successfully"
    redirect_to post_path @post
    else
      render :edit
    end
  end

  def destroy
    if @comment.destroy
      flash[:success] = t "delete_successfully"
    else
      flash.now[:danger] = t "error_message"
    end
    redirect_to post_path @post
  end

  private

  def comment_params
    params.require(:comment).permit :content, :post_id, :user_id
  end

  def load_post
    @post = Post.find_by id: params[:post_id]
    return if @post
    render file: "public/404.html", status: :not_found, layout: false
  end

  def load_comment
    @comment = Comment.find_by id: params[:id]
    return if @comment
    render file: "public/404.html", status: :not_found, layout: false
  end

  def correct_user
    if @comment.user_id != current_user.id
      flash[:danger] = t "access_denied"
      redirect_to root_url
    end
  end
end

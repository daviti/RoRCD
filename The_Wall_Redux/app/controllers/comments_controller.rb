class CommentsController < ApplicationController

  def create
    c = Comment.new(comment_params)
    if c.save == false
      flash[:errors] = c.errors.messages
    end
    redirect_to user_path(c.post.wall_id)
  end

  def update
    c = Comment.find(:user_id)
    if c.update(content: :content) == false
      flash[:errors] = c.errors.messages
    end
    redirect_to user_path(c.post.wall_id)
  end

  def destroy
    c = Comment.find(params[:id])
    
    if c.destroy == false
      flash[:errors] = c.errors.messages
    end
    redirect_to :back
  end

  private
  def comment_params
    params.require(:comment).permit(:post_id, :user_id, :content)
  end

end

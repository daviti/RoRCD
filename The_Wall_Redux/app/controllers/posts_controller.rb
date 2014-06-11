class PostsController < ApplicationController

	def create
		p = Post.new(post_params)
		if p.save == false
            flash[:errors] = p.errors.messages
        end
		redirect_to user_path(p.wall_id)
	end

	def update
		p = Post.find(:user_id)
		if p.update(content: :content) == false
            flash[:errors] = p.errors.messages
        end
		redirect_to user_path(p.wall_id)
	end

	def destroy
        p = Post.find(params[:id])
        
        if p.destroy == false
            flash[:errors] = p.errors.messages
        end
        redirect_to :back
	end

	private
	def post_params
		params.require(:post).permit(:wall_id, :user_id, :content)
	end

end

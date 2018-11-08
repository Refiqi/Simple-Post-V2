class CommentsController < ApplicationController
	def new
		@comment = Comment.new
	end

	def create
		@post = Post.find(params[:post_id])
		if @comment = @post.comments.create(comment_params)
		redirect_to post_path(@post)
		else
			render '@post'
	  end
	end

	def destroy
		@post = Post.find(params[:post_id])
		@comment = @post.comments.find(params[:id])
		@comment.destroy

		redirect_to post_path(@post)

	end

	def show
		@post = Post.find(params[:post_id])
	end

	private
	def comment_params
		params.require(:comment).permit(:username, :body)
	end
end

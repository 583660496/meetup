class CommentsController < ApplicationController

	def create
		@comment = Comment.new(comment_params)
		@comment.save
		#redirect_to c.issue

		respond_to do |f|
			f.js
		end

	end

	private
	def comment_params
		params.require(:comment).permit(:issue_id, :user_id, :content)
	end
end

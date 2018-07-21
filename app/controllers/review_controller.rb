class ReviewController < ApplicationController
	def edit_review
		Review.create( :content => params[:content] , :user_id => session[:user_id] , :rpost_id => params[:rpost_id] )
		redirect_to :detail_post
	end
	def delete_review
		Review.find(params[:review_id]).destroy
		redirect_to :detail_post
	end
end

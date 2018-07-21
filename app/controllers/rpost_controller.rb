class RpostController < ApplicationController
  def rpost_index
  	@user = User.all
  end
  def make_post
  	
  end
  def new_post
  	title = params[:title]
  	content = params[:content]
  	Rpost.create( :title => title , :content => content , :user_id => session[:user_id] )
  	redirect_to :rpost_index
  end
  def my_post
  	user = User.find(session[:user_id])
  	@rpost = user.rposts
  end
  def detail_post
  	@rpost = Rpost.find(params[:rpost_id])
    @user = User.all
  end
  def delete_rpost
    Rpost.find(params[:rpost_id]).destroy
    redirect_to :rpost_index
  end
end

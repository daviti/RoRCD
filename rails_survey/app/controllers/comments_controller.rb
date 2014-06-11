class CommentsController < ApplicationController
  def index
  	session[:message] = ""
  end

  def new
  end

  def create
  	render :text => params 

  end


end

class HomeController < ApplicationController

  def welcome
  	@posts = Post.all.limit(5).offset(1)
  	
  end

  def about
  end
end

class StaticPagesController < ApplicationController
  def index
    @articles = Article.all
  end

  def welcome
    
  end
end

class WelcomeController < ApplicationController
  def index
    @articles = Article.all.limit(3).order("id DESC").all
    @creatives = Creative.all.limit(3).all
    @banners = Banner.all.limit(3).order("id DESC").all    
  end
end

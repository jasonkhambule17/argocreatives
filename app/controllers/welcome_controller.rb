class WelcomeController < ApplicationController
  def index
    @articles = Article.all.limit(4).all
    @creatives = Creative.all.limit(3).all
    @banners = Banner.all.limit(3).all
  end
end

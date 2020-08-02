class ArticlesController < ApplicationController
  def index
    @articles = Article.all
  end

  def new
    @articles = Article.new
  end

  def create
    @articles = Article.new
    if @article.save
      redirect_to @article
    end
  end

  def show
    @article = Article.find(params[:id])
    @articles = Article.all.limit(3).order("id DESC").all
  end


def destroy
  @creative = Creative.find(params[:id])
  @creative.destroy
end
end

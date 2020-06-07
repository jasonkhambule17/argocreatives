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
  end


def destroy
  @creative = Creative.find(params[:id])
  @creative.destroy
end
end

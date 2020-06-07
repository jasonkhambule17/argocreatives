class CreativesController < ApplicationController
  def index
    @creatives = Creative.all
  end

  def new
    @creatives = Creative.new
  end

  def create
    @creatives = Creative.new
    if @creative.save
      redirect_to @creative
    end
  end

  def show
    @creative = Creative.find(params[:id])
  end
end

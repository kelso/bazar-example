class AdsController < ApplicationController
  def index
    @ads = Ad.order("created_at desc")
  end

  def show
  end

  def new
    @ad = Ad.new
  end

  def create
    @ad = Ad.new params[:ad].permit(:title, :description, :email)
    if @ad.save
      redirect_to ads_url
    else
      render :new
    end
  end

  def edit
  end
end

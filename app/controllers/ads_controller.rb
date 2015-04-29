class AdsController < ApplicationController
  def index
    @ads = Ad.order("created_at desc")
  end

  def show
    @ad = Ad.find params[:id]
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

  def contact
    ad = Ad.find params[:ad_id]
    AdMailer.contact_email(ad, params[:message]).deliver
    redirect_to ads_url
  end
end

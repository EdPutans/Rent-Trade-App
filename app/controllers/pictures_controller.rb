class PicturesController < ApplicationController

  def create
    # byebug
    @picture=Picture.new
    @picture.picture_url=params[:picture][:picture_url]
    @picture.listing_id=params[:listing_id]
    # byebug
    @picture.save
    redirect_to listing_path(@picture.listing_id)
  end

  def show
    @picture=Picture.find(params[:id])
  end

end

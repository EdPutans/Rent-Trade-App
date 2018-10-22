class ListingsController < ApplicationController
#add routes for favorites and relevants

  before_action :locate_listing, only: [:edit, :update, :show, :destroy]

  def index
    @listings=Listings.all
  end

  def edit
  end

  def show
  end

  def update
    @listing.update(listing_params)
    if @listing.valid?
      redirect_to listing_path
    else
      flash[:errors]=@listing.errors.full_messages
      redirect_to edit_listing_path
    end
  end

  def new
    @listing=Listing.new
  end

  def create
    @listing=Listing.create(listing_params)
    if @listing.valid?
      redirect_to listing_path
    else
      flash[:errors]=@listing.errors.full_messages
      redirect_to new_listing_path
    end
  end

  def destroy
    @listing.delete
    redirect_to
    #do not let the user browse without an active advertisement
  end

  def favourite
  end

  def relevant
  end

  private

  def locate_listing
    @listing=Listing.find(params[:id])
  end

  def listing_params
    params.require(:listing).permit(:description, :title, :date, :landlord_name, :landlord_info, :landlord_phone, :landlord_email, :address_id, :picture_url)
  end

end

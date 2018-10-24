class ListingsController < ApplicationController
#add routes for favorites and relevants

  # before_action :locate_listing, only: [:edit, :update, :show, :destroy]
  before_action :authenticate_user!, except: [:index]
  before_action :user_set

  def favourites
      @user = current_user
  end
  def my_listings
    @listings=Listing.where(user_id:current_user.id)
    render :index
  end
  def relevant
    @user = current_user
    @listings = Listing.all
  end

  def add_to_favourites
    @listing=Listing.find(params[:id])
    @favourite=Favourite.find_or_create_by(user: current_user, listing: @listing)
    #byebug
    if !current_user.favourites.include?(@favourite)
      @favourite.save
      redirect_to favourites_path
    else
      redirect_to favourites_path
    end
  end

  def remove_favourite
    @favourite=Favourite.find(params[:id])
    @favourite.destroy
    redirect_to favourites_path
  end

def postcodes
  @relevant=Relevant.find_or_create_by(user_id: current_user.id)
end

def edit_postcodes
  @relevants=Relevant.where(user: current_user)
  @relevants.each do |r|
    r.delete
  end
 postcode_array = params[:postcodes].split(',').join(', ').split(', ')
  postcode_array.each do |postcode|
    Relevant.create(user_id: current_user.id, postcode: postcode)
  end
  redirect_to relevant_path
end

def index
@listings = Listing.all
if params[:search]
  @listings = Listing.search(params[:search]).order("created_at DESC")
else
  @listings = Listing.all.order("created_at DESC")
end
end

  def edit
     @listing=Listing.find(params[:id])
  end

  def show
     @listing=Listing.find(params[:id])
     @pictures=Picture.where(listing_id: @listing.id)
    # byebug
  end

  def update
     @listing=Listing.find(params[:id])
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
    @listing=Listing.new(listing_params)
    @listing.user=current_user
    if @listing.valid?
      @listing.save
      Picture.create(picture_url: listing_params[:picture_url], listing_id: @listing.id)
      redirect_to listing_path(@listing)
    else
      flash[:errors]=@listing.errors.full_messages
      redirect_to new_listing_path
    end
  end

  def destroy
    @listing=Listing.find(params[:id])
    @listing.delete
    redirect_to listings_path
    #do not let the user browse without an active advertisement
  end

  def about
    render :about
  end

  def new_pic
    @list_id =params[:id]
    @picture = Picture.new
  end



  private

  def user_set
    @user=current_user
  end

  def listing_params
    params.require(:listing).permit(:description, :title, :date, :landlord_name, :landlord_info, :landlord_phone, :landlord_email, :address_id, :picture_url, :id, :postcode, :postcodes)
  end

end

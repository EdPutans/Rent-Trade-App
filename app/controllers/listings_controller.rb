class ListingsController < ApplicationController
#add routes for favorites and relevants

  # before_action :locate_listing, only: [:edit, :update, :show, :destroy]
  before_action :authenticate_user!, except: [:index]

  def favourites
      @user = current_user
  end

  def relevant
    @user = current_user
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
    if @listing.valid?
      @listing.save
      redirect_to listing_path(@listing)
    else
      flash[:errors]=@listing.errors.full_messages
      redirect_to new_listing_path
    end
  end

  def destroy
    @listing=Listing.find(params[:id])
    @listing.delete
    redirect_to
    #do not let the user browse without an active advertisement
  end






  private

  # def locate_listing
  #
  # end

  def listing_params
    params.require(:listing).permit(:description, :title, :date, :landlord_name, :landlord_info, :landlord_phone, :landlord_email, :address_id, :picture_url, :id, :postcode, :postcodes)
  end

end

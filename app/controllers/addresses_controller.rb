class AddressesController < ApplicationController
  def new
  	@address = Address.new
  end

  def create 
    @address = Address.new(address_params)
    if(@address.user_id != current_user.id)
      redirect_to root_path
    else 
      if @address.save
        Notifications.new_address(@address).deliver
        redirect_to addresses_path
     else
        render "new"
     end
    end
  end

  def index
    if user_signed_in?
     @addresses = Address.where(user_id:current_user).ordered
    else
      @addresses = []
    end
  end

  def address_params
    params.require(:address).permit(:friend, :number, :street, :city, :state, :zip, :phone, :user_id)
  end

  def show
    @address = Address.find(params[:id])
  end

  def edit 
    @address = Address.find(params[:id])
  end

  def update 
    @address = Address.find(params[:id])
    if @address.update_attributes(address_params)
      redirect_to address_path(@address.id)
    else
      render 'edit'
    end
  end

  def destroy
    @address = Address.find(params[:id])
    @address.destroy
    redirect_to addresses_path
  end
end

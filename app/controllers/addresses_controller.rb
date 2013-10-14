class AddressesController < ApplicationController
  def new
  	@address = Address.new
  end

  def create
  	@address = Address.new(address_params)
  	if @address.save
  		redirect_to addresses_path
  	else
  		render 'new'
  	end
  end

  def index
  	@addresses=Address.all
  end

  def address_params
    params.require(:address).permit(:number, :street, :city, :state, :zip)
  end

  def show
    @address = Address.find(params[:id])
  end

  def edit 
    @address = Address.find(params[:id])
  end

  def update 
    @address = Address.find(params[:id])
    if @address.update_attributes(params[:address_params])
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

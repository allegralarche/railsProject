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
end

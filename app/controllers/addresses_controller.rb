class AddressesController < ApplicationController
  def new
  	@address = Address.new
  end

  def create
  	@address = Address.new(params[:address])
  	if @address.save
  		redirect_to address_path
  	else
  		render 'new'
  	end
  end

  def index
  	@addresses=Address.all
  end
end

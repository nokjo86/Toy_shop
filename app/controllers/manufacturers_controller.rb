class ManufacturersController < ApplicationController
  before_action :find_manufacturer, only:[:show, :destroy, :update, :edit]
  def index
  @manufacturers = Manufacturer.all
  end
  
  def show
  end
  
  def new
    @manufacturer = Manufacturer.new
  end

  def create
    @manufacturer = Manufacturer.create(manufacturer_params)
    redirect_to manufacturer_path(@manufacturer.id)
  end

  def edit
  end

  def update
    @manufacturer.update(manufacturer_params)
    redirect_to @manufacturer
  end

  def destroy
    @manufacturer.destroy
    redirect_to manufacturers_url
  end

  private
  
  def manufacturer_params
  params.require(:manufacturer).permit(:name, :location)
  end

  def find_manufacturer
    @manufacturer = Manufacturer.find(params[:id])
  end

end

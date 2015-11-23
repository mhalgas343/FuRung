class FurungsController < ApplicationController
  def new
  	@image = Image.new
  end

  def show
  	@image = Image.limit(1).order("RANDOM()").first
  end

  def create
  	@image = Image.create(image_params)
    redirect_to '/'
  end

  private

  def image_params
    params.require(:image).permit(:image)
  end

end
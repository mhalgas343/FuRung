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

  def update
    @image = Image.find(params[:image])
      if @image.update_attributes(params[:image])
        redirect_to root_path
      else
      flash[:notice] = "Could not create new tag"
      redirect_to signup_path
    end
  end

  private

  def image_params
    params.require(:image).permit(:image)
  end

end
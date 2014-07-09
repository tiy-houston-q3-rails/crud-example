class TacosController < ApplicationController

  def index
    @tacos = Taco.all
  end

  def new
    @taco = Taco.new
  end

  def create
    @taco = Taco.new(taco_params)
    if @taco.save
      redirect_to tacos_path
    else
      #let people correct mistakes
      render :new
    end
  end

  private
  def taco_params
    params.require(:taco).permit(:name, :photo_url)
  end

end

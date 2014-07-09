class TacosController < ApplicationController

  def index
    @tacos = Taco.all
  end

  def show
    @taco = Taco.find(params[:id])
  end

  def new
    @taco = Taco.new
  end

  def edit
    @taco = Taco.find(params[:id])
  end

  def update
    @taco = Taco.find(params[:id])
    if @taco.update taco_params
      redirect_to tacos_path
    else
      #let people correct mistakes
      render :edit
    end
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

  def destroy
    @taco = Taco.find(params[:id])
    @taco.destroy
    redirect_to tacos_path
  end

  private
  def taco_params
    params.require(:taco).permit(:name, :photo_url)
  end

end

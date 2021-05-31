class KidsController < ApplicationController
  before_action :set_kid, only: [:show, :edit, :update, :destroy]
  def index
    @kids = Kid.all
  end

  def show
    @kid = Kid.find(params[:id])
  end

  def new
    @kid = Kid.new
  end

  def create
    @kid = Kid.new(kid_params)
    @kid.save
    redirect_to kid_path(@kid)
  end

  def edit
    @kid = Kid.find(params[:id])
  end

  def update
    @kid = Kid.find(params[:id])
    @kid.update(kid_params)
    redirect_to kid_path(@kid)
  end

  def destroy
    @kid = Kid.find(params[:id])
    @kid.destroy
    redirect_to kids_path
  end

  private
  
  def kid_params
    params.require(:kid).permit(:name, :age, :localisation, :service, :price, :user_id)
  end

  def set_kid
    @kid = Kid.find(params[:id])
  end
end

